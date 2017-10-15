package com.ecommerce2.ecommercebackend.TestCase;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.ecommerce2.ecommercebackend.DBConfig.*;
import com.ecommerce2.ecommercebackend.Dao.*;
import  com.ecommerce2.ecommercebackend.model.*;
public class userTest {
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static UserDao userdao;
	@BeforeClass
	public static void init(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		userdao= (UserDao)context.getBean("userdao");
	}
/*	@Test
	public void createUser()
	{
		User user=new User();
		user.setUserName("ABC");
		user.setEmailId("abc@g.c");
		user.setContactNo("9801907856");
		user.setRole("Customer");
		 
		Assert.assertEquals(true,userdao.insertUser(user));
	}*/
}
