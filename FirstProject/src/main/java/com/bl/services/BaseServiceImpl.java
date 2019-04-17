package com.bl.services;

import com.bl.base.BaseDao;
import com.bl.base.BaseDaoImpl;
import com.bl.model.User;

public class BaseServiceImpl implements BaseService
{
	private BaseDao loginDao=new BaseDaoImpl();

	public boolean login(String username,String password)
	{
	return loginDao.login(username,password);
	}

	public User registration(User user)
	{
	return loginDao.register(user);
	
	}

	public boolean forgot(String username, String password) {
		// TODO Auto-generated method stub
		return loginDao.forgot(username,password);
	}
}
