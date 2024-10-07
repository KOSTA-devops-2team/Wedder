package kr.co.wedder.sdmpackage.service;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.sdmpackage.dao.PackageDao;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class PackageServiceImpl implements PackageService{

    @Autowired
    private PackageDao packageDao;

    @Override
    public List<PackageDetailDto> getAllPackages() {
        return packageDao.selectAllPackages();
    }

    @Override
    public List<PackageDetailDto> getBestPackages() {

        return packageDao.selectBestPackages();
        }

    @Override
    public List<PackageDetailDto> getMDPickPackages() {

        return packageDao.selectMDPickPackages();
    }

    @Override
    public List<PackageDetailDto> getPackageDetail(int packageId) {

        System.out.println("Service: getPackageDetail 호출됨");

        return packageDao.selectPackageDetail(packageId);
    }

    @Override
    public List<PackageDetailDto> autocomplete(Map<String, Object> paramMap) throws Exception {

        List<PackageDetailDto> result = packageDao.autocomplete(paramMap);
        System.out.println("Service Result: " + result);
        return result;
    }

    @Override
    public List<PackageDetailDto> searchPackagesByCompany(String companyName) {

        return packageDao.selectAllPackagesByCompany(companyName);
    }

    @Override
    public List<PackageDetailDto> filterPackagesByPrice(int minPrice, int maxPrice) {

        System.out.println("PackageServiceImpl.filterPackagesByPrice");
        return packageDao.selectPackagesByPriceRange(minPrice, maxPrice);
    }

    @Override
    public List<CompanyScheduleDto> getAvailableDateList(String companyName) {
        System.out.println("PackageServiceImpl : companyName " + companyName);

        List<CompanyScheduleDto> availableDates = packageDao.selectAvailableDateList(companyName);

        // 결과가 없는 경우 빈 리스트 반환
        if (availableDates.isEmpty()) {
            // 원하는 처리 방식: 로그 출력 또는 예외 던지기
            System.out.println("해당 조건에 맞는 스케줄이 없습니다.");
        }

        System.out.println("PackageServiceImpl : result" + availableDates);
        return availableDates != null ? availableDates : new ArrayList<>();
    }

    @Override
    public List<CompanyScheduleDto> getAvailableTimeList(String companyName, Date date) {

        System.out.println("PackageServiceImpl : companyName" + companyName);
        System.out.println("PackageServiceImpl : date" + date);

        List<CompanyScheduleDto> result = packageDao.selectAvailableTimeList(companyName, date);

        // 결과가 없는 경우 빈 리스트 반환
        if (result.isEmpty()) {
            // 원하는 처리 방식: 로그 출력 또는 예외 던지기
            System.out.println("해당 조건에 맞는 스케줄이 없습니다.");
        }

        System.out.println("PackageServiceImpl : result" + result);
        return result;
    }
}
