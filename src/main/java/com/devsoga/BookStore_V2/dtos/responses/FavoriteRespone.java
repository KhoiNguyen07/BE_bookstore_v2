package com.devsoga.BookStore_V2.dtos.responses;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FavoriteRespone {
    private Integer id;
    private String productCode;
    private String productName;
    private String image;
}
