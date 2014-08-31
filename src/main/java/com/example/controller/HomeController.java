package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {
	private final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/", "index"})
	public ModelAndView mainPage() {
		LOGGER.debug("forwarded to secure/welcome");
		return new ModelAndView("secure/welcome");
	}

}