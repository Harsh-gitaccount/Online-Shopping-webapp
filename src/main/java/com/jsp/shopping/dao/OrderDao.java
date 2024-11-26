package com.jsp.shopping.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shopping.dto.Orders;

@Repository
public class OrderDao {
	@Autowired
	EntityManagerFactory emf;

	public void SaveOrders(Orders orders) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.persist(orders);
		et.commit();
	}

	public void updateOrders(Orders orders) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(orders);
		et.commit();
	}
	public void deleteOrdersById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		Orders order=em.find(Orders.class, id);
		et.begin();
		em.remove(order);
		et.commit();
	}
	public Orders findOrdersById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		Orders order=em.find(Orders.class, id);
		if(order!=null) {
			return order;
		}
		else {
			return null;
		}
	}
}
