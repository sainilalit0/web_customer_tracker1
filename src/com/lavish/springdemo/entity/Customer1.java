package com.lavish.springdemo.entity;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="customer1")
public class Customer1 {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="customer_id")
	private int id;
	
	@Column(name="first_name")
	@NotNull(message="is required first name")
	@Size(min=1,message="first name is required")

	private String firstName;
	
	@Column(name="last_name")
	@NotNull(message="is required first name")
	@Size(min=1,message="last name is required")
	
	private String lastName;
	
	
	@Column(name="dob")
	private Date dob;
	
	@Column(name="contact_no")
	@Pattern(regexp="^[0-9]{10}", message="only 10 digits")
	private String contactNo;
	
	@Column(name="alternate_no")
	@Pattern(regexp="^[0-9]{10}", message="only 10 digits")
	private String alternateNo;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="email")
	
	@Email(message = "Email should be valid")
	private String email;
	
	@Column(name="occupation")
	@NotNull(message="is required occupation")
	@Size(min=1,message="occupation is required")	
	private String occupation;
	
	@Column(name="address")
	@NotNull(message="is required address")
	@Size(min=1,message="address is required")
	private String address;	
	
	@Column(name="membership")
	@NotNull(message="is required ")
	private String membership;
	
	@Column(name="amount")
	@NotNull(message="is required ")
	private Float amount;
	
	@Column(name="amount_status")
	@NotNull(message="is required character")
	private String amountStatus;
	
	@Column(name="pending_amount")
	@NotNull(message="is required ")
	private float pendingAmount;
	
	@Column(name="start_date")
	private Date startDate;
	
	public float getPendingAmount() {
		return pendingAmount;
	}
	public void setPendingAmount(float pendingAmount) {
		this.pendingAmount = pendingAmount;
	}

	@Column(name="facility")
	@NotNull(message="is required ")
	private String facility;
	
	@Column(name="end_date")
	private Date endDate;
	 public Customer1() {
		// TODO Auto-generated constructor stub
	}
	public String getMembership() {
		return membership;
	}

	public void setMembership(String membership) {
		this.membership = membership;
	}

	public Float getAmount() {
		return amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public String getAmountStatus() {
		return amountStatus;
	}

	public void setAmountStatus(String amountStatus) {
		this.amountStatus = amountStatus;
	}

	

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getAlternateNo() {
		return alternateNo;
	}

	public void setAlternateNo(String alternateNo) {
		this.alternateNo = alternateNo;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Customer1 [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", dob=" + dob
				+ ", contactNo=" + contactNo + ", alternateNo=" + alternateNo + ", gender=" + gender + ", email="
				+ email + ", occupation=" + occupation + ", address=" + address + ", membership=" + membership
				+ ", amount=" + amount + ", amountStatus=" + amountStatus + ", pendingAmount=" + pendingAmount
				+ ", startDate=" + startDate + ", facility=" + facility + ", endDate=" + endDate + "]";
	}
	 
}
