package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.PromotionTypeEntity;
import com.devsoga.BookStore_V2.repositories.PromotionTypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PromotionTypeService extends BaseCrudService<PromotionTypeEntity, Integer> {
    private final PromotionTypeRepository repository;
    @Override protected JpaRepository<PromotionTypeEntity, Integer> repo() { return repository; }
}
