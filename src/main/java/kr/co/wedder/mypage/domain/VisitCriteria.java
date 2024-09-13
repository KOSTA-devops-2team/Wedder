package kr.co.wedder.mypage.domain;

import kr.co.wedder.company.domain.CompanyDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class VisitCriteria {
	private CompanyDto companyDto;
	private MyPageDTO myPageDTO;
	private ReservationDto reservationDto;
	private HistoryDto historyDto;
	private HallInfoDto hallInfoDto;
	private CompanyImage companyImage;
	// 금일 추가 된 부분
	private DressInfo dressInfo;
	private MakeupInfo makeupInfo;
	private OptionDto optionDto;
	private PackageCategoryDto packageCategoryDto;
	private StudioInfo studioInfo;

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
		super();
		this.companyDto = companyDto;
		this.myPageDTO = myPageDTO;
		this.reservationDto = reservationDto;
		this.companyImage = companyImage;
	}
}
