package com.example.service;


import java.util.List;

import com.example.model.Person;

public interface PersonService {
    
    public void markPerson(Person person);
	public void deletePersonById(Integer personId);
	public void savePerson(Person person);
	public Person getPersonById(Integer personId);
	public List<Person> getAllPeople();
    
}
