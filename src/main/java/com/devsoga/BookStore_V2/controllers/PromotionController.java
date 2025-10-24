package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.PromotionEntity;
import com.devsoga.BookStore_V2.services.PromotionService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/promotions")
@RequiredArgsConstructor
public class PromotionController extends BaseCrudController<PromotionEntity, Integer> {
	private final PromotionService service;

	@Override
	protected List<PromotionEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<PromotionEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected PromotionEntity doCreate(@RequestBody PromotionEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<PromotionEntity> doUpdate(Integer id, @RequestBody PromotionEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
