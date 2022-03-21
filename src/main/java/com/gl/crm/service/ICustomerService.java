package com.gl.crm.service;

import java.util.List;
import com.gl.crm.entity.Customer;

public interface ICustomerService {

public List<Customer> findAll();
	
	public Customer findByEmail(String email);
	
	public void update(Customer c);

	public void save(Customer c);

	public Customer delete(String email);

	public Customer findById(int id);

	public void deleteById(int id);

}
