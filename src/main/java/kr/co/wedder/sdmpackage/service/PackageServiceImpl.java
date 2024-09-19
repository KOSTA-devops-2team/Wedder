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
    public List<PackageDto> getAllPackages() {
        return packageDao.selectAllPackages();
    }

    @Override
    public List<PackageDto> getBestPackages() {

        return packageDao.selectBestPackages();
        }

    @Override
    public List<PackageDto> getMDPickPackages() {

        return packageDao.selectMDPickPackages();
    }

    @Override
    public List<PackageDetailDto> getPackageDetail(int packageId) {

        System.out.println("Service: getPackageDetail 호출됨");

        return packageDao.selectPackageDetail(packageId);
    }

    @Override
    public List<PackageDetailDto> searchPackages(String query) {

        System.out.println("Service: getAllPackages 호출됨");
        return packageDao.searchPackages(query);
    }
}