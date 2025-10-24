package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.SupplierEntity;
import com.devsoga.BookStore_V2.services.SupplierService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/suppliers")
@RequiredArgsConstructor
public class SupplierController extends BaseCrudController<SupplierEntity, Integer> {
	private final SupplierService service;

	@Override
	protected List<SupplierEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<SupplierEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected SupplierEntity doCreate(@RequestBody SupplierEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<SupplierEntity> doUpdate(Integer id, @RequestBody SupplierEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
