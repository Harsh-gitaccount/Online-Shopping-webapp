package com.jsp.shoppingcart.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shopping.dao.MerchantDao;
import com.jsp.shopping.dto.Merchant;
import org.springframework.transaction.annotation.Transactional;
import javax.persistence.PessimisticLockException;

@Controller
public class MerchantController {
   @Autowired
   MerchantDao dao;
	@RequestMapping("/addmerchant")
	 public ModelAndView addMerchant() {
		Merchant m=new Merchant();
		ModelAndView mav=new ModelAndView();
		mav.addObject("merchantobj",m);
		mav.setViewName("merchantform");
		
		return mav;
	 }
/*	@RequestMapping("/savemerchant")
	 public ModelAndView saveMerchant(@ModelAttribute("merchantobj")Merchant m) {
		dao.saveMerchant(m);
		ModelAndView mav=new ModelAndView();
		mav.addObject("message","data saved sucessfully");
		mav.setViewName("menu");
		return mav;
	 } */
	
	@RequestMapping("/savemerchant")
    @Transactional
    public ModelAndView saveMerchant(@ModelAttribute("merchantobj") Merchant m) {
        ModelAndView mav = new ModelAndView();
        int retries = 3; // Number of retries for saving the merchant

        while (retries > 0) {
            try {
                dao.saveMerchant(m); // Attempt to save the merchant
                mav.addObject("message", "Data saved successfully");
                mav.setViewName("menu");
                return mav;
            } catch (PessimisticLockException e) {
                retries--;
                if (retries == 0) {
                    mav.addObject("message", "Could not save data due to lock wait timeout. Please try again later.");
                    mav.setViewName("error"); // Redirect to an error page or view
                    return mav;
                }
                try {
                    Thread.sleep(1000); // Wait before retrying
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt(); // Restore interrupted status
                    mav.addObject("message", "An unexpected error occurred. Please try again.");
                    mav.setViewName("error");
                    return mav;
                }
            }
        }

        // In case of an unexpected error
        mav.addObject("message", "An unexpected error occurred. Please try again.");
        mav.setViewName("error");
        return mav;
    }
	@RequestMapping("/loginvalidation")
	public ModelAndView  login(ServletRequest req,HttpSession session) {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Merchant m=dao.login(email,password);
		ModelAndView mav=new ModelAndView();
		if(m!=null) {
			mav.addObject("msg", "sucessfully loged in");
			mav.setViewName("merchantoptions");
			session.setAttribute("merchantinfo", m);
			return mav;
		} else {
			mav.addObject("msg","invalid credentials");
			mav.setViewName("merchantloginform");
			return mav;
		}
		
	}
} 





