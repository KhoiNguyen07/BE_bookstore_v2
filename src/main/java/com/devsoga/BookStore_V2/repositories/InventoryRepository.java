package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.InventoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InventoryRepository extends JpaRepository<InventoryEntity, Long> {
}
