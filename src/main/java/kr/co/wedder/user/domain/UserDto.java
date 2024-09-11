package kr.co.wedder.user.domain;

import java.util.Objects;

public class UserDto {
	
	private Integer customer_id;
	private String name;
	private String password;
	private Boolean sex;
	private String email;
	private String varchar;
	private String jumin_num;
	
	public UserDto() {}

	public UserDto(Integer customer_id, String name, String password, Boolean sex, String email, String varchar,
			String jumin_num) {
		this.customer_id = customer_id;
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.email = email;
		this.varchar = varchar;
		this.jumin_num = jumin_num;
	}

	public Integer getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getVarchar() {
		return varchar;
	}

	public void setVarchar(String varchar) {
		this.varchar = varchar;
	}

	public String getJumin_num() {
		return jumin_num;
	}

	public void setJumin_num(String jumin_num) {
		this.jumin_num = jumin_num;
	}

	@Override
	public String toString() {
		return "UserDto [customer_id=" + customer_id + ", name=" + name + ", password=" + password + ", sex=" + sex
				+ ", email=" + email + ", varchar=" + varchar + ", jumin_num=" + jumin_num + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(customer_id, email, jumin_num, name, password, sex, varchar);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserDto other = (UserDto) obj;
		return Objects.equals(customer_id, other.customer_id)
				&& Objects.equals(email, other.email)
				&& Objects.equals(jumin_num, other.jumin_num) 
				&& Objects.equals(name, other.name)
				&& Objects.equals(password, other.password) 
				&& Objects.equals(sex, other.sex)
				&& Objects.equals(varchar, other.varchar);
	}
	
	
	
}
