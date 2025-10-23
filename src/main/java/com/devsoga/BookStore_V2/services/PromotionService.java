package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.PromotionEntity;
import com.devsoga.BookStore_V2.repositories.PromotionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PromotionService extends BaseCrudService<PromotionEntity, Long> {
    private final PromotionRepository repository;
    @Override protected JpaRepository<PromotionEntity, Long> repo() { return repository; }
}
