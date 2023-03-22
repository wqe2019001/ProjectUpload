package com.glowup.brand.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.glowup.brand.impl.ContactService;
import com.glowup.brand.model.Contact;

@RestController
public class ContactController {
	@Autowired
	private ContactService contactService;

	@RequestMapping(value = "insertProcess.do")
	public void insertProcess(Contact contact) {
		contactService.insert(contact);
	}

	@RequestMapping(value = "updateProcess.do")
	public void updateProcess(Contact contact) {
		contactService.update(contact);
	}

	@RequestMapping(value = "deleteProcess.do")
	public void deleteProcess(Contact contact) {
		contactService.delete(contact);
	}

	@RequestMapping(value = "view.do")
	public Contact viewcontact() {
		Contact contact = contactService.select();
		return contact;
	}

}