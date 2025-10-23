package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.EmployeeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<EmployeeEntity, Long> {
}
