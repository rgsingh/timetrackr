package com.example.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.example.dao.PersonDAO;
import com.example.model.Person;

@Repository
public class JpaPersonDAO implements PersonDAO {

    @PersistenceContext(unitName="contactPU") 
    EntityManager em;

    @Override
    public Person getById(int personId) {
//        return em.find(Person.class, personId);
    	return em.getReference(Person.class, personId);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Person> getAll() {
        return em.createNamedQuery("Person.findAll").getResultList();
    }

    @Override
    public void save(Person person) {
        em.persist(getContainedOrMerged(person));
    }

    @Override
    public void delete(Person person) {
    	em.remove(getContainedOrMerged(person));
    }
    
    private Person getContainedOrMerged(Person person){
    	return em.contains(person) ? person : em.merge(person);
    }
}
