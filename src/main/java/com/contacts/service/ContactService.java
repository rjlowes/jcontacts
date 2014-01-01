package com.contacts.service;

import java.util.List;

import com.contacts.model.Contact;

public interface ContactService {
	public Contact getContact(Long id);
	public void addOrUpdateContact(Contact contact);
	public void deleteContact(Long id);
	public List<Contact> listContacts();
}
