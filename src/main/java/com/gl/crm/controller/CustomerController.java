package com.gl.crm.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.crm.dao.CustomerDaoImplementation;
import com.gl.crm.entity.Customer;


@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerDaoImplementation customerService;


	@RequestMapping("/print")
	public String listCustomer(Model theModel) {
		List<Customer> ct = customerService.findAll();

		// add to the spring model
		theModel.addAttribute("customer", ct);

		return "main-page";
	}

	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		Customer ct = new Customer();
		theModel.addAttribute("customer", ct);

		return "Customer-form";
	}

	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("id") int id,
			Model theModel) {

		Customer ct = customerService.findById(id);

		theModel.addAttribute("customer", ct);

		return "Customer-form";			
	}


	@PostMapping("/save")
	public String saveCustomerRecord(@RequestParam("id") int id,@RequestParam("fname") String fname,
			@RequestParam("lname") String lname,@RequestParam("email") String email) {

		Customer ct = new Customer();
		if(id!=0)
		{
			ct=customerService.findById(id);
			ct.setFname(fname);
			ct.setLname(lname);
			ct.setEmail(email);
		}
		else {
		ct=new Customer(fname, lname, email);
		customerService.save(ct);
		}
		// use a redirect to prevent duplicate submissions
		return "redirect:/customer/print";

	}


	@RequestMapping("/delete")
	public String delete(@RequestParam("id")int id) {

			customerService.deleteById(id);

		// redirect to /Books/list
		return "redirect:/customer/print";

	}

	@RequestMapping("/list")
	public String back() {
		return "redirect:/customer/print";
	}
	

}
