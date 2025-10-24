package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.PriceHistoryEntity;
import com.devsoga.BookStore_V2.services.PriceHistoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/price-historys")
@RequiredArgsConstructor
public class PriceHistoryController extends BaseCrudController<PriceHistoryEntity, Integer> {
	private final PriceHistoryService service;

	@Override
	protected List<PriceHistoryEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<PriceHistoryEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected PriceHistoryEntity doCreate(@RequestBody PriceHistoryEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<PriceHistoryEntity> doUpdate(Integer id, @RequestBody PriceHistoryEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
