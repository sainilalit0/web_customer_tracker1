package com.lavish.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="customer")
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	@NotNull(message="is required")
	@Size(min = 3, max = 20)
	
	private String firstName;
	
	@Column(name="last_name")
	@NotNull(message="is required")
	@Size(min=1,message="is required")
	private String lastName;
	
	@Column(name="email")
	@NotNull(message="is required")
	@Size(min=1,message="is required")
	private String email;
	
	@Column(name="gender")
	@NotNull(message="is required")
	@Size(min=1,message="is required")
	private String gender;
	
	@Column(name="course")
	@NotNull(message="is required")
	@Size(min=1,message="is required")
	private String course;
	
	@Column(name="food")
	@NotNull(message="is required")
	@Size(min=1,message="is required")
	private String food;
	

	public Customer() {
		// TODO Auto-generated constructor stub
	}
	
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", gender=" + gender;
	}
	

}
