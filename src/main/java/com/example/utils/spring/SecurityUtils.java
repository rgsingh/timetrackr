package com.example.utils.spring;

import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;

public class SecurityUtils {

   	// get security context from thread local
	private SecurityContext securityContext;
	
	public SecurityUtils() {

	}

	public void setSecurityContext(SecurityContext securityContext) {
	    this.securityContext = securityContext;	
	}

	public boolean hasRole(String role) {
		if (securityContext == null)
			return false;

		Authentication authentication = securityContext.getAuthentication();
		if (authentication == null)
			return false;

		Collection<? extends GrantedAuthority> authorities = authentication
				.getAuthorities();

		return authorities.contains(role);
	}

}
