package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.ProductCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductCategoryRepository extends JpaRepository<ProductCategoryEntity, Integer> {
}
