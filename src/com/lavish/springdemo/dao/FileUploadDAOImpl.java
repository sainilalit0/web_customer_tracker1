package com.lavish.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lavish.springdemo.entity.UploadFile;
@Repository
public class FileUploadDAOImpl implements FileUploadDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public FileUploadDAOImpl() {
	}

	public FileUploadDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public void save(UploadFile uploadFile) {
		sessionFactory.getCurrentSession().saveOrUpdate(uploadFile);
	}

	@Override
	@Transactional
	public List<UploadFile> getImgs() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query<UploadFile> thequery=session.createQuery(" from UploadFile",UploadFile.class);
		List<UploadFile> thelist=thequery.getResultList();
		
		return thelist;
	}

}
