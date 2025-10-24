package com.devsoga.BookStore_V2.repositories;

import com.devsoga.BookStore_V2.enties.PriceHistoryEntity;
import com.devsoga.BookStore_V2.enties.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.Optional;

public interface PriceHistoryRepository extends JpaRepository<PriceHistoryEntity, Integer> {

    // Bản ghi giá đang hiệu lực theo Product: endDate IS NULL, mới nhất
    Optional<PriceHistoryEntity>
    findTopByProductEntityAndEndDateIsNullOrderByIdDesc(ProductEntity product);

    // Lấy đơn giá đang hiệu lực theo product_code (native cho hiệu năng)
    @Query(value = """
        SELECT ph.unit_price
        FROM price_history ph
        WHERE ph.product_code = :code
          AND ph.end_date IS NULL
        ORDER BY ph.id DESC
        LIMIT 1
        """, nativeQuery = true)
    Optional<BigDecimal> findLatestActivePriceByProductCode(@Param("code") String productCode);
}
