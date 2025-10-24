package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.FavoriteEntity;
import com.devsoga.BookStore_V2.services.FavoriteService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/favorites")
@RequiredArgsConstructor
public class FavoriteController extends BaseCrudController<FavoriteEntity, Integer> {
	private final FavoriteService service;

	@Override
	protected List<FavoriteEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<FavoriteEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected FavoriteEntity doCreate(@RequestBody FavoriteEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<FavoriteEntity> doUpdate(Integer id, @RequestBody FavoriteEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
