package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.PriceHistoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Optional;

@Repository
public interface PriceHistoryRepository extends JpaRepository<PriceHistoryEntity, Integer> {
    
    @Query(value = "SELECT unit_price FROM price_history WHERE product_code = :productCode AND status = 1 ORDER BY created_date DESC LIMIT 1", nativeQuery = true)
    Optional<BigDecimal> findLatestActivePriceByProductCode(@Param("productCode") String productCode);
}