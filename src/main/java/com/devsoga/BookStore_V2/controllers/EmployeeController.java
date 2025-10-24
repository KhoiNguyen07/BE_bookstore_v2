package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.EmployeeEntity;
import com.devsoga.BookStore_V2.services.EmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/employees")
@RequiredArgsConstructor
public class EmployeeController extends BaseCrudController<EmployeeEntity, Integer> {
	private final EmployeeService service;

	@Override
	protected List<EmployeeEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<EmployeeEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected EmployeeEntity doCreate(@RequestBody EmployeeEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<EmployeeEntity> doUpdate(Integer id, @RequestBody EmployeeEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
