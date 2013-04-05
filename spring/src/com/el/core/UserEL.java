package com.el.core;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("userBean")
public class UserEL {

	@Value("#{itemBean}")
	private Item item;

	@Value("#{itemBean.name}")
	private String itemName;

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	
	public String toString1() {
		return "Customer [item=" + item + ", itemName=" + itemName + "]";
	}

	
	@Value("#{1 == 1}") //true
	private boolean testEqual;
 
	@Value("#{1 != 1}") //false
	private boolean testNotEqual;
 
	@Value("#{1 < 1}") //false
	private boolean testLessThan;
 
	@Value("#{1 <= 1}") //true
	private boolean testLessThanOrEqual;
 
	@Value("#{1 > 1}") //false
	private boolean testGreaterThan;
 
	@Value("#{1 >= 1}") //true
	private boolean testGreaterThanOrEqual;
 
	//Logical operators , numberBean.no == 999
 
	@Value("#{numberBean.no == 999 and numberBean.no < 900}") //false
	private boolean testAnd;
 
	@Value("#{numberBean.no == 999 or numberBean.no < 900}") //true
	private boolean testOr;
 
	@Value("#{!(numberBean.no == 999)}") //false
	private boolean testNot;
 
	//Mathematical operators
 
	@Value("#{1 + 1}") //2.0
	private double testAdd;
 
	@Value("#{'1' + '@' + '1'}") //1@1
	private String testAddString;
 
	@Value("#{1 - 1}") //0.0
	private double testSubtraction;
 
	@Value("#{1 * 1}") //1.0
	private double testMultiplication;
 
	@Value("#{10 / 2}") //5.0
	private double testDivision;
 
	@Value("#{10 % 10}") //0.0
	private double testModulus ;
 
	@Value("#{2 ^ 2}") //4.0
	private double testExponentialPower;
 
	@Override
	public String toString() {
		return "Customer [testEqual=" + testEqual + ", testNotEqual="
				+ testNotEqual + ", testLessThan=" + testLessThan
				+ ", testLessThanOrEqual=" + testLessThanOrEqual
				+ ", testGreaterThan=" + testGreaterThan
				+ ", testGreaterThanOrEqual=" + testGreaterThanOrEqual
				+ ", testAnd=" + testAnd + ", testOr=" + testOr + ", testNot="
				+ testNot + ", testAdd=" + testAdd + ", testAddString="
				+ testAddString + ", testSubtraction=" + testSubtraction
				+ ", testMultiplication=" + testMultiplication
				+ ", testDivision=" + testDivision + ", testModulus="
				+ testModulus + ", testExponentialPower="
				+ testExponentialPower + "]";
	}
	
	@Value("#{itemBean.qtyOnHand < 100 ? true : false}")
	private boolean warning;
 
	public boolean isWarning() {
		return warning;
	}
 
	public void setWarning(boolean warning) {
		this.warning = warning;
	}
	
	
	public String toString2() {
		return "Customer [warning=" + warning + "]";
	}

	
	@Value("#{testBean.map['MapA']}")
	private String mapA;
 
	@Value("#{testBean.list[0]}")
	private String list;
 
	public String getMapA() {
		return mapA;
	}
 
	public void setMapA(String mapA) {
		this.mapA = mapA;
	}
 
	public String getList() {
		return list;
	}
 
	public void setList(String list) {
		this.list = list;
	}
 
	
	public String toString3() {
		return "Customer [mapA=" + mapA + ", list=" + list + "]";
	}
	
	// email regular expression
		String emailRegEx = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)" +
				"*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	 
		// if this is a digit?
		@Value("#{'100' matches '\\d+' }")
		private boolean validDigit;
	 
		// if this is a digit + ternary operator
		@Value("#{ ('100' matches '\\d+') == true ? " +
				"'yes this is digit' : 'No this is not a digit'  }")
		private String msg;
	 
		// if this emailBean.emailAddress contains a valid email address?
		@Value("#{emailBean.emailAddress matches userBean.emailRegEx}")
		private boolean validEmail;
		
		
		
		public boolean isValidEmail() {
			return validEmail;
		}

		public void setValidEmail(boolean validEmail) {
			this.validEmail = validEmail;
		}
		
		

		public String getEmailRegEx() {
			return emailRegEx;
		}

		public void setEmailRegEx(String emailRegEx) {
			this.emailRegEx = emailRegEx;
		}

		public String toString4() {
			return "Customer [validEmail=" + validEmail + ", msg=" + msg + ", validDigit=" + validDigit + "]";
		}
		
}