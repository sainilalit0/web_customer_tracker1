package com.lavish.springdemo.dao;

import java.util.List;

import com.lavish.springdemo.entity.Customer1;

public interface Customer1Dao {
	public List<Customer1> getCustomers();

	public void saveMember(Customer1 theCustomer);

	public Customer1 getCustomer(int theId);

	public void delete(int theId);

	public List<Customer1> getCustomersByPage(int pageNumber);

	public long getCustomersCount();
	




}
