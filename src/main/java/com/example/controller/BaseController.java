package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.example.security.PrincipalIdentifier;
import com.example.utils.spring.SecurityUtils;

@Controller
public class BaseController implements PrincipalIdentifier {

	@Autowired
	private SecurityUtils securityUtils;

	@Override
	public boolean hasRole(String role) {
		return securityUtils.hasRole(role); 
	}	
	
}
