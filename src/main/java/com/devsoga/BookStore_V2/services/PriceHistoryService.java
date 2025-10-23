package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.PriceHistoryEntity;
import com.devsoga.BookStore_V2.enties.ProductEntity;
import com.devsoga.BookStore_V2.repositories.PriceHistoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class PriceHistoryService extends BaseCrudService<PriceHistoryEntity, Integer> {

    private final PriceHistoryRepository priceHistoryRepository;

    @Override
    protected JpaRepository<PriceHistoryEntity, Integer> repo() {
        return priceHistoryRepository; // <-- Đúng tên biến repo
    }

    /** Giá đang hiệu lực (endDate IS NULL). Nếu chưa có thì trả 0. */
    public BigDecimal getCurrentPrice(ProductEntity product) {
        return priceHistoryRepository
                .findTopByProductEntityAndEndDateIsNullOrderByIdDesc(product)
                .map(PriceHistoryEntity::getUnitPrice)   // <-- Đúng getter theo entity
                .orElse(BigDecimal.ZERO);
    }
}
