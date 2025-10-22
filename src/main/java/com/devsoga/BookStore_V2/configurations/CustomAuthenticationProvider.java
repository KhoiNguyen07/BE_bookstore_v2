package com.devsoga.BookStore_V2.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.devsoga.BookStore_V2.enties.AccountEntity;
import com.devsoga.BookStore_V2.repositories.AccountRepository;

import java.util.List;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        // Implement your custom authentication logic here
        String username = authentication.getName();
        String password = authentication.getCredentials().toString();

        List<AccountEntity> accounts = accountRepository.findByUsername(username);

        if (accounts.isEmpty()) {
            throw new BadCredentialsException("Invalid username or password");
        }

        AccountEntity account = accounts.get(0);
        if (account.getPassword() == null || !passwordEncoder.matches(password, account.getPassword())) {
            throw new BadCredentialsException("Invalid username or password");
        }

        List<SimpleGrantedAuthority> authorities = List.of();
        if (account.getRoleEntity() != null) {
            String roleCode = account.getRoleEntity().getRoleCode();
            if (roleCode != null) {
                authorities = List.of(new SimpleGrantedAuthority(roleCode));
            }
        }

        // principal can be the AccountEntity (or username); credentials set to null after authentication
        return new UsernamePasswordAuthenticationToken(account, null, authorities);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        // Support UsernamePasswordAuthenticationToken
        return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
    }

    
}
