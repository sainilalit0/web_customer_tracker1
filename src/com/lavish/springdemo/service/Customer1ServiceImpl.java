package com.lavish.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lavish.springdemo.dao.Customer1Dao;
import com.lavish.springdemo.entity.Customer1;

@Service
public class Customer1ServiceImpl implements Customer1Service {

	@Autowired
	private Customer1Dao customer1Dao;
	@Override
	@Transactional
	public List<Customer1> getCustomers() {
		// TODO Auto-generated method stub
		return customer1Dao.getCustomers();
	}
	@Override
	@Transactional
	public void saveMember(Customer1 theCustomer) {
		// TODO Auto-generated method stub
		 customer1Dao.saveMember(theCustomer);
		
	}
	@Override
	@Transactional
	public Customer1 getCustomer(int theId) {
		// TODO Auto-generated method stub
		return customer1Dao.getCustomer(theId);
	}
	@Override
	@Transactional
	public void delete(int theId) {
		// TODO Auto-generated method stub
		customer1Dao.delete(theId);
		
	}
	@Override
	@Transactional
	public List<Customer1> getCustomersByPage(int pageNumber) {
		List<Customer1> customers = customer1Dao.getCustomersByPage(pageNumber);
		return customers;
	}

	@Override
	@Transactional
	public long getCustomersCount() {
		long count = customer1Dao.getCustomersCount();
		return count;
	}
	
}
