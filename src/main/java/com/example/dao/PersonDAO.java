package com.example.dao;

import java.util.List;

import com.example.model.Person;

public interface PersonDAO {

	public List<Person> getAll();

	public Person getById(int personId);

	public void save(Person person);

	public void delete(Person person);

}
