package kr.co.wedder.calendar.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;
import kr.co.wedder.calendar.domain.SearchItem;

import java.util.List;
import java.util.Map;

@Repository
public class CalendarDaoImpl implements CalendarDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace ="kr.co.wedder.calendar.dao.CalendarMapper.";
	
	
	@Override
	public int delete(Integer scheduleId) throws Exception {
		return session.delete(namespace+"delete",scheduleId);
	}

	@Override
	public int deleteAll() throws Exception {
		return session.delete(namespace + "deleteAll");
	}

//	@Override
//	public List<CompanyScheduleDto> selectpage(Map map) throws Exception {
//		return List.of();
//	}

	@Override
	public int insert(CompanyScheduleDto dto) throws Exception {
		return session.insert(namespace+"insert", dto);
	}

	@Override
	public CompanyScheduleDto select(Integer scheduleId) throws Exception {
		return session.selectOne(namespace+"select",scheduleId);
	}

	@Override
	public int searchResultCnt(SearchItem sc) throws Exception {
		return session.selectOne(namespace+"searchResultCnt",sc);
	}

	@Override
	public List<CompanyScheduleDto> searchSelectPage(SearchItem sc) {
		return session.selectList(namespace + "searchSelectPage", sc);
	}


}
