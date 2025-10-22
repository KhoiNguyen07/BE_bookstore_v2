package com.devsoga.BookStore_V2.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Entity(name = "order")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class InvoiceEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "order_code")
    private String orderCode;

    @Enumerated(EnumType.STRING)
    @Column(name = "order_type")
    private OrderType orderType;

    @Enumerated(EnumType.STRING)
    @Column(name = "payment_method")
    private PaymentMethod paymentMethod;

    @Column(name = "status")
    private String status;

    @Column(name = "discount")
    private BigDecimal discount;

    @Column(name = "total_amount")
    private BigDecimal totalAmount;

    @Column(name = "final_amount")
    private BigDecimal finalAmount;

    @Column(name = "created_date")
    private LocalDateTime createdDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customer_code", referencedColumnName = "customer_code")
    private CustomerEntity customerEntity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employee_code", referencedColumnName = "employee_code")
    private EmployeeEntity employeeEntity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "promotion_code", referencedColumnName = "promotion_code")
    private PromotionEntity promotionEntity;

    @OneToMany(mappedBy = "orderEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<InvoiceDetailEntity> orderDetailList;

    @OneToMany(mappedBy = "orderEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<ReturnOrderEntity> returnOrderList;

    // Enums
    public enum OrderType {
        Offline, Online
    }

    public enum PaymentMethod {
        Cash, QR
    }
}