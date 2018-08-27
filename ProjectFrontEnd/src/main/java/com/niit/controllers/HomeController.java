package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController 
{
	public HomeController(){
		System.out.println("HomeController bean is instantiated");
	}
	
	@RequestMapping(value="/home")
	public String homePage()
	{
		return "home";
	}
	@RequestMapping(value="/aboutus")
	public String aboutUsPage(){
		return "aboutUs";
	}

}
