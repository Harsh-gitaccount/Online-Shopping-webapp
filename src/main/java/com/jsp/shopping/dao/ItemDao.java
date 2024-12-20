package com.jsp.shopping.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shopping.dto.Item;

@Repository
public class ItemDao {
@Autowired
EntityManagerFactory emf;

public void SaveItem(Item item) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	et.begin();
	em.persist(item);
	et.commit();
}

public void updateItem(Item item) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	et.begin();
	em.merge(item);
	et.commit();
}
public void deleteItemById(int id) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	Item item=em.find(Item.class, id);
	et.begin();
	em.remove(item);
	et.commit();
}
public Item findItemById(int id) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	Item item=em.find(Item.class, id);
	if(item!=null) {
		return item;
	}
	else {
		return null;
	}
}
}
