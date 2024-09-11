package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class VisitCriteria {
	private CompanyDto companyDto;
	private MyPageDTO myPageDTO;
	private ReservationDto reservationDto;
	private HistoryDto historyDto;
	
	public VisitCriteria() {
	}

	
	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto,
			HistoryDto historyDto) {
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.historyDto = historyDto;
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

	public HistoryDto getHistoryDto() {
		return historyDto;
	}

	public void setHistoryDto(HistoryDto historyDto) {
		this.historyDto = historyDto;
	}

	@Override
	public String toString() {
		return "VisitCriteria [companyDto=" + companyDto + ", myPageDTO=" + myPageDTO + ", reservationDto="
				+ reservationDto + ", historyDto=" + historyDto + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(companyDto, historyDto, myPageDTO, reservationDto);
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
		return Objects.equals(companyDto, other.companyDto) && Objects.equals(historyDto, other.historyDto)
				&& Objects.equals(myPageDTO, other.myPageDTO) && Objects.equals(reservationDto, other.reservationDto);
	}
	
	
}
