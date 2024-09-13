package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class MyPageDTO {

	private Integer customer_id;
	private String id;
	private String password;
	private String name;
	private String phone;
	private String email;
	private Integer gender;
	private String profile_url;
	
	public MyPageDTO() {
	}
	public MyPageDTO(Integer customer_id, String id, String password, String name, String phone, String email,
			Integer gender, String profile_url) {
		this.customer_id = customer_id;
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.profile_url = profile_url;
	}
	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Integer getCustomer_id() {
		return customer_id;
	}
	public String getProfile_url() {
		return profile_url;
	}
	public void setProfile_url(String profile_url) {
		this.profile_url = profile_url;
	}
	@Override
	public int hashCode() {
		return Objects.hash(customer_id, email, gender, id, name, password, phone, profile_url);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MyPageDTO other = (MyPageDTO) obj;
		return Objects.equals(customer_id, other.customer_id) && Objects.equals(email, other.email)
				&& Objects.equals(gender, other.gender) && Objects.equals(id, other.id)
				&& Objects.equals(name, other.name) && Objects.equals(password, other.password)
				&& Objects.equals(phone, other.phone) && Objects.equals(profile_url, other.profile_url);
	}
	
	@Override
	public String toString() {
		return "MyPageDTO [customer_id=" + customer_id + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", phone=" + phone + ", email=" + email + ", gender=" + gender + ", profile_url=" + profile_url + "]";
	}
	
	
}
