package com.ecommerce2.ecommercebackend.TestCase;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecommerce2.ecommercebackend.Dao.ProductDao;
import com.ecommerce2.ecommercebackend.model.Product;

public class productTest {
	@Autowired
	static AnnotationConfigApplicationContext context;
	@Autowired
	static ProductDao product1;
	@BeforeClass
	public static void init(){
		context = new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		product1= (ProductDao)context.getBean("product1");
	}

/*	@Test
	public void creatProduct(){
		Product product = new Product();
		product.setCompanyName("Samsung");
		product.setProductName("J7");
		product.setPrice(10000);
		product.setProductDescription("Super AMOLED capacitive touchscreen, 16M colors");
		product.setProductImage("J7 image");
		Assert.assertEquals(true, product1.insertProduct(product));
	}*/
	@Test
	public void updateProduct(){
		
		Product p=product1.getbyId(69);
		p.setCompany_name("Samsung J8");
		p.setProduct_name("J8");
		p.setProduct_description("sdfsd");
		p.setProduct_price(899);
		p.setProduct_image("khgc");
		Assert.assertEquals(true, product1.updateProduct(p));
	}
	
	/*@Test
	public void deleteProduct(){
		Product productdelete = product1.getbyId(5);
		Assert.assertEquals(true, product1.deleteProduct(productdelete));
	}*/
	/*@Test
	public void listAll(){
		Assert.assertEquals(3, product1.getAll().size());
	}*/
	
}
