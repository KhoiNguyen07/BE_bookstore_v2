package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.CustomerEntity;
import com.devsoga.BookStore_V2.repositories.CustomerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomerService extends BaseCrudService<CustomerEntity, Long> {
    private final CustomerRepository repository;
    @Override protected JpaRepository<CustomerEntity, Long> repo() { return repository; }
}
