package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class StudioInfo {
	
	private Integer studio_id;
	private Integer company_id;
	private String package_id;
	private String studio_shoot_type;         
	private  Integer studio_rental_clothing;
	private String  studio_shoot_focus;       
	private String studio_shoot_duration;     
	private String studio_location_types ;    
	private String studio_product;   
	private boolean hair_change_availability; 
	private boolean studio_equipment_included;
	
	public StudioInfo() {
	}

	public StudioInfo(Integer studio_id, Integer company_id, String package_id, String studio_shoot_type,
			Integer studio_rental_clothing, String studio_shoot_focus, String studio_shoot_duration,
			String studio_location_types, String studio_product, boolean hair_change_availability,
			boolean studio_equipment_included) {
		this.studio_id = studio_id;
		this.company_id = company_id;
		this.package_id = package_id;
		this.studio_shoot_type = studio_shoot_type;
		this.studio_rental_clothing = studio_rental_clothing;
		this.studio_shoot_focus = studio_shoot_focus;
		this.studio_shoot_duration = studio_shoot_duration;
		this.studio_location_types = studio_location_types;
		this.studio_product = studio_product;
		this.hair_change_availability = hair_change_availability;
		this.studio_equipment_included = studio_equipment_included;
	}

	public Integer getStudio_id() {
		return studio_id;
	}

	public void setStudio_id(Integer studio_id) {
		this.studio_id = studio_id;
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

	public String getStudio_shoot_type() {
		return studio_shoot_type;
	}

	public void setStudio_shoot_type(String studio_shoot_type) {
		this.studio_shoot_type = studio_shoot_type;
	}

	public Integer getStudio_rental_clothing() {
		return studio_rental_clothing;
	}

	public void setStudio_rental_clothing(Integer studio_rental_clothing) {
		this.studio_rental_clothing = studio_rental_clothing;
	}

	public String getStudio_shoot_focus() {
		return studio_shoot_focus;
	}

	public void setStudio_shoot_focus(String studio_shoot_focus) {
		this.studio_shoot_focus = studio_shoot_focus;
	}

	public String getStudio_shoot_duration() {
		return studio_shoot_duration;
	}

	public void setStudio_shoot_duration(String studio_shoot_duration) {
		this.studio_shoot_duration = studio_shoot_duration;
	}

	public String getStudio_location_types() {
		return studio_location_types;
	}

	public void setStudio_location_types(String studio_location_types) {
		this.studio_location_types = studio_location_types;
	}

	public String getStudio_product() {
		return studio_product;
	}

	public void setStudio_product(String studio_product) {
		this.studio_product = studio_product;
	}

	public boolean isHair_change_availability() {
		return hair_change_availability;
	}

	public void setHair_change_availability(boolean hair_change_availability) {
		this.hair_change_availability = hair_change_availability;
	}

	public boolean isStudio_equipment_included() {
		return studio_equipment_included;
	}

	public void setStudio_equipment_included(boolean studio_equipment_included) {
		this.studio_equipment_included = studio_equipment_included;
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, hair_change_availability, package_id, studio_equipment_included, studio_id,
				studio_location_types, studio_product, studio_rental_clothing, studio_shoot_duration,
				studio_shoot_focus, studio_shoot_type);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		StudioInfo other = (StudioInfo) obj;
		return Objects.equals(company_id, other.company_id)
				&& hair_change_availability == other.hair_change_availability
				&& Objects.equals(package_id, other.package_id)
				&& studio_equipment_included == other.studio_equipment_included
				&& Objects.equals(studio_id, other.studio_id)
				&& Objects.equals(studio_location_types, other.studio_location_types)
				&& Objects.equals(studio_product, other.studio_product)
				&& Objects.equals(studio_rental_clothing, other.studio_rental_clothing)
				&& Objects.equals(studio_shoot_duration, other.studio_shoot_duration)
				&& Objects.equals(studio_shoot_focus, other.studio_shoot_focus)
				&& Objects.equals(studio_shoot_type, other.studio_shoot_type);
	}

	@Override
	public String toString() {
		return "StudioInfo [studio_id=" + studio_id + ", company_id=" + company_id + ", package_id=" + package_id
				+ ", studio_shoot_type=" + studio_shoot_type + ", studio_rental_clothing=" + studio_rental_clothing
				+ ", studio_shoot_focus=" + studio_shoot_focus + ", studio_shoot_duration=" + studio_shoot_duration
				+ ", studio_location_types=" + studio_location_types + ", studio_product=" + studio_product
				+ ", hair_change_availability=" + hair_change_availability + ", studio_equipment_included="
				+ studio_equipment_included + "]";
	}
	
}
