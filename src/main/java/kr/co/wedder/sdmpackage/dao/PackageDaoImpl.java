package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PackageDaoImpl implements PackageDao {

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.PackageMapper.";

    @Override
    public List<PackageDto> selectBestPackages() {

        System.out.println("DAO: selectBestPackages 호출됨");
        return sqlSession.selectList(namespace + "selectBestPackage");
    }

    @Override
    public List<PackageDto> selectMDPickPackages() {

        System.out.println("DAO: selectMDPickPackages 호출됨");
        return sqlSession.selectList(namespace + "selectMDPickPackage");
    }

    @Override
    public List<PackageDetailDto> selectPackageDetail(int packageId) {

        System.out.println("DAO: selectPackageDetail 호출됨");
        return sqlSession.selectList(namespace + "selectPackageDetail");
    }
}
