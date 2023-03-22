package com.glowup.brand.impl;

import com.glowup.brand.model.User;

public interface UserService {

	void insert(User vo);
	
	User select(User vo);
	
}
