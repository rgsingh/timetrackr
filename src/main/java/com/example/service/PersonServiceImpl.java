package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.example.dao.PersonDAO;
import com.example.model.Person;

@Service
@Transactional
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonDAO personDao;
    
    @Override	
	@Transactional
	public List<Person> getAllPeople() {
		return personDao.getAll();
	}

    @Override
	@Transactional
	public Person getPersonById(Integer personId) {
		return personDao.getById(personId);
	}

    @Override
    @Transactional
	public void savePerson(Person person) {
		personDao.save(person);
	}

    @Override
    @Transactional
	public Person deletePersonById(Integer personId) {
		Person personFromDb = getPersonById(personId);		
		personDao.delete(personFromDb);
		return personFromDb;
	}

    @Override
    @Transactional
	public void markPerson(Person person) {
		// TODO Auto-generated method stub

	}

}
