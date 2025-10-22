package com.devsoga.BookStore_V2.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/api/products")
public class ProductController {
    
    @GetMapping("")
    public String helloProduct() {
        return "Hello Product!";
    }
}
