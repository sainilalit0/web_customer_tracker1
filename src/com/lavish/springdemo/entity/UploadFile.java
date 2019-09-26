package com.lavish.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "files_uploads")
public class UploadFile {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "upload_id")
	private long id;
	@Column(name = "file_name")
	private String fileName;
	@Lob
	@Column(name = "file_data")
	
	private byte[] data;

	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}


	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

}
