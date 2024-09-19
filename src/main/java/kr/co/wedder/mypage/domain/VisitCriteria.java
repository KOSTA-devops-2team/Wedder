package kr.co.wedder.mypage.domain;

import kr.co.wedder.company.domain.CompanyDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

<<<<<<< HEAD
import kr.co.wedder.company.domain.CompanyDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
=======
>>>>>>> 76aabf54e68daa2e506e88949e2f2deafb9de970

@Data
@NoArgsConstructor
@AllArgsConstructor
<<<<<<< HEAD
=======
@ToString
>>>>>>> 76aabf54e68daa2e506e88949e2f2deafb9de970
public class VisitCriteria {
	private CompanyDto 	companyDto;
	private MyPageDTO 	myPageDTO;
	private ReservationDto reservationDto;
	private HistoryDto 	historyDto;
	private HallInfoDto hallInfoDto;
	private CompanyImage companyImage;
	// 금일 추가 된 부분
	private DressInfo 	dressInfo;
	private MakeupInfo 	makeupInfo;
	private OptionDto 	optionDto;
	private PackageCategoryDto packageCategoryDto;
<<<<<<< HEAD
	private StudioInfo studioInfo;
	
	
	public VisitCriteria() {
	}
=======
	private StudioInfo 	studioInfo;
>>>>>>> 76aabf54e68daa2e506e88949e2f2deafb9de970

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
	
	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDTO, ReservationDto reservationDto,
			CompanyImage companyImage) {
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.companyImage = companyImage;
	}
}
