package com.devsoga.BookStore_V2.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
public class SecurityConfig {

    // ✅ Password encoder for BCrypt
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .csrf(csrf -> csrf.disable()) // 🚫 Tắt CSRF cho API
            .authorizeHttpRequests(auth -> auth
                .requestMatchers("/api/taikhoan/**", "/api/sanpham/**").permitAll() // cho phép login/register
                .anyRequest().authenticated()
            )
            .formLogin(Customizer.withDefaults()); // hoặc cấu hình login riêng

        return http.build();
    }
}
