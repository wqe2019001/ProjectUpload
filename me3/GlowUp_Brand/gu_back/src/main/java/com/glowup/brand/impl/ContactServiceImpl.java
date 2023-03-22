package com.glowup.brand.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.glowup.brand.model.Contact;
import com.glowup.brand.repository.ContactRepository;

@Service("contactService")
public class ContactServiceImpl implements ContactService{
	@Autowired
	private ContactRepository dao;
	
	public void insert(Contact contact) {
		dao.save(contact);
	}
	
	public void update(Contact contact) {
		Contact currContact = dao.findTopByOrderByConNoDesc();
		currContact.setConRegId(contact.getConRegId());
		currContact.setConEmail(contact.getConEmail());
		currContact.setConPhone(contact.getConPhone());
		currContact.setConContent(contact.getConContent());
		dao.save(currContact);
	}
	
	public void delete(Contact contact) {
		dao.delete(contact);
	}
	
	public Contact select() {
		return dao.findTopByOrderByConNoDesc();
	}
}
