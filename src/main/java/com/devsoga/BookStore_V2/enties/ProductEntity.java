package com.devsoga.BookStore_V2.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDateTime;
import java.util.List;

@Entity(name = "product")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "product_code")
    private String productCode;

    @Column(name = "product_name")
    private String productName;

    @Column(name = "description")
    private String description;

    @Column(name = "image")
    private String image;

    @Column(name = "status")
    private Boolean status;

    @Column(name = "created_date")
    private LocalDateTime createdDate;

    @Column(name = "updated_date")
    private LocalDateTime updatedDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_code", referencedColumnName = "category_code")
    private ProductCategoryEntity productCategoryEntity;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CartEntity> cartList;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<FavoriteEntity> wishlistList;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<PurchaseOrderDetailEntity> purchaseOrderDetailList;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<InventoryEntity> inventoryList;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<PriceHistoryEntity> priceHistoryList;

    @OneToMany(mappedBy = "productEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<InvoiceDetailEntity> orderDetailList;
}