package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.CustomerTypeEntity;
import com.devsoga.BookStore_V2.repositories.CustomerTypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomerTypeService extends BaseCrudService<CustomerTypeEntity, Integer> {
    private final CustomerTypeRepository repository;
    @Override protected JpaRepository<CustomerTypeEntity, Integer> repo() { return repository; }
}
