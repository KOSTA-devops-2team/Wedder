package kr.co.wedder.calendar.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.wedder.calendar.domain.CompanyScheduleDto;

@Repository
public class CalendarDaoImpl implements CalendarDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace ="kr.co.wedder.calendar.dao.CalendarMapper.";
	
	
	@Override
	public int delete(Integer schedule_id) throws Exception {
		return session.delete(namespace+"delete",schedule_id);
	}

	@Override
	public int deleteAll() throws Exception {
		return session.delete(namespace + "deleteAll");
	}

	@Override
	public int insert(CompanyScheduleDto dto) throws Exception {
		return session.insert(namespace+"insert", dto);
	}

}
