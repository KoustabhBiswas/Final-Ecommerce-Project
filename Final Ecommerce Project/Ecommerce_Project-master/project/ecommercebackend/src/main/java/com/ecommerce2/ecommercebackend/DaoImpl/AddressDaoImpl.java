package com.ecommerce2.ecommercebackend.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecommerce2.ecommercebackend.Dao.AddressDao;
import com.ecommerce2.ecommercebackend.model.Address;
import com.ecommerce2.ecommercebackend.model.User;
@Repository("addressDao")
@Transactional
public class AddressDaoImpl implements AddressDao{
	@Autowired
	SessionFactory sessionFactory;

	public boolean insertAddress(Address address) {
		// TODO Auto-generated method stub
		 try{
			 sessionFactory.getCurrentSession().save(address);
			 return true;
		 }catch(Exception e){
			 return false;
		 }
	}

	public boolean deleteAddress(Address address) {
		// TODO Auto-generated method stub
		 try{
			 sessionFactory.getCurrentSession().delete(address);
			 return true;
		 }catch(Exception e){
			 return false;
		 }
	}

	public Address getById(int id) {
		// TODO Auto-generated method stub
		return (Address)sessionFactory.getCurrentSession().get(Address.class, id);
	}

	public List<Address> getByUser(int name) {
		// TODO Auto-generated method stub
		
		//Session session=sessionFactory.getCurrentSession();
		String hql = "from Address WHERE user_userid = :username";
		List<Address> list = sessionFactory.getCurrentSession().createQuery(hql).setParameter("username", name).getResultList();
		return list;
	}
	

}
