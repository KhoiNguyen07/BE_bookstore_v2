package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.InvoiceDetailEntity;
import com.devsoga.BookStore_V2.services.InvoiceDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/invoice-details")
@RequiredArgsConstructor
public class InvoiceDetailController extends BaseCrudController<InvoiceDetailEntity, Integer> {
	private final InvoiceDetailService service;

	@Override
	protected List<InvoiceDetailEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<InvoiceDetailEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected InvoiceDetailEntity doCreate(@RequestBody InvoiceDetailEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<InvoiceDetailEntity> doUpdate(Integer id, @RequestBody InvoiceDetailEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
