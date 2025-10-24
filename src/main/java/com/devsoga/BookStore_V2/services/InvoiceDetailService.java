package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.InvoiceDetailEntity;
import com.devsoga.BookStore_V2.repositories.InvoiceDetailRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class InvoiceDetailService extends BaseCrudService<InvoiceDetailEntity, Integer> {
    private final InvoiceDetailRepository repository;
    @Override protected JpaRepository<InvoiceDetailEntity, Integer> repo() { return repository; }
}
