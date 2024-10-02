package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.sdmpackage.domain.PackageDetailDto;
import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class PackageDaoImpl implements PackageDao {

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.PackageMapper.";

    @Override
    public List<PackageDetailDto> selectAllPackages() {

        return sqlSession.selectList(namespace + "selectAllPackage");
    }

    @Override
    public List<PackageDetailDto> selectBestPackages() {

        return sqlSession.selectList(namespace + "selectBestPackage");
    }

    @Override
    public List<PackageDetailDto> selectMDPickPackages() {

        return sqlSession.selectList(namespace + "selectMDPickPackage");
    }

    @Override
    public List<PackageDetailDto> selectPackageDetail(int packageId) {

        return sqlSession.selectList(namespace + "selectCompanyInPackage", packageId);
    }

    @Override
    public List<PackageDetailDto> autocomplete(Map<String, Object> paramMap) throws Exception {

        return sqlSession.selectList(namespace + "autocomplete", paramMap);
    }

    // 전체 패키지 검색
    @Override
    public List<PackageDetailDto> selectAllPackagesByCompany(String companyName) {

        return sqlSession.selectList(namespace + "selectAllPackagesByCompanyName", companyName);
    }

    // 금액별 패키지 필터링
    @Override
    public List<PackageDetailDto> selectPackagesByPriceRange(int minPrice, int maxPrice) {

        Map map = new HashMap<>();
        map.put("minPrice", minPrice);
        map.put("maxPrice", maxPrice);

        return sqlSession.selectList(namespace + "selectPackagesByPriceRange", map);
    }
}
