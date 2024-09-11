package kr.co.wedder.sdmpackage.dao;

import kr.co.wedder.sdmpackage.domain.PackageDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PackageDaoImpl implements PackageDao {

    @Autowired
    private SqlSession sqlSession;
    private static String namespace = "kr.co.wedder.dao.PackageMapper";

    @Override
    public List<PackageDto> selectBestPackages() {
        return sqlSession.selectList(namespace + "selectBestPackage");
    }

    @Override
    public List<PackageDto> selectMDPickPackages() {
        return sqlSession.selectList(namespace + "selectMDPickPackage");
    }
}
