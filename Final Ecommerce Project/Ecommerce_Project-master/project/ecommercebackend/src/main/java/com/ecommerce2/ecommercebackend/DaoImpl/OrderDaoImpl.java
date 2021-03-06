package com.ecommerce2.ecommercebackend.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecommerce2.ecommercebackend.Dao.OrderDao;
import com.ecommerce2.ecommercebackend.model.Order;
@Repository("orderdao")
@Transactional
public class OrderDaoImpl implements OrderDao{
	@Autowired
	SessionFactory sessionFactory;

	public boolean insert(Order order) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().save(order);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	public boolean update(Order order) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().update(order);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	public boolean delete(Order order) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().delete(order);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	public List<Order> getByUser(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String hql = "from  Order WHERE user_userid = :userid";
		List<Order> order =   session.createQuery(hql).setParameter("userid", id).getResultList();
		 
		return order;
	}

	public Order getById(int id) {
		// TODO Auto-generated method stub
		return (Order)sessionFactory.getCurrentSession().get(Order.class, id);
	}

}
