package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.ReturnOrderEntity;
import com.devsoga.BookStore_V2.services.ReturnOrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/return-orders")
@RequiredArgsConstructor
public class ReturnOrderController extends BaseCrudController<ReturnOrderEntity, Integer> {
	private final ReturnOrderService service;

	@Override
	protected List<ReturnOrderEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<ReturnOrderEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected ReturnOrderEntity doCreate(@RequestBody ReturnOrderEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<ReturnOrderEntity> doUpdate(Integer id, @RequestBody ReturnOrderEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
