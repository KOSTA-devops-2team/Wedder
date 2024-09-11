package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class hallInfoDto {
	
	private Integer hall_id;
	private Integer company_id;
	private String hall_type;
	private Integer min_people;
	private Integer parking;
	
	public hallInfoDto(){
	}

	public hallInfoDto(Integer hall_id, Integer company_id, String hall_type, Integer min_people, Integer parking) {
		this.hall_id = hall_id;
		this.company_id = company_id;
		this.hall_type = hall_type;
		this.min_people = min_people;
		this.parking = parking;
	}

	public Integer getHall_id() {
		return hall_id;
	}

	public void setHall_id(Integer hall_id) {
		this.hall_id = hall_id;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	public String getHall_type() {
		return hall_type;
	}

	public void setHall_type(String hall_type) {
		this.hall_type = hall_type;
	}

	public Integer getMin_people() {
		return min_people;
	}

	public void setMin_people(Integer min_people) {
		this.min_people = min_people;
	}

	public Integer getParking() {
		return parking;
	}

	public void setParking(Integer parking) {
		this.parking = parking;
	}

	@Override
	public String toString() {
		return "hallInfoDto [hall_id=" + hall_id + ", company_id=" + company_id + ", hall_type=" + hall_type
				+ ", min_people=" + min_people + ", parking=" + parking + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, hall_id, hall_type, min_people, parking);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		hallInfoDto other = (hallInfoDto) obj;
		return Objects.equals(company_id, other.company_id) && Objects.equals(hall_id, other.hall_id)
				&& Objects.equals(hall_type, other.hall_type) && Objects.equals(min_people, other.min_people)
				&& Objects.equals(parking, other.parking);
	}
	
	
}
