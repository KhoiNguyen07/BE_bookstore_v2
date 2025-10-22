package com.devsoga.BookStore_V2.services;


import java.time.temporal.ChronoUnit;
import java.util.Date;

import org.springframework.stereotype.Service;

import com.devsoga.BookStore_V2.enties.AccountEntity;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.JWSObject;
import com.nimbusds.jose.Payload;
import com.nimbusds.jose.crypto.MACSigner;
import com.nimbusds.jwt.JWTClaimsSet;

@Service
public class JwtService {

    private String secretKey = "9810b36ee10ee6a41ab2d4618b20f79e7896f53f8455addc487541fcbf00c955";


    public String generateAccessToken(AccountEntity account) {
        
        // phan header
        JWSHeader header = new JWSHeader(JWSAlgorithm.HS512);

        // phan payload
        Date issueTime = new Date(); // time hien tai
        Date expireTime = Date.from(issueTime.toInstant().plus(30,ChronoUnit.MINUTES)); // thoi gian het han 30 phut sau        
        JWTClaimsSet claims = new JWTClaimsSet.Builder()
            .subject(account.getUsername())
            .issueTime(issueTime)
            .expirationTime(expireTime)
            .build();
        Payload payload = new Payload(claims.toJSONObject());

        // phan signature

        JWSObject jwsObject = new JWSObject(header, payload);
        try {
            jwsObject.sign(new MACSigner(secretKey));
        } catch (Exception e) {
            throw new RuntimeException("Error while signing the token");
        }

        return jwsObject.serialize();
    }

    public String generateRefreshToken(AccountEntity account) {
       // phan header
        JWSHeader header = new JWSHeader(JWSAlgorithm.HS512);

        // phan payload
        Date issueTime = new Date(); // time hien tai
        Date expireTime = Date.from(issueTime.toInstant().plus(30,ChronoUnit.DAYS)); // thoi gian het han 30 phut sau        
        JWTClaimsSet claims = new JWTClaimsSet.Builder()
            .subject(account.getUsername())
            .issueTime(issueTime)
            .expirationTime(expireTime)
            .build();
        Payload payload = new Payload(claims.toJSONObject());

        // phan signature

        JWSObject jwsObject = new JWSObject(header, payload);
        try {
            jwsObject.sign(new MACSigner(secretKey));
        } catch (Exception e) {
            throw new RuntimeException("Error while signing the token");
        }

        return jwsObject.serialize();
    }
}
