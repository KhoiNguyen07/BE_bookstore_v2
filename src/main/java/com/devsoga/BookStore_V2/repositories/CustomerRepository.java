package com.devsoga.BookStore_V2.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsoga.BookStore_V2.enties.CustomerEntity;

public interface CustomerRepository extends JpaRepository<CustomerEntity, Integer> {
	 Optional<CustomerEntity> findByCustomerCode(String cCustomerCode);
}
