package com.lavish.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="gyminfo")
public class GymInfo {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="gym_trainner_id")
	private int id;
	@Column(name="trainner_name")
	private String trainnerName;
	public GymInfo() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTrainnerName() {
		return trainnerName;
	}
	public void setTrainnerName(String trainnerName) {
		this.trainnerName = trainnerName;
	}
	@Override
	public String toString() {
		return "GymInfo [id=" + id + ", trainnerName=" + trainnerName + "]";
	}
	
}
