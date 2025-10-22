package com.devsoga.BookStore_V2.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Entity(name = "promotion")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PromotionEntity extends BaseAuditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "promotion_code")
    private String promotionCode;

    @Column(name = "promotion_name")
    private String promotionName;

    @Column(name = "value")
    private BigDecimal value;

    @Column(name = "status")
    private Boolean status;

    

    @Column(name = "end_date")
    private LocalDateTime endDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "promotion_type_code", referencedColumnName = "promotion_type_code")
    private PromotionTypeEntity promotionTypeEntity;

    @OneToMany(mappedBy = "promotionEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<InvoiceEntity> orderList;
}