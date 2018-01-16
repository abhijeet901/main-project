package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface Cartdao {
	public void addToCart(Cart cartitem);
	public List<Cart> getCartItems(String username);
	public void deleteCartItem(Cart cart);
	public Cart getCartItem(int citemid);
	public void updateCartItem(Cart cart);
}
