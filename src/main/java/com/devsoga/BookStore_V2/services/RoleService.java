package com.devsoga.BookStore_V2.services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.devsoga.BookStore_V2.enties.RoleEntity;
import com.devsoga.BookStore_V2.repositories.RoleRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RoleService extends BaseCrudService<RoleEntity, Integer> {
    private final RoleRepository repository;

    @Override
    protected JpaRepository<RoleEntity, Integer> repo() {
        return repository;
    }
}
