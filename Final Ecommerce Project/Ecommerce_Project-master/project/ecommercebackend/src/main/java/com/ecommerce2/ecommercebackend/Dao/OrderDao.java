package com.ecommerce2.ecommercebackend.Dao;

import java.util.List;

import com.ecommerce2.ecommercebackend.model.Order;

public interface OrderDao {
	boolean insert(Order order);
	boolean update(Order order);
	boolean delete(Order order);
	Order getById(int id);
	List<Order> getByUser(int id);

}
