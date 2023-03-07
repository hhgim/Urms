package com.urms.log.dao;

import java.util.HashMap;
import java.util.List;

import com.urms.log.vo.LogVo;

public interface LogDao {

	LogVo login(HashMap<String, Object> map);

	void updateLog(HashMap<String, Object> map);


}
