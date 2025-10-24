package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.PurchaseOrderEntity;
import com.devsoga.BookStore_V2.services.PurchaseOrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/purchase-orders")
@RequiredArgsConstructor
public class PurchaseOrderController extends BaseCrudController<PurchaseOrderEntity, Integer> {
	private final PurchaseOrderService service;

	@Override
	protected List<PurchaseOrderEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<PurchaseOrderEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected PurchaseOrderEntity doCreate(@RequestBody PurchaseOrderEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<PurchaseOrderEntity> doUpdate(Integer id, @RequestBody PurchaseOrderEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
