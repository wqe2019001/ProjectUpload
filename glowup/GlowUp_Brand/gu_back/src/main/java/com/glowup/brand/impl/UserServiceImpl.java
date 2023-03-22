package com.glowup.brand.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.glowup.brand.model.User;
import com.glowup.brand.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository repo;
	
	@Override
	public void insert(User vo) {
		repo.save(vo);		
	}

	@Override
	public User select(User vo) {
		User user = repo.findByUserId(vo.getUserId());
		return user;
	}

}


