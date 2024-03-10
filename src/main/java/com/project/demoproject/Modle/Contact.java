package com.project.demoproject.Modle;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Contact {

	private String name;
	private String address;
	@Id
	private String email;
	private String message;
	
	public Contact(String name, String address, String email, String message) {
		super();
		this.name = name;
		this.address = address;
		this.email = email;
		this.message = message;
	}

	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Contact [name=" + name + ", address=" + address + ", email=" + email + ", message=" + message + "]";
	}
	
	
	
	
	
	
}
