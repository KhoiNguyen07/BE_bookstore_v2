package com.devsoga.BookStore_V2.repositories;

import java.math.BigDecimal;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.devsoga.BookStore_V2.enties.PriceHistoryEntity;
import com.devsoga.BookStore_V2.enties.ProductEntity;

public interface PriceHistoryRepository extends JpaRepository<PriceHistoryEntity, Integer> {

    // Bản ghi giá hiện hành: endDate IS NULL, ưu tiên id lớn nhất (mới nhất)
    Optional<PriceHistoryEntity>
    findTopByProductEntityAndEndDateIsNullOrderByIdDesc(ProductEntity product);

    // JPQL tương đương (nếu bạn thích dùng @Query, vì @Entity(name="price_history"))
    @Query("select ph from price_history ph " +
           "where ph.productEntity = :p and ph.endDate is null " +
           "order by ph.id desc")
    Optional<PriceHistoryEntity> findCurrentByProduct(@Param("p") ProductEntity product);
    
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
