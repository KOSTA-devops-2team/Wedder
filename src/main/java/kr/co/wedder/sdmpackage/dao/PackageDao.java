package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.sdmpackage.domain.PackageDto;

import java.util.List;

public interface PackageDao {

    List<PackageDto> selectBestPackages();
    List<PackageDto> selectMDPickPackages();
}
