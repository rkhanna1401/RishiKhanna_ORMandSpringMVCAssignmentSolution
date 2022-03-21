package com.gl.crm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Customer")
public class Customer {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;

	@Column(name="first_name")
	private String fname;


	@Column(name="last_name")
	private String lname;

	
	@Column(name="email")
	private String email;


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	public Customer(String fname, String lname, String email) {
		super();
		this.id = 0;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
	}


	public Customer() {
		// TODO Auto-generated constructor stub
	}


}
