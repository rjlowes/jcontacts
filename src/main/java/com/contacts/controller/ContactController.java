package com.contacts.controller;

import javax.annotation.PostConstruct;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.contacts.dao.ContactDao;
import com.contacts.model.Contact;
import com.contacts.service.ContactService;

@Controller
public class ContactController {
	
	private ContactService contactService;
	
	@Autowired
	public ContactController(ContactService contactService) {
		this.contactService = contactService;
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(ModelMap map) {
		//map.addAttribute("contact", new Contact());
		map.addAttribute("contacts", contactService.listContacts());
		return "contact.index";
	}
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String newContact(Contact contact) {
		return "contact.new";
	}
	
	// http://spring.io/guides/gs/validating-form-input/
	@RequestMapping(value="/", method=RequestMethod.POST)
	//public String create(@ModelAttribute("contact") Contact contact, BindingResult result) {
	public String create(@Valid Contact contact, BindingResult result, RedirectAttributes attributes) {	
		// @todo Add some validation here!!!
		if (result.hasErrors()) {
			attributes.addFlashAttribute("error", result.getFieldError().getDefaultMessage());
			attributes.addFlashAttribute("contact", contact);
			return "redirect:/new";
		}
		contactService.addOrUpdateContact(contact);
		return "redirect:/";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") Long id, Model model) {
		Contact contact = contactService.getContact(id);
		model.addAttribute("contact", contact);
		return "contact.show";
	}
	
	@RequestMapping(value="/{id}/edit", method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id, Model model) {
		Contact contact = contactService.getContact(id);
		model.addAttribute("contact", contact);
		return "contact.edit";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") Long id) {
		contactService.deleteContact(id);
		return "redirect:/";
	}
	
	/**
	 * A convenience for getting some demo data up and running
	 */
	@PostConstruct
	public void prepareFakeDomain() {
		contactService.addOrUpdateContact(new Contact("Pete", "Mitchell", "mav@jcontactherokuapp.com", "07788555441"));
		contactService.addOrUpdateContact(new Contact("Tyler", "Durden", "soap@jcontactherokuapp.com", "07788555442"));
		contactService.addOrUpdateContact(new Contact("Roland", "Bozz", "tigerland@jcontactherokuapp.com", "07788555443"));
	}
}
