package kr.co.wedder.sdmpackage.service;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import java.util.List;

public interface PackageService {

    List<PackageDto> getAllPackages();
    List<PackageDto> getBestPackages();
    List<PackageDto> getMDPickPackages();
    List<PackageDetailDto> getPackageDetail(int packageId);
    List<PackageDetailDto> searchPackages(String query);
}
