package com.devsoga.BookStore_V2.dtos.responses;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductRespone {
    
    private String productCode;
    private String productName;
    private String description;
    private String image;
    private String categoryCode;
}
