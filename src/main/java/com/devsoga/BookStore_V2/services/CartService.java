package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.CartEntity;
import com.devsoga.BookStore_V2.repositories.CartRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CartService extends BaseCrudService<CartEntity, Integer> {
    private final CartRepository repository;
    @Override protected JpaRepository<CartEntity, Integer> repo() { return repository; }
}
