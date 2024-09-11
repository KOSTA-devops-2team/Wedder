package kr.co.wedder.mypage.domain;

import java.util.Date;
import java.util.Objects;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;


public class ReservationDto {
	
	private Integer reservation_id;
	private Integer company_id;
	private Integer customer_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date reservation_date;
	private String reservation_time;
	
	public ReservationDto() {
	}

	public ReservationDto(Integer company_id, Integer customer_id, Date reservation_date, String reservation_time) {
		this.company_id = company_id;
		this.customer_id = customer_id;
		this.reservation_date = reservation_date;
		this.reservation_time = reservation_time;
	}

	public Integer getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(Integer reservation_id) {
		this.reservation_id = reservation_id;
	}

	public Integer getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}

	public Date getReservation_date() {
		return reservation_date;
	}

	public void setReservation_date(Date reservation_date) {
		this.reservation_date = reservation_date;
	}

	public String getReservation_time() {
		return reservation_time;
	}

	public void setReservation_time(String reservation_time) {
		this.reservation_time = reservation_time;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(company_id, customer_id, reservation_date, reservation_id, reservation_time);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReservationDto other = (ReservationDto) obj;
		return Objects.equals(company_id, other.company_id) && Objects.equals(customer_id, other.customer_id)
				&& Objects.equals(reservation_date, other.reservation_date)
				&& Objects.equals(reservation_id, other.reservation_id)
				&& Objects.equals(reservation_time, other.reservation_time);
	}

	@Override
	public String toString() {
		return "ReservationDto [reservation_id=" + reservation_id + ", company_id=" + company_id + ", customer_id="
				+ customer_id + ", reservation_date=" + reservation_date + ", reservation_time=" + reservation_time
				+ "]";
	}
	
}
