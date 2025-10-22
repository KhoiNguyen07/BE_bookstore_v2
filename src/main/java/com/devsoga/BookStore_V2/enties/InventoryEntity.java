package com.devsoga.BookStore_V2.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDateTime;

@Entity(name = "inventory")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class InventoryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "inventory_code")
    private String inventoryCode;

    @Column(name = "stock_quantity")
    private Integer stockQuantity;

    @Column(name = "status")
    private Boolean status;

    @Column(name = "created_date")
    private LocalDateTime createdDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_code", referencedColumnName = "product_code")
    private ProductEntity productEntity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "import_invoice_detail_code", referencedColumnName = "import_invoice_detail_code")
    private PurchaseOrderDetailEntity importInvoiceDetailEntity;
}