package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;

import java.util.List;

public interface PackageDao {

    List<PackageDto> selectBestPackages();
    List<PackageDto> selectMDPickPackages();
    List<PackageDetailDto> selectPackageDetail(int packageId);

}