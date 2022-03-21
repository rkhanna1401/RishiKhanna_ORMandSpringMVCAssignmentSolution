package com.gl.crm.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gl.crm.entity.Customer;

@Service
public interface ICustomerDao {
	
	public List<Customer> findAll();
	
	public Customer findByEmail(String email);
	
	public void update(Customer c);

	public void save(Customer c);

	public Customer delete(String email);

	public Customer findById(int id);

	public void deleteById(int id);


}
