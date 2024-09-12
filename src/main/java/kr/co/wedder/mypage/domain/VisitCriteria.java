package kr.co.wedder.mypage.domain;

import java.util.Objects;

public class VisitCriteria {
	private CompanyDto companyDto;
	private MyPageDTO myPageDTO;
	private ReservationDto reservationDto;
	private HistoryDto historyDto;
	private HallInfoDto hallInfoDto;
	private CompanyImage companyImage;
 	
	public VisitCriteria() {
	}

	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto,
			HistoryDto historyDto) {
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.historyDto = historyDto;
	}

	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto,
			HistoryDto historyDto, HallInfoDto hallInfoDto) {
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.historyDto = historyDto;
		this.hallInfoDto = hallInfoDto;
	}

	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto,
			HistoryDto historyDto, HallInfoDto hallInfoDto, CompanyImage companyImage) {
		super();
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.historyDto = historyDto;
		this.hallInfoDto = hallInfoDto;
		this.companyImage = companyImage;
	}

	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto,
			HallInfoDto hallInfoDto, CompanyImage companyImage) {
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.hallInfoDto = hallInfoDto;
		this.companyImage = companyImage;
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

	public HallInfoDto getHallInfoDto() {
		return hallInfoDto;
	}

	public void setHallInfoDto(HallInfoDto hallInfoDto) {
		this.hallInfoDto = hallInfoDto;
	}
	public CompanyImage getCompanyImage() {
		return companyImage;
	}
	
	public void setCompanyImage(CompanyImage companyImage) {
		this.companyImage = companyImage;
	}

	@Override
	public int hashCode() {
		return Objects.hash(companyDto, companyImage, hallInfoDto, historyDto, myPageDTO, reservationDto);
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
		return Objects.equals(companyDto, other.companyDto) && Objects.equals(companyImage, other.companyImage)
				&& Objects.equals(hallInfoDto, other.hallInfoDto) && Objects.equals(historyDto, other.historyDto)
				&& Objects.equals(myPageDTO, other.myPageDTO) && Objects.equals(reservationDto, other.reservationDto);
	}

	@Override
	public String toString() {
		return "VisitCriteria [companyDto=" + companyDto + ", myPageDTO=" + myPageDTO + ", reservationDto="
				+ reservationDto + ", historyDto=" + historyDto + ", hallInfoDto=" + hallInfoDto + ", companyImage="
				+ companyImage + "]";
	}

		
}
