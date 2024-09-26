package kr.co.wedder.mypage.domain;

import kr.co.wedder.company.domain.CompanyDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Data
@NoArgsConstructor
@AllArgsConstructor
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
	private StudioInfo 	studioInfo;
	private OptionDto 	optionDto;
	private PackageCategoryDto packageCategoryDto;


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

	public VisitCriteria(CompanyDto companyDto, HallInfoDto hallInfoDto, DressInfo dressInfo, MakeupInfo makeupInfo, StudioInfo studioInfo, OptionDto optionDto) {
		this.companyDto =companyDto;
		this.hallInfoDto=hallInfoDto;
		this.dressInfo=dressInfo;
		this.makeupInfo=makeupInfo;
		this.studioInfo=studioInfo;
		this.optionDto=optionDto;
	}

	public VisitCriteria(CompanyDto companyDto, MyPageDTO myPageDto, ReservationDto reservationDto,
						 CompanyImage companyImage, StudioInfo studioInfo, DressInfo dressInfo, MakeupInfo makeupInfo,
						 HallInfoDto hallInfoDto, OptionDto optionDto) {

		this.companyDto=companyDto;
		this.myPageDTO=myPageDto;
		this.reservationDto=reservationDto;
		this.companyImage=companyImage;
		this.studioInfo=studioInfo;
		this.dressInfo=dressInfo;
		this.makeupInfo=makeupInfo;
		this.hallInfoDto=hallInfoDto;
		this.optionDto=optionDto;
	}

    public VisitCriteria(CompanyDto companyDto, MakeupInfo makeupInfo, OptionDto optionDto, ReservationDto reservationDto) {
    	this.companyDto=companyDto;
		this.makeupInfo=makeupInfo;
		this.optionDto=optionDto;
		this.reservationDto=reservationDto;
	}

	public VisitCriteria(CompanyDto companyDto, ReservationDto reservationDto, OptionDto optionDto, StudioInfo studioInfo) {
		this.companyDto = companyDto;
		this.reservationDto = reservationDto;
		this.optionDto = optionDto;
		this.studioInfo = studioInfo;
	}

	public VisitCriteria(CompanyDto companyDto, ReservationDto reservationDto, OptionDto optionDto, DressInfo dressInfo) {
		this.companyDto = companyDto;
		this.reservationDto = reservationDto;
		this.optionDto = optionDto;
		this.dressInfo = dressInfo;
	}
}
