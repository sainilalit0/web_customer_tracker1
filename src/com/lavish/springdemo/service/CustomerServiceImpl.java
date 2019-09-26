package com.lavish.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lavish.springdemo.dao.CustomerDao;
import com.lavish.springdemo.entity.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		// TODO Auto-generated method stub
		return customerDao.getCustomers();
	}
	
	
	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		// TODO Auto-generated method 
		customerDao.saveCustomer(theCustomer);
		
	}


	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		// TODO Auto-generated method stub
		return customerDao.getCustomer(theId);
	}


	@Override
	@Transactional
	public void delete(int theId) {
		// TODO Auto-generated method stub
		customerDao.delete(theId);
		
	}

}
