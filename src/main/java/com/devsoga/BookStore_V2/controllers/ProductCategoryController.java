package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.ProductCategoryEntity;
import com.devsoga.BookStore_V2.services.ProductCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/product-categorys")
@RequiredArgsConstructor
public class ProductCategoryController extends BaseCrudController<ProductCategoryEntity, Integer> {
	private final ProductCategoryService service;

	@Override
	protected List<ProductCategoryEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<ProductCategoryEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected ProductCategoryEntity doCreate(@RequestBody ProductCategoryEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<ProductCategoryEntity> doUpdate(Integer id, @RequestBody ProductCategoryEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
