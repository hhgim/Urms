package com.urms.log.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.urms.log.dao.LogDao;
import com.urms.log.vo.LogVo;


@Repository("logDao")
public class LogDaoImpl implements LogDao {
	@Autowired
	SqlSession sql;

	@Override
	public LogVo login(HashMap<String, Object> map) {
		LogVo vo = sql.selectOne("Log.login",map);
		return vo;
	}

	@Override
	public void updateLog(HashMap<String, Object> map) {
		sql.update("Log.update",map);
		
	}
	
}
