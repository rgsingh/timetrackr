package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Person;
import com.example.service.PersonService;

@Controller
public class ClientsController extends BaseController {
	
	//TODO rename to ClientService
	@Autowired
	private PersonService personService;
	
	@Value("${client.added}") String clientAdded;

	@Value("${client.deleted}") String clientDeleted;

	@Value("${client.updated}") String clientUpdated;
	
	@RequestMapping(value = "/clients", method = RequestMethod.GET)
	public ModelAndView listOfClients() {
		ModelAndView modelAndView = new ModelAndView("client/list-clients");
		
		List<Person> people = personService.getAllPeople();
		modelAndView.addObject("clients", people);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/clients/add", method=RequestMethod.GET)
	public ModelAndView addClientPage() {
		ModelAndView modelAndView = new ModelAndView("client/add-client");
		modelAndView.addObject("client", new Person());
		return modelAndView;
	}
	
	@RequestMapping(value="/clients/add", method=RequestMethod.POST)
	public ModelAndView addingClient(@ModelAttribute("client") Person person) {
		
		ModelAndView modelAndView = new ModelAndView("client/list-clients");
		personService.savePerson(person);
		
		modelAndView.addObject("message", clientAdded);
		
		return modelAndView;
	}

	
	@RequestMapping(value="/clients/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editClientPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("client/edit-client");
		Person person = personService.getPersonById(id);
		modelAndView.addObject("client", person);
		return modelAndView;
	}
	
	@RequestMapping(value="/clients/update/{id}", method=RequestMethod.POST)
	public ModelAndView updateClient(@ModelAttribute Person person, @PathVariable Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("client/list-clients");
		
		personService.savePerson(person);
		
		modelAndView.addObject("message", clientUpdated);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/clients/delete/{id}", method=RequestMethod.POST)
	public ModelAndView deleteClient(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("client/list-clients");
		personService.deletePersonById(id);
		modelAndView.addObject("message", clientDeleted);
		return modelAndView;
	}

}
