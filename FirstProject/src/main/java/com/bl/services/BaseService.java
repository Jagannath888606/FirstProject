package com.bl.services;

import com.bl.model.User;

public interface BaseService
{
	public boolean login(String username, String password);
	public User registration(User user);
	public boolean forgot(String username,String password);
	
}
