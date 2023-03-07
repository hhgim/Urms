package com.urms.log.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.urms.log.dao.LogDao;
import com.urms.log.service.LogService;
import com.urms.log.vo.LogVo;

@Service("logService")
public class LogServiceImpl implements LogService {
	@Autowired
	LogDao logDao;
	
	@Override
	public LogVo login(HashMap<String, Object> map) {
		LogVo vo = logDao.login(map);
		return vo;
	}

	@Override
	public void updateLog(HashMap<String, Object> map) {
		logDao.updateLog(map);
	}
	
}
