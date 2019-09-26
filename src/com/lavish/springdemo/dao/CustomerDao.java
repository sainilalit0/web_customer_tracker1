package com.lavish.springdemo.dao;

import java.util.List;

import com.lavish.springdemo.entity.Customer;

public interface CustomerDao {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void delete(int theId);

}
