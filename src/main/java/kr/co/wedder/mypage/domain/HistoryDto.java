package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class HistoryDto {
	private int customer_id;
	private int agree;
	private String reservation_status;

	public HistoryDto() {	}

	public HistoryDto(int customer_id, int agree, String reservation_status) {
		this.customer_id = customer_id;
		this.agree = agree;
		this.reservation_status = reservation_status;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public int getAgree() {
		return agree;
	}

	public void setAgree(int agree) {
		this.agree = agree;
	}

	public String getReservation_status() {
		return reservation_status;
	}

	public void setReservation_status(String reservation_status) {
		this.reservation_status = reservation_status;
	}

	@Override
	public String toString() {
		return "HistoryDto [customer_id=" + customer_id + ", agree=" + agree + ", reservation_status="
				+ reservation_status + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(agree, customer_id, reservation_status);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HistoryDto other = (HistoryDto) obj;
		return agree == other.agree && customer_id == other.customer_id
				&& Objects.equals(reservation_status, other.reservation_status);
	}
	
	
}
