package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.PurchaseOrderDetailEntity;
import com.devsoga.BookStore_V2.services.PurchaseOrderDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/purchase-order-details")
@RequiredArgsConstructor
public class PurchaseOrderDetailController extends BaseCrudController<PurchaseOrderDetailEntity, Integer> {
	private final PurchaseOrderDetailService service;

	@Override
	protected List<PurchaseOrderDetailEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<PurchaseOrderDetailEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected PurchaseOrderDetailEntity doCreate(@RequestBody PurchaseOrderDetailEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<PurchaseOrderDetailEntity> doUpdate(Integer id, @RequestBody PurchaseOrderDetailEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
