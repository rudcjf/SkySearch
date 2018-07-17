package com.skysearch.myapp.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skysearch.myapp.dao.ShareDao;
import com.skysearch.myapp.util.CommonUtil;

@Service
public class AdminMainService {

	@Autowired
	private ShareDao dao;


	public Object getList(Object dataMap) {
		String sqlMapId = "chart.member";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}
	
	public Object getObject(Object dataMap) {
		String sqlMapId = "ti.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

}
