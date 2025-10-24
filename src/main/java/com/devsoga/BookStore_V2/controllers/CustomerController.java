package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.CustomerEntity;
import com.devsoga.BookStore_V2.services.CustomerService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/customers")
@RequiredArgsConstructor
public class CustomerController extends BaseCrudController<CustomerEntity, Integer> {
	private final CustomerService service;

	@Override
	protected List<CustomerEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<CustomerEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected CustomerEntity doCreate(@RequestBody CustomerEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<CustomerEntity> doUpdate(Integer id, @RequestBody CustomerEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
