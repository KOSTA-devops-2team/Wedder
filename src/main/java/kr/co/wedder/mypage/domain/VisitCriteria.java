package kr.co.wedder.mypage.domain;

import java.util.Objects;

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

	
	
	public DressInfo getDressInfo() {
		return dressInfo;
	}

	public void setDressInfo(DressInfo dressInfo) {
		this.dressInfo = dressInfo;
	}

	public MakeupInfo getMakeupInfo() {
		return makeupInfo;
	}

	public void setMakeupInfo(MakeupInfo makeupInfo) {
		this.makeupInfo = makeupInfo;
	}

	public OptionDto getOptionDto() {
		return optionDto;
	}

	public void setOptionDto(OptionDto optionDto) {
		this.optionDto = optionDto;
	}

	public PackageCategoryDto getPackageCategoryDto() {
		return packageCategoryDto;
	}

	public void setPackageCategoryDto(PackageCategoryDto packageCategoryDto) {
		this.packageCategoryDto = packageCategoryDto;
	}

	public StudioInfo getStudioInfo() {
		return studioInfo;
	}

	public void setStudioInfo(StudioInfo studioInfo) {
		this.studioInfo = studioInfo;
	}

	@Override
	public String toString() {
		return "VisitCriteria [companyDto=" + companyDto + ", myPageDTO=" + myPageDTO + ", reservationDto="
				+ reservationDto + ", historyDto=" + historyDto + ", hallInfoDto=" + hallInfoDto + ", companyImage="
				+ companyImage + ", dressInfo=" + dressInfo +", makeupInfo="
				+ makeupInfo + ", optionDto=" + optionDto + ", packageCategoryDto=" + packageCategoryDto
				+ ", studioInfo=" + studioInfo + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(companyDto, companyImage, dressInfo, hallInfoDto, historyDto, makeupInfo,
				myPageDTO, optionDto, packageCategoryDto, reservationDto, studioInfo);
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
				&& Objects.equals(dressInfo, other.dressInfo) && Objects.equals(hallInfoDto, other.hallInfoDto)
				&& Objects.equals(historyDto, other.historyDto) 
				&& Objects.equals(makeupInfo, other.makeupInfo) && Objects.equals(myPageDTO, other.myPageDTO)
				&& Objects.equals(optionDto, other.optionDto)
				&& Objects.equals(packageCategoryDto, other.packageCategoryDto)
				&& Objects.equals(reservationDto, other.reservationDto) && Objects.equals(studioInfo, other.studioInfo);
	}

		
}
