package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.dtos.requests.CartRequest;
import com.devsoga.BookStore_V2.dtos.responses.CartRespone;
import com.devsoga.BookStore_V2.enties.CartEntity;
import com.devsoga.BookStore_V2.enties.CustomerEntity;
import com.devsoga.BookStore_V2.enties.ProductEntity;
import com.devsoga.BookStore_V2.payload.respone.BaseRespone;
import com.devsoga.BookStore_V2.repositories.CartRepository;
import com.devsoga.BookStore_V2.repositories.CustomerRepository;
import com.devsoga.BookStore_V2.repositories.ProductRepository;
import com.devsoga.BookStore_V2.repositories.PriceHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private PriceHistoryRepository priceHistoryRepository;

    public BaseRespone createCart(CartRequest request) {
        BaseRespone resp = new BaseRespone();
        try {
            if (request.getCustomerCode() == null || request.getProductCode() == null || request.getQuantity() == null) {
                resp.setStatusCode(HttpStatus.BAD_REQUEST.value());
                resp.setMessage("Missing required fields");
                resp.setData(null);
                return resp;
            }

            ProductEntity product = productRepository.findByProductCode(request.getProductCode()).orElse(null);
            if (product == null) {
                resp.setStatusCode(HttpStatus.NOT_FOUND.value());
                resp.setMessage("Product not found");
                resp.setData(null);
                return resp;
            }

            CustomerEntity customer = customerRepository.findByCustomerCode(request.getCustomerCode()).orElse(null);
            if (customer == null) {
                resp.setStatusCode(HttpStatus.NOT_FOUND.value());
                resp.setMessage("Customer not found");
                resp.setData(null);
                return resp;
            }

            BigDecimal unitPrice = priceHistoryRepository.findLatestActivePriceByProductCode(product.getProductCode()).orElse(BigDecimal.ZERO);
            int qty = Math.max(1, request.getQuantity());

            // check existing cart item
            CartEntity existing = cartRepository
                    .findByCustomerEntity_CustomerCodeAndProductEntity_ProductCode(customer.getCustomerCode(), product.getProductCode())
                    .orElse(null);

            CartEntity saved;
            boolean isNew = false;
            if (existing != null) {
                int newQty = (existing.getQuantity() != null ? existing.getQuantity() : 0) + qty;
                existing.setQuantity(newQty);
                existing.setTotalAmount(unitPrice.multiply(BigDecimal.valueOf(newQty)));
                saved = cartRepository.save(existing);
            } else {
                CartEntity c = new CartEntity();
                c.setProductEntity(product);
                c.setCustomerEntity(customer);
                c.setQuantity(qty);
                c.setTotalAmount(unitPrice.multiply(BigDecimal.valueOf(qty)));
                saved = cartRepository.save(c);
                isNew = true;
            }

            // return the created/updated cart item in response data
            resp.setStatusCode(isNew ? HttpStatus.CREATED.value() : HttpStatus.OK.value());
            resp.setMessage(isNew ? "Cart created" : "Cart updated");
            resp.setData(toResp(saved));
        } catch (Exception e) {
            resp.setStatusCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            resp.setMessage("Failed to create cart: " + e.getMessage());
            resp.setData(null);
        }
        return resp;
    }

    public BaseRespone getCartByCustomerCode(String customerCode) {
        BaseRespone resp = new BaseRespone();
        try {
            List<CartEntity> list = cartRepository.findByCustomerEntity_CustomerCode(customerCode);
            List<CartRespone> data = list.stream().map(this::toResp).collect(Collectors.toList());
            resp.setStatusCode(HttpStatus.OK.value());
            resp.setMessage("Success");
            resp.setData(data);
        } catch (Exception e) {
            resp.setStatusCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            resp.setMessage("Failed to fetch cart: " + e.getMessage());
            resp.setData(null);
        }
        return resp;
    }

    public BaseRespone deleteCartItem(String customerCode, String productCode) {
        BaseRespone resp = new BaseRespone();
        try {
            CartEntity existing = cartRepository
                    .findByCustomerEntity_CustomerCodeAndProductEntity_ProductCode(customerCode, productCode)
                    .orElse(null);

            if (existing == null) {
                resp.setStatusCode(HttpStatus.NOT_FOUND.value());
                resp.setMessage("Cart item not found");
                resp.setData(null);
                return resp;
            }

            CartRespone deleted = toResp(existing);
            cartRepository.delete(existing);

            resp.setStatusCode(HttpStatus.OK.value());
            resp.setMessage("Cart item deleted");
            resp.setData(deleted);
        } catch (Exception e) {
            resp.setStatusCode(HttpStatus.INTERNAL_SERVER_ERROR.value());
            resp.setMessage("Failed to delete cart item: " + e.getMessage());
            resp.setData(null);
        }
        return resp;
    }

    private CartRespone toResp(CartEntity c) {
        if (c == null) return null;
        CartRespone r = new CartRespone();
        r.setId(c.getId());
        if (c.getProductEntity() != null) {
            r.setProductCode(c.getProductEntity().getProductCode());
            r.setProductName(c.getProductEntity().getProductName());
            r.setImage(c.getProductEntity().getImage());
            BigDecimal unitPrice = priceHistoryRepository.findLatestActivePriceByProductCode(c.getProductEntity().getProductCode()).orElse(BigDecimal.ZERO);
            r.setUnitPrice(unitPrice);
        }
        r.setQuantity(c.getQuantity());
        r.setTotalAmount(c.getTotalAmount());
        return r;
    }
}
