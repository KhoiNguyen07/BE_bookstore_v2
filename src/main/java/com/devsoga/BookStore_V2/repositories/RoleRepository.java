package com.devsoga.BookStore_V2.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsoga.BookStore_V2.enties.RoleEntity;

public interface RoleRepository extends JpaRepository<RoleEntity, Integer> {

	Optional<RoleEntity> findByRoleCode(String roleCode);
	
}
