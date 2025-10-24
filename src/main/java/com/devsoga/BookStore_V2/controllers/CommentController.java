package com.devsoga.BookStore_V2.controllers;

import com.devsoga.BookStore_V2.enties.CommentEntity;
import com.devsoga.BookStore_V2.services.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/api/comments")
@RequiredArgsConstructor
public class CommentController extends BaseCrudController<CommentEntity, Integer> {
	private final CommentService service;

	@Override
	protected List<CommentEntity> doList() {
		return service.findAll();
	}

	@Override
	protected Optional<CommentEntity> doGet(Integer id) {
		return service.findById(id);
	}

	@Override
	protected CommentEntity doCreate(@RequestBody CommentEntity body) {
		return service.create(body);
	}

	@Override
	protected Optional<CommentEntity> doUpdate(Integer id, @RequestBody CommentEntity body) {
		return service.update(id, body);
	}

	@Override
	protected boolean doDelete(Integer id) {
		return service.delete(id);
	}
}
