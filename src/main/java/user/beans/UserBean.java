package user.beans;

import java.sql.Date;

public class UserBean {

	private String username;
	private String password;
	private String firstname;
	private String lastname;
	private Date dob;
	private int age;
	private String gender;
	private String address;
	private String phone;
	private int loginStatus;

	public UserBean() {

	}

	public UserBean(String username, String password, String firstname, String lastname, Date dob, int age,
			String gender, String address, String phone) {
		this.username = username;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		
		
	}

	public UserBean(String username, String password, String firstname, String lastname, Date dob, int age,
			String gender, String address, String phone,int loginStatus) {
		this.username = username;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.loginStatus=loginStatus;
	}
	
	public UserBean(String username, String password) {
		this.username = username;
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserBean [username=" + username + ", password=" + password + ", firstname=" + firstname + ", lastname="
				+ lastname + ", dob=" + dob + ", age=" + age + ", gender=" + gender + ", address=" + address
				+ ", phone=" + phone + ", loginStatus=" + loginStatus + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(int loginStatus) {
		this.loginStatus = loginStatus;
	}

}
