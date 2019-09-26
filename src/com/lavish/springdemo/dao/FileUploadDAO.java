package com.lavish.springdemo.dao;

import java.util.List;

import com.lavish.springdemo.entity.UploadFile;

public interface FileUploadDAO {
	void save(UploadFile uploadFile);

	List<UploadFile> getImgs();
}
