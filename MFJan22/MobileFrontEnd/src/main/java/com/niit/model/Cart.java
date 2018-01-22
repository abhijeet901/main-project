package com.niit.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Cart {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int cartid;
	@Column
	
	private String proname;
@Column
	private int proid;

	@Column
	private int proquantity;
	@Column
	private int proprize;
	@Column
	private String supid;
	@Column
	private String catid;
	@Column
	private String Username;
	@Column
	private boolean ordered;
	public boolean isOrdered() {
		return ordered;
	}
	public void setOrdered(boolean ordered) {
		this.ordered = ordered;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public int getProquantity() {
		return proquantity;
	}
	public void setProquantity(int proquantity) {
		this.proquantity = proquantity;
	}
	public int getProprize() {
		return proprize;
	}
	public void setProprize(int proprize) {
		this.proprize = proprize;
	}
	public String getSupid() {
		return supid;
	}
	public void setSupid(String supid) {
		this.supid = supid;
	}
	public String getCatid() {
		return catid;
	}
	public void setCatid(String catid) {
		this.catid = catid;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getProid() {
	return proid;
}
public void setProid(int proid) {
	this.proid = proid;
}
	
	
	
	
	
}