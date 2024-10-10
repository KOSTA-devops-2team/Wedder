package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;

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
}