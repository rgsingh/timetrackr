package com.example.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.model.Person;
import com.example.service.PersonService;

@Controller
public class ClientsController extends BaseController {
	private final Logger LOGGER = LoggerFactory.getLogger(ClientsController.class);

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
	public String addingClient(@Validated @ModelAttribute("client") Person person, RedirectAttributes redirectAttributes) {
		
		personService.savePerson(person);
		
		LOGGER.debug("Saved %s %s", person.getFirstName(), person.getLastName());

		redirectAttributes.addFlashAttribute("message", clientAdded);
		redirectAttributes.addFlashAttribute("firstName", person.getFirstName());
		redirectAttributes.addFlashAttribute("lastName", person.getLastName());
		
		LOGGER.debug("Added %s %s info as RedirectAttributes", person.getFirstName(), person.getLastName());

		return "redirect:/clients";
	}

	@RequestMapping(value="/clients/preview", method=RequestMethod.POST)
	public ModelAndView previewClientPage(@ModelAttribute("client") Person person) {
		ModelAndView modelAndView = new ModelAndView("client/add-client-preview");
		modelAndView.addObject("client", person);
		return modelAndView;
	}
	
	@RequestMapping(value="/clients/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editClientPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("client/edit-client");
		Person person = personService.getPersonById(id);
		modelAndView.addObject("client", person);
		return modelAndView;
	}
	
	@RequestMapping(value="/clients/update", method=RequestMethod.POST)
	public String updateClient(@ModelAttribute Person person, RedirectAttributes redirectAttributes) {
	
		personService.savePerson(person);
		
		redirectAttributes.addFlashAttribute("message", clientUpdated);
		redirectAttributes.addFlashAttribute("firstName", person.getFirstName());
		redirectAttributes.addFlashAttribute("lastName", person.getLastName());
		
		return "redirect:/clients";
	}
	
	@RequestMapping(value="/clients/delete/{id}", method=RequestMethod.POST)
	public String deleteClient(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
		Person personDeleted = personService.deletePersonById(id);

		redirectAttributes.addFlashAttribute("message", clientDeleted);
		redirectAttributes.addFlashAttribute("firstName", personDeleted.getFirstName());
		redirectAttributes.addFlashAttribute("lastName", personDeleted.getLastName());

		LOGGER.debug("Deleted %s %s", personDeleted.getFirstName(), personDeleted.getLastName());
		
		return "redirect:/clients";
	}

}
