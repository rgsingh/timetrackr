package com.example.security;

import org.springframework.security.core.GrantedAuthority;

public enum TimeTrackrAuthority implements GrantedAuthority {
    ROLE_USER, ROLE_ADMIN;
 
    @Override
    public String getAuthority() {
        return toString();
    }
}