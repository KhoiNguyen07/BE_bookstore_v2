package com.devsoga.BookStore_V2.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDateTime;

@Entity(name = "comment")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CommentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "comment_code")
    private String commentCode;

    @Column(name = "content")
    private String content;

    @Column(name = "rating")
    private Integer rating;

    @Column(name = "status")
    private Boolean status;

    @Column(name = "created_date")
    private LocalDateTime createdDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_detail_code", referencedColumnName = "order_detail_code")
    private InvoiceDetailEntity orderDetailEntity;
}