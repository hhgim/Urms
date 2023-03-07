package com.urms.log.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.urms.log.vo.LogVo;

public interface LogService {

	LogVo login(HashMap<String, Object> map);

	void updateLog(HashMap<String, Object> map);


}
