package com.glowup.brand.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.glowup.brand.impl.UserService;
import com.glowup.brand.model.User;


// RESTful API 처리를 위한 애노테이션 설정
@RestController
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping(value = "/signin")
	public boolean signIn(@RequestBody User vo, HttpServletRequest request) {
		User user;
		
		try {
			user = service.select(vo);			
		} catch (NullPointerException e) {
			user = null;
		}
		if(user != null) {
			if(user.getUserPassword().equals(vo.getUserPassword())) {
				return true;
			}
		}		
		return false;		
	}
	
}

