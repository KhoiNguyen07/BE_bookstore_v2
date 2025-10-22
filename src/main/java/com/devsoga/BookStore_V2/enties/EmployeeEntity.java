package com.devsoga.BookStore_V2.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Entity(name = "employee")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "employee_code")
    private String employeeCode;

    @Column(name = "employee_name")
    private String employeeName;

    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Column(name = "gender")
    private Boolean gender;

    @Column(name = "created_date")
    private LocalDateTime createdDate;

    @Column(name = "updated_date")
    private LocalDateTime updatedDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "account_code", referencedColumnName = "account_code")
    private AccountEntity accountEntity;

    @OneToMany(mappedBy = "employeeEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<PurchaseOrderEntity> purchaseOrderList;

    @OneToMany(mappedBy = "employeeEntity", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<InvoiceEntity> orderList;
}
