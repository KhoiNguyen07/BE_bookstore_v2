package com.devsoga.BookStore_V2.services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.devsoga.BookStore_V2.enties.CommentEntity;
import com.devsoga.BookStore_V2.repositories.CommentRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CommentService extends BaseCrudService<CommentEntity, Integer> {
    private final CommentRepository repository;
    @Override protected JpaRepository<CommentEntity, Integer> repo() { return repository; }
}
