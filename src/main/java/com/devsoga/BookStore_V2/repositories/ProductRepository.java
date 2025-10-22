package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    Optional<ProductEntity> findByProductCode(String productCode);
}
