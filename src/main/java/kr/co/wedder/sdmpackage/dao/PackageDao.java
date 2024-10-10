package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface PackageDao {

    List<PackageDetailDto>selectAllPackages();
    List<PackageDetailDto> selectBestPackages();
    List<PackageDetailDto> selectMDPickPackages();
    List<PackageDetailDto> selectPackageDetail(int packageId);
    List<PackageDetailDto>autocomplete(Map<String, Object> paramMap) throws Exception;
    List<PackageDetailDto> selectAllPackagesByCompany(String companyName);
    List<PackageDetailDto> selectPackagesByPriceRange(int minPrice, int maxPrice);
    List<CompanyScheduleDto> selectAvailableDateList(String companyName);
    List<CompanyScheduleDto> selectAvailableTimeList(String companyName, Date date);

}