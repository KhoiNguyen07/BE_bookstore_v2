package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.CartEntity;
import com.devsoga.BookStore_V2.services.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/carts")
@RequiredArgsConstructor
public class CartController extends BaseCrudController<CartEntity, Integer> {
	private final CartService service;

	@Override
	protected List<CartEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<CartEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected CartEntity doCreate(@RequestBody CartEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<CartEntity> doUpdate(Integer id, @RequestBody CartEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
