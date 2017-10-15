package com.ecommerce2.ecommercebackend.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecommerce2.ecommercebackend.Dao.SupplierDao;
import com.ecommerce2.ecommercebackend.model.Supplier;

public class SupplierTest {
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static SupplierDao supplier1;
	@BeforeClass
	public static void init(){
		context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		supplier1= (SupplierDao)context.getBean("supplier1");
		}
	/*@Test
	public void createSupplier(){
		Supplier supplier = new Supplier();
		supplier.setSupplierName("Samsung");
		supplier.setSupplierAddress("Bangaluru");
		Assert.assertEquals(true, supplier1.insertSupplier(supplier));
	}*/
	/*@Test
	public void updateSupplier(){
		Supplier supplier = supplier1.getbyId(37);
		supplier.setSupplierAddress("Kolkata");
		supplier.setSupplierName("HTC");
		Assert.assertEquals(true, supplier1.updateSupplier(supplier));
	}*/
	
	@Test
	public void deleteSupplier(){
		Supplier supplier = supplier1.getbyId(37);
		 
		Assert.assertEquals(true, supplier1.deleteSupplier(supplier));
	}
	
}
