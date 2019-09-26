package com.lavish.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lavish.springdemo.entity.GymInfo;
import com.lavish.springdemo.service.GymInfoService;

@Controller
@RequestMapping("/gym")
public class GymInfoController {
	
	@Autowired
	private GymInfoService gymInfoService;
	
	// add initBinder to convert input stream 
	//  removing leading and tralling spaces
	// resolve issue for validation 
	@InitBinder
	public void  initBinder(WebDataBinder dataBinder)
	{
		StringTrimmerEditor stringTrimmerEditor=new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	@RequestMapping(path="/gymList",method=RequestMethod.GET)
	public String gymList(Model theModel)
	{
		List<GymInfo> thegymInfo=gymInfoService.getGymInfo();
		theModel.addAttribute("gyminfo",thegymInfo);
		return "gymInfo";
	}
	@RequestMapping(path="/addGymTrainner",method=RequestMethod.GET)
	public String addGymTrainner(Model theModel)
	{
		GymInfo gymInfo=new GymInfo();
		theModel.addAttribute("gym",gymInfo);
		return "addGymTrainner";
	}

}
