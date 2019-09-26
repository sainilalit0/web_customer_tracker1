package com.lavish.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lavish.springdemo.dao.GymInfoDao;
import com.lavish.springdemo.entity.GymInfo;
@Service
public class GymInfoServiceImpl implements GymInfoService{

	@Autowired
	private GymInfoDao gymInfoDao;
	@Override
	@Transactional
	public List<GymInfo> getGymInfo() {
		// TODO Auto-generated method stub
		return gymInfoDao.getGymInfo();
	}
	
	
}
