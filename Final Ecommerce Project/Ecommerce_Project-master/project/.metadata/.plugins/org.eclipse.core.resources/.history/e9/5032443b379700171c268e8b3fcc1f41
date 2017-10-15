package com.ecommerce2.ecommercebackend.DaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecommerce2.ecommercebackend.Dao.ProductDao;
 
import com.ecommerce2.ecommercebackend.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	public boolean insertProduct(Product product) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (Exception e) {
			return false;

		}
	}

	public boolean updateProduct(Product productupdate) {

		try {
			sessionFactory.getCurrentSession().update(productupdate);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

 	public Product getbyId(int id) {
				
		return (Product)sessionFactory.getCurrentSession().get(Product.class,id);
	}

	public boolean deleteProduct(Product productdelete) {
		// TODO Auto-generated method stub
		 try{
			 sessionFactory.getCurrentSession().delete(productdelete);
			 return true;
		 }
		 catch(Exception e){return false;}
	}

	public boolean getProduct(Product product) {
		// TODO Auto-generated method stub
		try{
			 sessionFactory.getCurrentSession().get(Product.class, 71);
			 return true;
		 }
		 catch(Exception e){return false;}
	}

	public List<Product> getAll() {
		// TODO Auto-generated method stub
		
			return sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		}

	}
	

