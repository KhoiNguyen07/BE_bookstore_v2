package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.EmployeeEntity;
import com.devsoga.BookStore_V2.repositories.EmployeeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmployeeService extends BaseCrudService<EmployeeEntity, Integer> {
    private final EmployeeRepository repository;
    @Override protected JpaRepository<EmployeeEntity, Integer> repo() { return repository; }
}
