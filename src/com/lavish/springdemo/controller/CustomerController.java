package com.lavish.springdemo.controller;

import java.util.List;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lavish.springdemo.entity.Customer;
import com.lavish.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// inject the our customerService 
	@Autowired
	private CustomerService customerService;
	
	// add initBinder to convert input stream 
	//  removing leading and tralling spaces
	// resolve issue for validation 
	@InitBinder
	public void  initBinder(WebDataBinder dataBinder)
	{
		StringTrimmerEditor stringTrimmerEditor=new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@RequestMapping(path="/listCustomers",method=RequestMethod.GET)
	public String listCustomers(Model theModel) {		
		// get the customer from dao
		List<Customer> theCustomers=customerService.getCustomers();
		// add the customer to the model
		theModel.addAttribute("customers",theCustomers);
		return "list-customers";
	}
	
	
	@RequestMapping(path="/showFormForAdd", method=RequestMethod.GET)
	public String showFormForAdd(Model theModel)
	{
		Customer theCustomer=new Customer();		
		theModel.addAttribute("customer",theCustomer);
		
		return "customer-form";
	}
	
	@RequestMapping(path="/saveCustomer",method=RequestMethod.POST)
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer theCustomer,BindingResult theBindingResult)
	{
		// save the customer using our service
		if(theBindingResult.hasErrors())
		{
			return "customer-form";
		}
		else {
		customerService.saveCustomer(theCustomer);
		return "redirect:/customer/listCustomers";
		}
	}
	@RequestMapping(path="/showFormForUpdate",method=RequestMethod.GET)
	public String showFormForUpdate(@RequestParam("customerId") int theId,Model theModel) {
		
		// get the customer from database
		Customer theCustomer=customerService.getCustomer(theId);
		//set customer as a model attribute to pre-populate the form 
		theModel.addAttribute("customer",theCustomer);
		// send over to our form 
		return "customer-form";
	}
	@RequestMapping(path="/delete",method=RequestMethod.GET)
	public String deleteCustomer(@RequestParam("customerId") int theId)
	{
		// delete the customer 
		customerService.delete(theId);
		return "redirect:/customer/listCustomers";
	}
}