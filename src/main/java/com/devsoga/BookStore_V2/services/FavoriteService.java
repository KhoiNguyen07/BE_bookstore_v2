package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.FavoriteEntity;
import com.devsoga.BookStore_V2.repositories.FavoriteRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FavoriteService extends BaseCrudService<FavoriteEntity, Long> {
    private final FavoriteRepository repository;
    @Override protected JpaRepository<FavoriteEntity, Long> repo() { return repository; }
}
