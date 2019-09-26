package com.lavish.springdemo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lavish.springdemo.entity.Customer;
@SuppressWarnings("deprecation")
@Repository
public class CustomerImplDao implements CustomerDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	
	public List<Customer> getCustomers() {
		// get the current hiernate session
		Session session=sessionFactory.getCurrentSession();
		// create a query 
		Query<Customer> theQuery=session.createQuery(" from Customer order by lastName",Customer.class);
		//excute query and get result 
		List<Customer> customers=theQuery.getResultList();
		
		// return result 
		return customers;
	}


	@Override
	public void saveCustomer(Customer theCustomer) {
		//get the current hibernate session
		Session session=sessionFactory.getCurrentSession();
		// save the customer
		session.saveOrUpdate(theCustomer);
		
	}


	@Override
	public Customer getCustomer(int theId) {
		// get the current hibernate Session 
		Session session =sessionFactory.getCurrentSession();
		// now retrive/read from database using primary key
		Customer theCustomer=session.get(Customer.class, theId);
		return theCustomer;
	}


	@Override
	
	public void delete(int theId) {
		// get the current hibernate session 
		Session session=sessionFactory.getCurrentSession();
		// delete the Object with primary key
		Query theQuery=session.createQuery("delete from Customer where id=:customerId");
		// now i Going to delete the customerid
		theQuery.setParameter("customerId", theId);
		theQuery.executeUpdate();
		
		
//		// get the current hibernate session
//				Session currentSession = sessionFactory.getCurrentSession();
//				
//				// delete object with primary key
//				Query theQuery = 
//						currentSession.createQuery("delete from Customer where id=:customerId");
//				theQuery.setParameter("customerId", theId);
//				
//				theQuery.executeUpdate();	
	}

}
