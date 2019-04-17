package com.bl.base;

import com.bl.model.User;

public interface BaseDao 
{
	public boolean login(String username,String password);
	public User register(User user);
	public boolean forgot(String username,String password);
}
