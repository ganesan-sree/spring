package com.bean;

import java.util.Date;


public class UserTest  {


	private Integer userId;
	
	private Date registeredDate;

	
	/**
	 * This defines the name of the user
	 */
	private String name;

	/**
	 * This defines the email of the user
	 */
	private String email;

	/**
	 * This defines the password of the user
	 */
	private String password;

	/**
	 * This defines the country of the user
	 */
	private String country;

	/**
	 * This defines the phone number of the user
	 */
	private String phone;


	
	private String sex;


	public Integer getUserId() {
		return userId;
	}

	/**
	 * 
	 * @param userId
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	

	/**
	 * 
	 * @return registeredDate
	 */
	public Date getRegisteredDate() {
		return registeredDate;
	}

	/**
	 * 
	 * @param registeredDate
	 */
	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}

	

	/**
	 * 
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * 
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}


	/**
	 * 
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 
	 * @return country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * 
	 * @param country
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * 
	 * @return phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * 
	 * @param phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * 
	 * @return sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * 
	 * @param sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}


	

	

	


	/**
	 * Compare two object for equality
	 * 
	 * @param obj
	 *            the object to be compared.
	 * @return <code> true </code> if two objects are equal;
	 *         <code> false </code> otherwise
	 */
	public boolean equals(UserTest obj) {	
		return this.getUserId().equals(obj.getUserId());
	}


	@Override
	public int hashCode() {
		if (this.userId != null) {
			return (this.userId).hashCode();
		} else {
			return super.hashCode();
		}
	}
	
}