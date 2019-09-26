package com.lavish.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.lavish.springdemo.entity.Customer1;
@SuppressWarnings("deprecation")
@Repository("Customer1Dao")
public class Customer1ImplDao implements Customer1Dao{

	@Autowired
	private SessionFactory sessionFactory;

	// inject page size from props	
	@Value("${pageSize:5}")
	private int pageSize;
	@Override
	@Transactional
	public List<Customer1> getCustomers() {
		// get the current hiernate session
				Session session=sessionFactory.getCurrentSession();
				// create a query 
				Query<Customer1> theQuery=session.createQuery(" from Customer1 ",Customer1 .class);
				//excute query and get result 
				List<Customer1> customers=theQuery.getResultList();
				
				// return result 
				return customers;
	}

	@Override
	public void saveMember(Customer1 theCustomer) {
		// TODO Auto-generated method stub
		// get the current session hibernate session 
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(theCustomer);
		
	}

	@Override
	public Customer1 getCustomer(int theId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Customer1 theCustomer=session.get(Customer1.class, theId);
		return theCustomer;
	}

	@Override
	public void delete(int theId) {
		// get the current hibernate session 
				Session session=sessionFactory.getCurrentSession();
				// delete the Object with primary key
				Query<Customer1> theQuery=session.createQuery("delete from Customer1 where id=:customerId");
				// now i Going to delete the customerid
				theQuery.setParameter("customerId", theId);
				theQuery.executeUpdate();
		
	}

	@Override
	public List<Customer1> getCustomersByPage(int pageNumber) {
		
		Session currentSession = sessionFactory.getCurrentSession();

		Query<Customer1> query = currentSession.createQuery("from Customer1 order by lastName", Customer1.class);
		query.setFirstResult((pageNumber-1) * pageSize);
		query.setMaxResults(pageSize);
		
		List<Customer1> customers = query.getResultList();
		
		return customers;
	}

	@Override
	public long getCustomersCount() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Long> countQuery = currentSession.createQuery("select count(1) from Customer", Long.class);
		long count = countQuery.getSingleResult().longValue();
		
		return count;
	}


	
	
	
	
}
