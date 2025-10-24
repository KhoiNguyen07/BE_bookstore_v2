package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.PromotionTypeEntity;
import com.devsoga.BookStore_V2.services.PromotionTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/promotion-types")
@RequiredArgsConstructor
public class PromotionTypeController extends BaseCrudController<PromotionTypeEntity, Integer> {
	private final PromotionTypeService service;

	@Override
	protected List<PromotionTypeEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<PromotionTypeEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected PromotionTypeEntity doCreate(@RequestBody PromotionTypeEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<PromotionTypeEntity> doUpdate(Integer id, @RequestBody PromotionTypeEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
