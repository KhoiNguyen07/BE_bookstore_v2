package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.CustomerTypeEntity;
import com.devsoga.BookStore_V2.services.CustomerTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/customer-types")
@RequiredArgsConstructor
public class CustomerTypeController extends BaseCrudController<CustomerTypeEntity, Integer> {
	private final CustomerTypeService service;

	@Override
	protected List<CustomerTypeEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<CustomerTypeEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected CustomerTypeEntity doCreate(@RequestBody CustomerTypeEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<CustomerTypeEntity> doUpdate(Integer id, @RequestBody CustomerTypeEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
