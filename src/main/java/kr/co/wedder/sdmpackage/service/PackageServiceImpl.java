package kr.co.wedder.sdmpackage.service;

import kr.co.wedder.sdmpackage.dao.PackageDao;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<Map<String, Object>> autocomplete(Map<String, Object> paramMap) throws Exception {

        List<Map<String, Object>> result = packageDao.autocomplete(paramMap);
        System.out.println("Service Result: " + result);
        return result;
    }

//    @Override
//    public List<PackageDetailDto> searchPackages(String query) {
//
//        System.out.println("Service: getAllPackages 호출됨");
//        return packageDao.searchPackages(query);
//    }
}