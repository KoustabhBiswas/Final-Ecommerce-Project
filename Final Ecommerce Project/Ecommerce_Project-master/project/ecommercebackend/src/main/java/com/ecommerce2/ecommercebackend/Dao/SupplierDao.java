package com.ecommerce2.ecommercebackend.Dao;

import com.ecommerce2.ecommercebackend.model.Supplier;

public interface SupplierDao {
	boolean insertSupplier(Supplier supplier);
	public Supplier getbyId(int id);
	boolean updateSupplier(Supplier supplier);
	boolean deleteSupplier(Supplier supplier);
	
}
