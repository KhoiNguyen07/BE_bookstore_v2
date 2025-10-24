package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.SupplierEntity;
import com.devsoga.BookStore_V2.repositories.SupplierRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SupplierService extends BaseCrudService<SupplierEntity, Integer> {
    private final SupplierRepository repository;
    @Override protected JpaRepository<SupplierEntity, Integer> repo() { return repository; }
}
