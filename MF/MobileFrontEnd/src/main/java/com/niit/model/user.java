package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.internal.NotNull;

@Entity
@Table
public class user {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;
	@NotNull
	@Column
	private String username;
	@NotNull
	@Column
	private String firstname;
	@NotNull
	@Column
	private String lastname;
	@NotNull
	@Column
	private String password;
	@NotNull
	@Column
	private String email;
	@NotNull
	@Column
	private String phoneno;
	@NotNull
	@Column
	private String address;
	
	/*
	@Column
	private String role="ROLE_USER";
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
	@Column
	private Boolean enabled=true;
	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	*/
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
		public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
