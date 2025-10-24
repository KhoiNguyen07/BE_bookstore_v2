package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<CustomerEntity, Integer> {
    // Khi cần mới bổ sung các finder cụ thể (email/phone/username) dựa theo field thật trong entity
}
