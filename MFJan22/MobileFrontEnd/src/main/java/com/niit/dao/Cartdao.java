package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface Cartdao {

	public void addToCart(Cart cartitem);
	public Cart getCartItem(int cartid);
	public List<Cart> getCartItems(String username);
	public void deleteCartItem(Cart cart);
	public void updateCartItem(Cart cart);
	
}
