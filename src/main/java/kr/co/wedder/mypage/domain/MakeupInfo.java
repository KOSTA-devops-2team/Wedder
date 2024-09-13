package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class MakeupInfo {
	private Integer makeup_id;
	private Integer company_id;
	private String package_id;
	private String makeup_type;
	private String position;
	
	public MakeupInfo() {
	}

	public MakeupInfo(Integer makeup_id, Integer company_id, String package_id, String makeup_type, String position) {
		this.makeup_id = makeup_id;
		this.company_id = company_id;
		this.package_id = package_id;
		this.makeup_type = makeup_type;
		this.position = position;
	}

	public Integer getMakeup_id() {
		return makeup_id;
	}

	public void setMakeup_id(Integer makeup_id) {
		this.makeup_id = makeup_id;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	public String getPackage_id() {
		return package_id;
	}

	public void setPackage_id(String package_id) {
		this.package_id = package_id;
	}

	public String getMakeup_type() {
		return makeup_type;
	}

	public void setMakeup_type(String makeup_type) {
		this.makeup_type = makeup_type;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, makeup_id, makeup_type, package_id, position);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MakeupInfo other = (MakeupInfo) obj;
		return Objects.equals(company_id, other.company_id) && Objects.equals(makeup_id, other.makeup_id)
				&& Objects.equals(makeup_type, other.makeup_type) && Objects.equals(package_id, other.package_id)
				&& Objects.equals(position, other.position);
	}

	@Override
	public String toString() {
		return "StudioInfo [makeup_id=" + makeup_id + ", company_id=" + company_id + ", package_id=" + package_id
				+ ", makeup_type=" + makeup_type + ", position=" + position + "]";
	}
}
