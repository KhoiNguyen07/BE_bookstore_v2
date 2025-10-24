package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.Optional;

public interface ProductRepository
        extends JpaRepository<ProductEntity, Integer>, JpaSpecificationExecutor<ProductEntity> {

    Optional<ProductEntity> findByProductCode(String productCode);
}
