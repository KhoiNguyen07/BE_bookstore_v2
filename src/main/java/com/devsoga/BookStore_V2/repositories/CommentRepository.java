package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.CommentEntity;
import com.devsoga.BookStore_V2.enties.ProductEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentRepository extends JpaRepository<CommentEntity, Long> {

    // Lấy danh sách bình luận theo sản phẩm (hữu ích cho trang chi tiết SP)
    Page<CommentEntity> findByProductEntity(ProductEntity product, Pageable pageable);

    // Đếm số bình luận của 1 sản phẩm
    long countByProductEntity(ProductEntity product);
}
