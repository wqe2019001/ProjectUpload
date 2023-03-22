package com.glowup.brand.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.glowup.brand.model.Contact;

@Repository
public interface ContactRepository extends CrudRepository<Contact, Integer>{
	
	Contact findTopByOrderByConNoDesc();
	
	Contact save(Contact contact);
	
	void delete(Contact contact);
	
}
