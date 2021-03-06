package com.ecommerce2.ecommercebackend.Dao;

import java.util.List;

import com.ecommerce2.ecommercebackend.model.Address;

public interface AddressDao {
	boolean insertAddress(Address address);
	boolean deleteAddress(Address address);
	Address getById(int id);
	List<Address> getByUser(int id);
}
