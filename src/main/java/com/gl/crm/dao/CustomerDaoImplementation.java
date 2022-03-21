package com.gl.crm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.gl.crm.entity.Customer;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

@Repository
public class CustomerDaoImplementation implements ICustomerDao{

	private SessionFactory sessionFactory;
	// create session
	private Session session;

	@Autowired
	CustomerDaoImplementation(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
	}


	@Transactional
	@Override
	public void update(Customer c) {
		Transaction tx = session.beginTransaction();

		// save transaction
		session.saveOrUpdate(c);


		tx.commit();
	}
	@Transactional
	@Override
	public void save(Customer c) {
		Transaction tx = session.beginTransaction();

		// save transaction
		session.saveOrUpdate(c);


		tx.commit();

	}
	@Transactional
	@Override
	public Customer delete(String email) {
		Customer ct  = new Customer();
		Transaction tx = session.beginTransaction();
		ct = session.get(Customer.class, email);
		tx.commit();
		return ct;
	}
	@Transactional
	@Override
	public List<Customer> findAll() {
		Transaction tx = session.beginTransaction();

		// find all the records from the database table
		@SuppressWarnings("unchecked")
		List<Customer> ct = session.createQuery("from Customer").list();

		tx.commit();

		return ct;
	}
	@Transactional
	@Override
	public Customer findByEmail(String email) {
		Customer ct  = new Customer();
		Transaction tx = session.beginTransaction();

		// find record with Id from the database table
		ct = session.get(Customer.class, email);

		tx.commit();


		return ct;
	}


	@Transactional
	@Override
	public Customer findById(int id) {
		Customer ct  = new Customer();
		Transaction tx = session.beginTransaction();

		// find record with Id from the database table
		ct = session.get(Customer.class, id);

		tx.commit();


		return ct;
	}

	@Transactional
	@Override
	public void deleteById(int id) {
		
			Transaction tx = session.beginTransaction();

			// get transaction
			Customer ct  = session.get(Customer.class, id);

			// delete record
			session.delete(ct);

			tx.commit();

		}
		
	}

