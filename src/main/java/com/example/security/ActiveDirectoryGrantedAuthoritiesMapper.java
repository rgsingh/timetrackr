package com.example.security;

import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.mapping.GrantedAuthoritiesMapper;

public class ActiveDirectoryGrantedAuthoritiesMapper implements
		GrantedAuthoritiesMapper {
	private static final String ROLE_NORMAL_USER = "Normal User";
	private static final String ROLE_ADMIN = "Administrator";

	public ActiveDirectoryGrantedAuthoritiesMapper() {
	}

	@Override
	public Collection<? extends GrantedAuthority> mapAuthorities(
			Collection<? extends GrantedAuthority> authorities) {
		Set<TimeTrackrAuthority> roles = EnumSet
				.noneOf(TimeTrackrAuthority.class);

		for (GrantedAuthority authority : authorities) {
			if (ROLE_NORMAL_USER.equalsIgnoreCase(authority.getAuthority())) {
				roles.add(TimeTrackrAuthority.ROLE_USER);
			} else if (ROLE_ADMIN.equalsIgnoreCase(authority.getAuthority())) {
				roles.add(TimeTrackrAuthority.ROLE_ADMIN);
			}
		}

		return roles;
	}
}