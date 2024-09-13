package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class PackageCategoryDto {
	private Integer category_id;
	private String package_id;
	private Integer option_id;
	private Integer company_id;
	
	public PackageCategoryDto() {
	}

	public PackageCategoryDto(Integer category_id, String package_id, Integer option_id, Integer company_id) {
		this.category_id = category_id;
		this.package_id = package_id;
		this.option_id = option_id;
		this.company_id = company_id;
	}

	public Integer getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}

	public String getpackage_id() {
		return package_id;
	}

	public void setpackage_id(String package_id) {
		this.package_id = package_id;
	}

	public Integer getOption_id() {
		return option_id;
	}

	public void setOption_id(Integer option_id) {
		this.option_id = option_id;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(category_id, company_id, option_id, package_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PackageCategoryDto other = (PackageCategoryDto) obj;
		return Objects.equals(category_id, other.category_id) && Objects.equals(company_id, other.company_id)
				&& Objects.equals(option_id, other.option_id) && Objects.equals(package_id, other.package_id);
	}

	@Override
	public String toString() {
		return "PackageCategoryDto [category_id=" + category_id + ", package_id=" + package_id + ", option_id="
				+ option_id + ", company_id=" + company_id + "]";
	}
	
	
}
