package com.devsoga.BookStore_V2.services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public abstract class BaseCrudService<T, ID> {

    protected abstract JpaRepository<T, ID> repo();

    @Transactional(readOnly = true)
    public List<T> findAll() { return repo().findAll(); }

    @Transactional(readOnly = true)
    public Optional<T> findById(ID id) { return repo().findById(id); }

    @Transactional
    public T create(T entity) { return repo().save(entity); }

    @Transactional
    public Optional<T> update(ID id, T entity) {
        if (!repo().existsById(id)) return Optional.empty();
        return Optional.of(repo().save(entity));
    }

    @Transactional
    public boolean delete(ID id) {
        if (!repo().existsById(id)) return false;
        repo().deleteById(id);
        return true;
    }
}
