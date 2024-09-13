package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class DressInfo {
	private Integer dress_id;
	private Integer company_id;
	private String package_id; 
	private String dress_type;
	private boolean dress_repair_service;
	private Integer dress_consultation_time;
	private Integer dress_measurement_time;
	private String dress_composition;
	
	public DressInfo() {
	}

	public DressInfo(Integer dress_id, Integer company_id, String package_id, String dress_type,
			boolean dress_repair_service, Integer dress_consultation_time, Integer dress_measurement_time,
			String dress_composition) {
		this.dress_id = dress_id;
		this.company_id = company_id;
		this.package_id = package_id;
		this.dress_type = dress_type;
		this.dress_repair_service = dress_repair_service;
		this.dress_consultation_time = dress_consultation_time;
		this.dress_measurement_time = dress_measurement_time;
		this.dress_composition = dress_composition;
	}

	public Integer getDress_id() {
		return dress_id;
	}

	public void setDress_id(Integer dress_id) {
		this.dress_id = dress_id;
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

	public String getDress_type() {
		return dress_type;
	}

	public void setDress_type(String dress_type) {
		this.dress_type = dress_type;
	}

	public boolean isDress_repair_service() {
		return dress_repair_service;
	}

	public void setDress_repair_service(boolean dress_repair_service) {
		this.dress_repair_service = dress_repair_service;
	}

	public Integer getDress_consultation_time() {
		return dress_consultation_time;
	}

	public void setDress_consultation_time(Integer dress_consultation_time) {
		this.dress_consultation_time = dress_consultation_time;
	}

	public Integer getDress_measurement_time() {
		return dress_measurement_time;
	}

	public void setDress_measurement_time(Integer dress_measurement_time) {
		this.dress_measurement_time = dress_measurement_time;
	}

	public String getDress_composition() {
		return dress_composition;
	}

	public void setDress_composition(String dress_composition) {
		this.dress_composition = dress_composition;
	}

	@Override
	public String toString() {
		return "DressInfo [dress_id=" + dress_id + ", company_id=" + company_id + ", package_id=" + package_id
				+ ", dress_type=" + dress_type + ", dress_repair_service=" + dress_repair_service
				+ ", dress_consultation_time=" + dress_consultation_time + ", dress_measurement_time="
				+ dress_measurement_time + ", dress_composition=" + dress_composition + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, dress_composition, dress_consultation_time, dress_id, dress_measurement_time,
				dress_repair_service, dress_type, package_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DressInfo other = (DressInfo) obj;
		return Objects.equals(company_id, other.company_id)
				&& Objects.equals(dress_composition, other.dress_composition)
				&& Objects.equals(dress_consultation_time, other.dress_consultation_time)
				&& Objects.equals(dress_id, other.dress_id)
				&& Objects.equals(dress_measurement_time, other.dress_measurement_time)
				&& dress_repair_service == other.dress_repair_service && Objects.equals(dress_type, other.dress_type)
				&& Objects.equals(package_id, other.package_id);
	}
	
	
	
}
