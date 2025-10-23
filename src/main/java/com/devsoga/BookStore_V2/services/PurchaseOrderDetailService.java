package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.PurchaseOrderDetailEntity;
import com.devsoga.BookStore_V2.repositories.PurchaseOrderDetailRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PurchaseOrderDetailService extends BaseCrudService<PurchaseOrderDetailEntity, Long> {
    private final PurchaseOrderDetailRepository repository;
    @Override protected JpaRepository<PurchaseOrderDetailEntity, Long> repo() { return repository; }
}
