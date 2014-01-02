package com.contacts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.contacts.dao.ContactDao;
import com.contacts.model.Contact;

@Service("contactService")
public class ContactServiceImpl implements ContactService {

	private ContactDao contactDao;
	
	@Autowired
	public ContactServiceImpl(ContactDao contactDao) {
		this.contactDao = contactDao;
	}
	
	@Override
	@Transactional(readOnly=true)
	public Contact getContact(Long id) {
		return contactDao.find(id);
	}

	@Override
	@Transactional
	public void addOrUpdateContact(Contact contact) {
		contactDao.addOrUpdate(contact);
	}

	@Override
	@Transactional
	public void deleteContact(Long id) {
		Contact contact = contactDao.find(id);
		// @todo throw error here if contact is not found!
		contactDao.delete(contact);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Contact> listContacts() {
		return contactDao.list();
	}

}
