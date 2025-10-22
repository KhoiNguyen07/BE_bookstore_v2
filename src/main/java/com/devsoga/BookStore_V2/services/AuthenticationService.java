package com.devsoga.BookStore_V2.services;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import com.devsoga.BookStore_V2.dtos.requests.LoginRequest;
import com.devsoga.BookStore_V2.dtos.responses.AccountRespone;
import com.devsoga.BookStore_V2.enties.AccountEntity;
import com.devsoga.BookStore_V2.payload.respone.BaseRespone;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
    private final AuthenticationManager authenticationManager;
    private final JwtService jwtService;

    public BaseRespone login(LoginRequest request) {
         UsernamePasswordAuthenticationToken authToken =
                new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword());

        // Gọi Spring Security để xác thực
        Authentication authentication = authenticationManager.authenticate(authToken);
        
        AccountEntity account = (AccountEntity) authentication.getPrincipal();

        String accessToken = jwtService.generateAccessToken(account);
        String refreshToken = jwtService.generateRefreshToken(account);

        // build DTO
        AccountRespone dto = new AccountRespone();
        dto.setAccountCode(account.getAccountCode());
        dto.setUsername(account.getUsername());
        dto.setEmail(account.getEmail());
        dto.setRoleCode(account.getRoleEntity() != null ? account.getRoleEntity().getRoleCode() : null);
        dto.setAccessToken(accessToken);
        dto.setRefreshToken(refreshToken);

        // wrap into BaseRespone
        BaseRespone response = new BaseRespone();
        response.setStatusCode(200);
        response.setMessage("Login successful");
        response.setData(dto);
        return response;
    }
}
