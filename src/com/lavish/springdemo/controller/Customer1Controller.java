package com.lavish.springdemo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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

import com.lavish.springdemo.entity.Customer1;
import com.lavish.springdemo.service.Customer1Service;


@Controller
@RequestMapping("/customerGym")
public class Customer1Controller {

	@Autowired
	private Customer1Service customer1Service;
	// inject page size from props ... default to 10	
	@Value("${pageSize:5}")
	private int pageSize;
	
	// add initBinder to convert input stream 
		//  removing leading and tralling spaces
		// resolve issue for validation 
		@InitBinder
		public void  initBinder(WebDataBinder dataBinder)
		{
			StringTrimmerEditor stringTrimmerEditor=new StringTrimmerEditor(true);
			dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
		}
	@RequestMapping("/list")
	public String listCustomers(@RequestParam(name="pageNumber", required=false, defaultValue = "1") int pageNumber,Model theModel) {
		
		long totalCustomerCount = customer1Service.getCustomersCount();

		int totalPages = (int) Math.floor(totalCustomerCount / pageSize);
		
		if ( (totalCustomerCount % pageSize) > 0) {
			totalPages++;
		}
		
		System.out.println("pageNumber=" + pageNumber);
		// get the customer from dao
		List<Customer1> theCustomers=customer1Service.getCustomersByPage(pageNumber);
		// add the customer to the model
		theModel.addAttribute("customers",theCustomers);
		// add data for pagination support
		theModel.addAttribute("totalCustomerCount", totalCustomerCount);
		theModel.addAttribute("currentPage", pageNumber);
		theModel.addAttribute("totalPages", totalPages);
		theModel.addAttribute("pageSize", pageSize);
		return "list-customers1";
	}
	
	@RequestMapping(path="/addGymMember",method=RequestMethod.GET)
	public String addGymMember(Model theModel)
	{
		Customer1 theCustomer=new Customer1();
		theModel.addAttribute("customer",theCustomer);
		return "addGymMember";
	}
	
	@RequestMapping(path="/saveMember",method=RequestMethod.POST)
	public String saveMember(@Valid @ModelAttribute("customer") Customer1 theCustomer,BindingResult bindingResult)
	{
		// save the customer using our service 
		if(bindingResult.hasErrors())
		{
			return "addGymMember";
		}
		else
		{
		customer1Service.saveMember(theCustomer);
		return "redirect:/customerGym/list";
		}
	}
	@RequestMapping(path="/showFormForUpdate",method=RequestMethod.GET)
	public String showFormForUpdate(@RequestParam("customerId") int theId,Model theModel) {
		
		// get the customer from database
		Customer1 theCustomer=customer1Service.getCustomer(theId);
		//set customer as a model attribute to pre-populate the form 
		theModel.addAttribute("customer",theCustomer);
		// send over to our form 
		return "addGymMember";
	}
	@RequestMapping(path="/deleteMember",method=RequestMethod.GET)
	public String deleteMember(@RequestParam("customerId") int theId)
	{
		customer1Service.delete(theId);
		return "redirect:/customerGym/list";
	}
	@RequestMapping(path="/about")
	public String about(Model theModel)
	{
		return "about-us";
	}
	@RequestMapping(path="/contact")
	public String contact(Model theModel)
	{
		return "contact";
	}
	@RequestMapping(path="/service")
	public String service(Model theModel)
	{
		return "service";
	}
	@RequestMapping(path="/blog")
	public String blog(Model theModel)
	{
		return "blog";
	}

}
