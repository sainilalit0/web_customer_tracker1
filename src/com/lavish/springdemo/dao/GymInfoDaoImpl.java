package com.lavish.springdemo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lavish.springdemo.entity.GymInfo;
@Repository("GymInfoDao")
public class GymInfoDaoImpl implements GymInfoDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override	
	public List<GymInfo> getGymInfo() {
		// get the current hiernate session
				Session session=sessionFactory.getCurrentSession();
				// create a query 
				Query<GymInfo> theQuery=session.createQuery(" from GymInfo ", GymInfo.class);
				//excute query and get result 
				List<GymInfo> result=theQuery.getResultList();
				
				// return result 
				return result;
	}

}
