package com.contacts.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.contacts.model.Contact;

@Repository("contactDao")
public class ContactDaoImpl implements ContactDao {

	private SessionFactory sessionFactory;
	
	@Autowired
	public ContactDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public Contact find(Long id) {
		return (Contact) sessionFactory.getCurrentSession().get(Contact.class, id);
	}

	@Override
	public void addOrUpdate(Contact contact) {
		sessionFactory.getCurrentSession().saveOrUpdate(contact);
	}

	@Override
	public void delete(Contact contact) {
		sessionFactory.getCurrentSession().delete(contact);
	}

	@Override
	//@SuppressWarnings("unchecked")
	public List<Contact> list() {
		//List<Products> products  = (List<Products>) session.createQuery("from Products").list();
		List<Contact> contacts = (List<Contact>) sessionFactory.getCurrentSession().createQuery("from Contact").list();
		//return sessionFactory.getCurrentSession().createQuery("from contact").list();
		return contacts;
	}

}
