package kr.co.wedder.sdmpackage.service;

import kr.co.wedder.sdmpackage.dao.PackageDao;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PackageServiceImpl implements PackageService{

    @Autowired
    private PackageDao packageDao;

    @Override
    public List<PackageDto> getBestPackages() {

        System.out.println("Service: getBestPackages 호출됨");
        return packageDao.selectBestPackages();
        }

    @Override
    public List<PackageDto> getMDPickPackages() {

        System.out.println("Service: getMDPickPackages 호출됨");
        return packageDao.selectMDPickPackages();
    }


    @Override
    public PackageDetailDto getPackageDetail(int packageId) {
        return null;
    }
}