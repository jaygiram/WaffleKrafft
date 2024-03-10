package com.project.demoproject.controller;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.project.demoproject.Modle.Contact;
import com.project.demoproject.Modle.Login;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

@Controller
public class controller {
	
	@Autowired
	SessionFactory sf;
	
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	
	@RequestMapping("uservalidlogin")
	public String validlogin(Login login) {
	    try (Session session = sf.openSession()) {
	        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
	        CriteriaQuery<Login> criteriaQuery = criteriaBuilder.createQuery(Login.class);
	        Root<Login> root = criteriaQuery.from(Login.class);
	        
	        // Assuming 'username' is a unique identifier for a user
	        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("username"), login.getUsername()));
	        
	        Query<Login> query = session.createQuery(criteriaQuery);
	        Login dbLogin = query.uniqueResult();

	        String page = "login";

	        if (dbLogin != null && dbLogin.getPassword().equals(login.getPassword())) {
	            page = "home";
	        }

	        return page;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "error"; // Handle exceptions appropriately
	    }
	}

	

	@RequestMapping("adminvalidlogin")
	public String adminvalidlogin(Login login) {
	Session s=sf.openSession();
	Login dlogin=s.get(Login.class,login.getPassword());
	
	String page="login";
	
	if(dlogin!=null)
	{if (dlogin.equals(dlogin)) 
		 page="home";
	
	}	
	return page;
	}

	@RequestMapping("loginpage")
	public String loginpage() {
		return "login";
	}
	
	
	@RequestMapping("homepage")
	public String homepage() {
		return "home";
	}
	

	@RequestMapping("contactpage")
	public String contactpage() {
		return "contact";
		
	}

	@RequestMapping("contactdata")
	public String contactdata(Contact contact) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(contact);
		t.commit();
		return "contact";
		
	}
	
	@RequestMapping("createaccountpage")
	public String createaccountpage() {
		return "createaccount";
	}
	
	
	@RequestMapping("createaccountdata")
	public String contactdata(Login login) {
		Session s=sf.openSession();
		Transaction t=s.beginTransaction();
		s.save(login);
		t.commit();
		return "login";
		
	}


	@RequestMapping("servicepage")
	public String servicepage() {
		return "service";
	}
	
	@RequestMapping("aboutpage")
	public String aboutpage() {
		return "about";
	}
	
	@RequestMapping("productpage")
	public String productpage() {
		return "product";
	}
	
	

}
