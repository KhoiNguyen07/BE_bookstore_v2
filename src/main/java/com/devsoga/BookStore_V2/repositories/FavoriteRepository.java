package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.FavoriteEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FavoriteRepository extends JpaRepository<FavoriteEntity, Long> {
}
