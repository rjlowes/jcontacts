package com.contacts.dao;

import java.util.List;

import com.contacts.model.Contact;

public interface ContactDao {
	public Contact find(Long id);
	public void addOrUpdate(Contact contact);
	public void delete(Contact contact);
	public List<Contact> list();
}
