package com.devsoga.BookStore_V2.services;

import com.devsoga.BookStore_V2.enties.CommentEntity;
import com.devsoga.BookStore_V2.repositories.CommentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CommentService extends BaseCrudService<CommentEntity, Long> {
    private final CommentRepository repository;
    @Override protected JpaRepository<CommentEntity, Long> repo() { return repository; }
}
