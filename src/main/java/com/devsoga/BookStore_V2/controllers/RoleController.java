package com.devsoga.BookStore_V2.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsoga.BookStore_V2.enties.RoleEntity;
import com.devsoga.BookStore_V2.services.RoleService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/v1/api/roles")
@RequiredArgsConstructor
public class RoleController extends BaseCrudController<RoleEntity, Integer> {

	private final RoleService service;

	@Override
	protected List<RoleEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<RoleEntity> doGet(@PathVariable("id") Integer id) {
		return service.findById(id);
	}

	@Override
	protected RoleEntity doCreate(@RequestBody RoleEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<RoleEntity> doUpdate(@PathVariable("id") Integer id, @RequestBody RoleEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(@PathVariable("id") Integer id) {
		return service.delete(id);
	}
}
