package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.PurchaseOrderEntity;
import com.devsoga.BookStore_V2.repositories.PurchaseOrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PurchaseOrderService extends BaseCrudService<PurchaseOrderEntity, Long> {
    private final PurchaseOrderRepository repository;
    @Override protected JpaRepository<PurchaseOrderEntity, Long> repo() { return repository; }
}
