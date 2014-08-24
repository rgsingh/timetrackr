package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {

	@RequestMapping(value = "/")
	public ModelAndView mainPage() {
		return new ModelAndView("secure/welcome");
	}

	@RequestMapping(value = "/index")
	public ModelAndView indexPage() {
		return new ModelAndView("secure/welcome");
	}
}