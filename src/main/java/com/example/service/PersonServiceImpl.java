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
	public void deletePersonById(Integer personId) {
		Person personFromDb = getPersonById(personId);
		personDao.delete(personFromDb);
	}

    @Override
    @Transactional
	public void markPerson(Person person) {
		// TODO Auto-generated method stub

	}
	/*
	 * @PersistenceContext(unitName="contactPU") EntityManager em;
	 * 
	 * public List<Person> listPeople() { CriteriaQuery<Person> c =
	 * em.getCriteriaBuilder().createQuery(Person.class); c.from(Person.class);
	 * return em.createQuery(c).getResultList(); }
	 * 
	 * public void addPerson(Person person) { em.persist(person); }
	 * 
	 * public void removePerson(Integer id) {
	 * em.remove(em.getReference(Person.class, id)); }
	 * 
	 * public void updatePerson(Person person) { Person updateablePerson =
	 * getPerson(person.getId()); if (null != updateablePerson) {
	 * updateablePerson.setFirstName(person.getFirstName());
	 * updateablePerson.setLastName(person.getLastName());
	 * updateablePerson.setSelected(true); em.persist(updateablePerson); } }
	 * 
	 * public Person getPerson(Integer id) { return em.find(Person.class, id); }
	 * 
	 * public void markPerson(Integer id) { Person updateablePerson =
	 * getPerson(id); if (null != updateablePerson) {
	 * updateablePerson.setSelected(true); em.persist(updateablePerson); }
	 * 
	 * }
	 */

}
