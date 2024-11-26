package com.jsp.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shopping.dao.CartDao;
import com.jsp.shopping.dao.CustomerDao;
import com.jsp.shopping.dto.Cart;
import com.jsp.shopping.dto.Customer;
import com.jsp.shopping.dto.Item;


@Controller
public class CartController {
	@Autowired
	CartDao dao;
	
	@Autowired
	CustomerDao custdao;
	
	@RequestMapping("/fetchitemsfromcart")
	public ModelAndView fetchItemsFromCart(HttpSession session) {
		Customer c=(Customer)session.getAttribute("customerinfo");
		
		Customer customer=custdao.findCustomerById(c.getId());
		Cart cart=customer.getCart();
		List<Item> items=cart.getItems();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("itemlist", items);
		mav.addObject("totalprice", cart.getTotalprice());
		mav.setViewName("displaycartitemstocustomer");
		
	   return mav;
	}


}
