package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.ProductEntity;
import com.devsoga.BookStore_V2.dtos.responses.ProductRespone;
import com.devsoga.BookStore_V2.payload.respone.BaseRespone;
import com.devsoga.BookStore_V2.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Value("${app.base-url:}")
    private String appBaseUrl; // optional, e.g. http://localhost:8080

    public BaseRespone getAllProducts() {
        BaseRespone resp = new BaseRespone();
        try {
            List<ProductEntity> list = productRepository.findAll();
            List<ProductRespone> data = list.stream().map(this::toResp).collect(Collectors.toList());
            resp.setStatusCode(HttpStatus.OK.value());
            resp.setMessage("Success");
            resp.setData(data);
        } catch (Exception e) {
            resp.setStatusCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            resp.setMessage("Failed to fetch products: " + e.getMessage());
            resp.setData(null);
        }
        return resp;
    }

    public BaseRespone getProductByProductCode(String productCode) {
        BaseRespone resp = new BaseRespone();
        try {
            ProductEntity product = productRepository.findByProductCode(productCode).orElse(null);
            if (product == null) {
                resp.setStatusCode(HttpStatus.NOT_FOUND.value());
                resp.setMessage("Product not found");
                resp.setData(null);
            } else {
                ProductRespone dto = toResp(product);
                resp.setStatusCode(HttpStatus.OK.value());
                resp.setMessage("Success");
                resp.setData(dto);
            }
        } catch (Exception e) {
            resp.setStatusCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            resp.setMessage("Failed to fetch product: " + e.getMessage());
            resp.setData(null);
        }
        return resp;
    }

    private ProductRespone toResp(ProductEntity p) {
        ProductRespone r = new ProductRespone();
        if (p == null) return null;
        r.setProductCode(p.getProductCode());
        r.setProductName(p.getProductName());
        r.setDescription(p.getDescription());
        // normalize image path: ensure it starts with '/' and optionally prefix base URL
        String img = p.getImage();
        if (img != null) {
            img = img.replace('\\', '/'); // normalize backslashes if any
            if (!img.startsWith("/")) img = "/" + img;
            if (appBaseUrl != null && !appBaseUrl.isBlank()) {
                // avoid double slashes when prefixing
                String base = appBaseUrl.endsWith("/") ? appBaseUrl.substring(0, appBaseUrl.length()-1) : appBaseUrl;
                img = base + img;
            }
        }
        r.setImage(img);
        try {
            if (p.getProductCategoryEntity() != null) {
                r.setCategoryCode(p.getProductCategoryEntity().getCategoryCode());
            }
        } catch (Exception ignored) {
            // in case of lazy loading issues, ignore and leave categoryCode null
        }
        return r;
    }
}
