package com.ecommerce2.ecommercebackend.TestCase;

import java.util.List;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecommerce2.ecommercebackend.Dao.AddressDao;
import com.ecommerce2.ecommercebackend.Dao.UserDao;
import com.ecommerce2.ecommercebackend.model.Address;
import com.ecommerce2.ecommercebackend.model.User;

public class AddressTestCase {
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static AddressDao addressDao;
	@Autowired
	static UserDao userdao;
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		addressDao = (AddressDao) context.getBean("addressDao");
		userdao = (UserDao) context.getBean("userdao");
	}
	@Test
	public void insert(){
		Address address =new Address();
		User user = userdao.getById(61);
		address.setShippingAddress("21/1, Sahid Sunil Sen Sarani kolkata-700028");
		address.setUser(user);
		List<Address> addr = addressDao.getByUser(61);
		for(Address i : addr){
		System.out.println(i.getShippingAddress());
		}
		Assert.assertEquals(true, addressDao.insertAddress(address));
	}

	
}
