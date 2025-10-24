package com.devsoga.BookStore_V2.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

public abstract class BaseCrudController<T, ID> {

    protected abstract List<T> doList();
    protected abstract Optional<T> doGet(ID id);
    protected abstract T doCreate(T body);
    protected abstract Optional<T> doUpdate(ID id, T body);
    protected abstract boolean doDelete(ID id);

    @GetMapping
    public List<T> list() { return doList(); }

    @GetMapping("/{id}")
    public ResponseEntity<T> get(@PathVariable("id") ID id) {
        return doGet(id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<T> create(@RequestBody T body) { return ResponseEntity.ok(doCreate(body)); }

    @PutMapping("/{id}")
    public ResponseEntity<T> update(@PathVariable("id") ID id, @RequestBody T body) {
        return doUpdate(id, body).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable("id") ID id) {
        return doDelete(id) ? ResponseEntity.noContent().build() : ResponseEntity.notFound().build();
    }
}
