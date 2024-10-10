package kr.co.wedder.sdmpackage.service;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface PackageService {

    List<PackageDetailDto> getAllPackages();
    List<PackageDetailDto> getBestPackages();
    List<PackageDetailDto> getMDPickPackages();
    List<PackageDetailDto> getPackageDetail(int packageId);
    List<PackageDetailDto> autocomplete(Map<String, Object> paramMap) throws Exception;
    List<PackageDetailDto> searchPackagesByCompany(String companyName);
    List<PackageDetailDto> filterPackagesByPrice(int minPrice, int maxPrice);
    List<CompanyScheduleDto> getAvailableDateList(String companyName);
    List<CompanyScheduleDto> getAvailableTimeList(String companyName, Date date);
}
