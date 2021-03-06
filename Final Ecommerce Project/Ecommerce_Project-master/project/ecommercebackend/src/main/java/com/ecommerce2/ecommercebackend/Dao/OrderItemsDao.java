package com.ecommerce2.ecommercebackend.Dao;

import java.util.List;

import com.ecommerce2.ecommercebackend.model.OrderItem;
 
public interface OrderItemsDao {
	boolean insert(OrderItem orderItem);
	boolean update(OrderItem orderItem);
	boolean delete(OrderItem orderItem);
	List<OrderItem> getAllByOrderedId(int id);

}
