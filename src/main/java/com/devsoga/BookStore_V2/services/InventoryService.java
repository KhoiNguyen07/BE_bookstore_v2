package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.InventoryEntity;
import com.devsoga.BookStore_V2.repositories.InventoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class InventoryService extends BaseCrudService<InventoryEntity, Long> {
    private final InventoryRepository repository;
    @Override protected JpaRepository<InventoryEntity, Long> repo() { return repository; }
}
