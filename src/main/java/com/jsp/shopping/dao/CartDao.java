package com.jsp.shopping.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shopping.dto.Cart;

@Repository
public class CartDao {
	@Autowired
	EntityManagerFactory emf;

	public void saveCart(Cart Cart) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(Cart);
		et.commit();

	}

	public void updateCart(Cart c) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(c);
		et.commit();
	}

	public void deleteCartById(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Cart c = em.find(Cart.class, id);
		et.begin();
		em.remove(c);
		et.commit();
	}

	public Cart findCartById(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Cart c = em.find(Cart.class, id);
		if (c != null)
			return c;
		else
			return null;
	}
	public Cart removeAllItemFromCart(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Cart cart=em.find(Cart.class,id );
		cart.setItems(null);
		cart.setTotalprice(0);
		et.begin();
		em.merge(cart);
		et.commit();
		return cart;
	}
	public void removeItemFromCartById(int id) {
		
	}

}
