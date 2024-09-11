package kr.co.wedder.sdmpackage.service;

import kr.co.wedder.sdmpackage.dao.PackageDao;
import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PackageServiceImpl implements PackageService{

    private PackageDao packageDao;


    @Override
    public List<PackageDto> getBestPackages() {
        List<PackageDto> packages = packageDao.selectBestPackages();
            return packages;
        }

    @Override
    public List<PackageDto> getMDPickPackages() {
        return null;
    }

//    @Override
//    public PackageDetailDto getPackageDetail(int packageId) {
//        return null;
//    }
}