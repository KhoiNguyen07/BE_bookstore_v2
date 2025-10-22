package com.devsoga.BookStore_V2.dtos.responses;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AccountRespone {
    private String accountCode;
    private String username;
    private String email;
    private String roleCode;
}   
