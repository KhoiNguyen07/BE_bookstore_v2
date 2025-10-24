package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.CustomerTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerTypeRepository extends JpaRepository<CustomerTypeEntity, Integer> {
}
