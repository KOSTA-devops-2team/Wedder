package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class CompanyDto {
	
	private Integer company_id;
	private String company_address;
	private String company_introduce;
	private String company_category;
	private String phone_num;
	private String operation_hours;
	private String Instagram_url;
	private String company_url;
	
	public CompanyDto() {
	}

	public CompanyDto(String company_address, String company_introduce, String company_category, String phone_num,
			String operation_hours, String instagram_url, String company_url) {
		this.company_address = company_address;
		this.company_introduce = company_introduce;
		this.company_category = company_category;
		this.phone_num = phone_num;
		this.operation_hours = operation_hours;
		Instagram_url = instagram_url;
		this.company_url = company_url;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	public String getCompany_address() {
		return company_address;
	}

	public void setCompany_address(String company_address) {
		this.company_address = company_address;
	}

	public String getCompany_introduce() {
		return company_introduce;
	}

	public void setCompany_introduce(String company_introduce) {
		this.company_introduce = company_introduce;
	}

	public String getCompany_category() {
		return company_category;
	}

	public void setCompany_category(String company_category) {
		this.company_category = company_category;
	}

	public String getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	public String getOperation_hours() {
		return operation_hours;
	}

	public void setOperation_hours(String operation_hours) {
		this.operation_hours = operation_hours;
	}

	public String getInstagram_url() {
		return Instagram_url;
	}

	public void setInstagram_url(String instagram_url) {
		Instagram_url = instagram_url;
	}

	public String getCompany_url() {
		return company_url;
	}

	public void setCompany_url(String company_url) {
		this.company_url = company_url;
	}

	@Override
	public int hashCode() {
		return Objects.hash(Instagram_url, company_address, company_category, company_id, company_introduce,
				company_url, operation_hours, phone_num);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompanyDto other = (CompanyDto) obj;
		return Objects.equals(Instagram_url, other.Instagram_url)
				&& Objects.equals(company_address, other.company_address)
				&& Objects.equals(company_category, other.company_category)
				&& Objects.equals(company_id, other.company_id)
				&& Objects.equals(company_introduce, other.company_introduce)
				&& Objects.equals(company_url, other.company_url)
				&& Objects.equals(operation_hours, other.operation_hours) && Objects.equals(phone_num, other.phone_num);
	}

	@Override
	public String toString() {
		return "CompanyDto [company_id=" + company_id + ", company_address=" + company_address + ", company_introduce="
				+ company_introduce + ", company_category=" + company_category + ", phone_num=" + phone_num
				+ ", operation_hours=" + operation_hours + ", Instagram_url=" + Instagram_url + ", company_url="
				+ company_url + "]";
	}
	
}
