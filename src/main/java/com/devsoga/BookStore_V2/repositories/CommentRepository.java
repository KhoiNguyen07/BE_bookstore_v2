package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.CommentEntity;
import com.devsoga.BookStore_V2.enties.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentRepository extends JpaRepository<CommentEntity, Integer> {

    Page<CommentEntity> findByOrderDetailEntity_ProductEntity(ProductEntity product, Pageable pageable);

    Integer countByOrderDetailEntity_ProductEntity(ProductEntity product);

    Page<CommentEntity> findByOrderDetailEntity_ProductEntity_ProductCode(String productCode, Pageable pageable);
}
