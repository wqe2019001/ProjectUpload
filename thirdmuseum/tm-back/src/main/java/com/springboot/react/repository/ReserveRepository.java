package com.springboot.react.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.react.model.Reserve;

@Repository
public interface ReserveRepository extends CrudRepository<Reserve, Integer>{
	
	Reserve findTopByOrderByResNoDesc();
	
	Reserve save(Reserve reserve);
	
	void delete(Reserve reserve);
	
	List<Reserve> findAll();
	
}