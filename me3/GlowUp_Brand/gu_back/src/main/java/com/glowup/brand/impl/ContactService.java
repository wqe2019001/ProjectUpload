package com.glowup.brand.impl;

import com.glowup.brand.model.Contact;

public interface ContactService {

	void insert(Contact contact);

	void update(Contact contact);

	void delete(Contact contact);

	Contact select();

}
