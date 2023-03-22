package com.springboot.react.service;

import com.springboot.react.model.Reserve;

public interface ReserveService {

	void insert(Reserve reserve);

	void update(Reserve reserve);

	void delete(Reserve reserve);

	Reserve select();

}