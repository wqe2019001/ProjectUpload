package com.glowup.brand.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.glowup.brand.model.User;


@Repository
public interface UserRepository extends CrudRepository<User, String> {

	User save(User user);
	
	User findByUserId(String id);
}
