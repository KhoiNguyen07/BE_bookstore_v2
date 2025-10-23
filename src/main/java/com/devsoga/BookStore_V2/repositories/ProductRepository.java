package com.devsoga.BookStore_V2.repositories;

import java.awt.print.Pageable;
import java.util.Optional;

import org.hibernate.query.Page;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsoga.BookStore_V2.enties.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
	Optional<ProductEntity> findByProductCode(String code);
	Page findAll(Specification<ProductEntity> spec, Pageable p);
}
