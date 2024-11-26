package com.jsp.shoppingcart.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shopping.dao.CustomerDao;
import com.jsp.shopping.dto.Customer;

@Controller
public class CustomerController {
	 @Autowired
	   CustomerDao dao;
		@RequestMapping("/addcustomer")
		 public ModelAndView addCustomer() {
			Customer c=new Customer();
			ModelAndView mav=new ModelAndView();
			mav.addObject("customerob",c);
			mav.setViewName("customerform");
			
			return mav;
		 }
		@RequestMapping("/savecustomer")
		 public ModelAndView saveCustomer(@ModelAttribute("customerob")Customer c) {
			dao.saveCustomer(c);
			ModelAndView mav=new ModelAndView();
			mav.addObject("message","data saved sucessfully");
			mav.setViewName("CustomerMenu");
			return mav;
		 }
		@RequestMapping("/customerlogin")
		public ModelAndView  login(ServletRequest req,HttpSession session) {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			Customer c=dao.login(email,password);
			ModelAndView mav=new ModelAndView();
			if(c!=null) {
				mav.addObject("msgg","sucessfully logged in");
				mav.setViewName("customeroptions");
				session.setAttribute("customerinfo", c);
				return mav;
			} else {
				mav.addObject("msgg","invalid credentials");
				mav.setViewName("customerloginform");
				return mav;
			}
			
		}
}
