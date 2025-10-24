package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.InvoiceEntity;
import com.devsoga.BookStore_V2.services.InvoiceService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/invoices")
@RequiredArgsConstructor
public class InvoiceController extends BaseCrudController<InvoiceEntity, Integer> {
	private final InvoiceService service;

	@Override
	protected List<InvoiceEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<InvoiceEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected InvoiceEntity doCreate(@RequestBody InvoiceEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<InvoiceEntity> doUpdate(Integer id, @RequestBody InvoiceEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
