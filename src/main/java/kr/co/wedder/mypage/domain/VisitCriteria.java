package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class VisitCriteria {
	private String status;
	private CompanyDto companyDto;
	private MyPageDTO myPageDTO;
	private ReservationDto reservationDto;
	
	public VisitCriteria() {
	}

	public VisitCriteria(String status, CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto) {
		this.status = status;
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public CompanyDto getCompanyDto() {
		return companyDto;
	}

	public void setCompanyDto(CompanyDto companyDto) {
		this.companyDto = companyDto;
	}

	public MyPageDTO getMyPageDTO() {
		return myPageDTO;
	}

	public void setMyPageDTO(MyPageDTO myPageDTO) {
		this.myPageDTO = myPageDTO;
	}

	public ReservationDto getReservationDto() {
		return reservationDto;
	}

	public void setReservationDto(ReservationDto reservationDto) {
		this.reservationDto = reservationDto;
	}

	@Override
	public String toString() {
		return "VisitCriteria [status=" + status + ", companyDto=" + companyDto + ", myPageDTO=" + myPageDTO
				+ ", reservationDto=" + reservationDto + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(companyDto, myPageDTO, reservationDto, status);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		VisitCriteria other = (VisitCriteria) obj;
		return Objects.equals(companyDto, other.companyDto) && Objects.equals(myPageDTO, other.myPageDTO)
				&& Objects.equals(reservationDto, other.reservationDto) && Objects.equals(status, other.status);
	}
	
	
}
