package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.ReturnOrderEntity;
import com.devsoga.BookStore_V2.repositories.ReturnOrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReturnOrderService extends BaseCrudService<ReturnOrderEntity, Long> {
    private final ReturnOrderRepository repository;
    @Override protected JpaRepository<ReturnOrderEntity, Long> repo() { return repository; }
}
