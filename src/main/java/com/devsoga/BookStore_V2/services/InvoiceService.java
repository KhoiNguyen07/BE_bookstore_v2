package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.InvoiceEntity;
import com.devsoga.BookStore_V2.repositories.InvoiceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class InvoiceService extends BaseCrudService<InvoiceEntity, Integer> {
    private final InvoiceRepository repository;
    @Override protected JpaRepository<InvoiceEntity, Integer> repo() { return repository; }
}
