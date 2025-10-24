package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.InventoryEntity;
import com.devsoga.BookStore_V2.services.InventoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/inventorys")
@RequiredArgsConstructor
public class InventoryController extends BaseCrudController<InventoryEntity, Integer> {
	private final InventoryService service;

	@Override
	protected List<InventoryEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<InventoryEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected InventoryEntity doCreate(@RequestBody InventoryEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<InventoryEntity> doUpdate(Integer id, @RequestBody InventoryEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
