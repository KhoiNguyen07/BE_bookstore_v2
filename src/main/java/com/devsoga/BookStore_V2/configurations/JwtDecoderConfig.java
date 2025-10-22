package com.devsoga.BookStore_V2.configurations;

import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.util.Objects;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.oauth2.jose.jws.MacAlgorithm;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.jwt.JwtException;
import org.springframework.security.oauth2.jwt.NimbusJwtDecoder;
import org.springframework.stereotype.Component;

import com.devsoga.BookStore_V2.services.JwtService;
import com.nimbusds.jose.JOSEException;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class JwtDecoderConfig implements JwtDecoder{

    
    @Value("${JWT_SECRET}")
    private String secretKey;
    
    private final JwtService jwtService;
    private NimbusJwtDecoder nimbusJwtDecoder = null;



    @Override
    public Jwt decode(String token) throws JwtException {
        try {
            if(!jwtService.verifyToken(token)) {
                throw new RuntimeException("Invalid JWT token");
            }
            if(Objects.isNull(nimbusJwtDecoder)) {
                SecretKey secretKeySpec =  new SecretKeySpec(secretKey.getBytes(StandardCharsets.UTF_8), "HS512");
                nimbusJwtDecoder = NimbusJwtDecoder.withSecretKey(secretKeySpec).macAlgorithm(MacAlgorithm.HS512).build();
            }
        } catch (ParseException | JOSEException e) {
            throw new RuntimeException(e);
        }



        return nimbusJwtDecoder.decode(token);
    }

}
