package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.ProductCategoryEntity;
import com.devsoga.BookStore_V2.repositories.ProductCategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProductCategoryService extends BaseCrudService<ProductCategoryEntity, Integer> {
    private final ProductCategoryRepository repository;
    @Override protected JpaRepository<ProductCategoryEntity, Integer> repo() { return repository; }
}
