package com.devsoga.BookStore_V2.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsoga.BookStore_V2.enties.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    Optional<ProductEntity> findByProductCode(String productCode);
}
