package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.payload.respone.BaseRespone;
import com.devsoga.BookStore_V2.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/api/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    // GET /api/products - list all products
    @GetMapping("")
    public BaseRespone getAllProducts() {
        return productService.getAllProducts();
    }

    // GET /api/products/{productCode} - get single product by code
    @GetMapping("/{productCode}")
    public BaseRespone getProductByProductCode(@PathVariable("productCode") String productCode) {
        return productService.getProductByProductCode(productCode);
    }

    //   @GetMapping("/{productCode}")
    // public BaseRespone getProductByProductCode(@PathVariable("productCode") String productCode) {
    //     return productService.getProductByProductCode(productCode);
    // }

     //   @GetMapping("/{productCode}")
    // public BaseRespone getProductByProductCode(@PathVariable("productCode") String productCode) {
    //     return productService.getProductByProductCode(productCode);
    // }


     //   @GetMapping("/{productCode}")
    // public BaseRespone getProductByProductCode(@PathVariable("productCode") String productCode) {
    //     return productService.getProductByProductCode(productCode);
    // }


    // GET /api/products/{productCode} - get single product by code
//    @GetMapping("/{productCode}")
//    public BaseRespone getProductByProductCode(@PathVariable("productCode") String productCode) {
//        return productService.getProductByProductCode(productCode);
//    }


}
