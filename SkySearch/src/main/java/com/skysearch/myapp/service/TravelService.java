package com.skysearch.myapp.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skysearch.myapp.dao.ShareDao;
import com.skysearch.myapp.util.CommonUtil;

@Service
public class TravelService {

	@Autowired
	private ShareDao dao;
	
	// 도시정보, 관광지정보 뿌려주기
	public Object getObject(Map<String, Object> dataMap) {
		
		// 클릭시 그 도시의 조회수 증가
		String sqlMapId = "travel.view";
		dao.updateObject(sqlMapId, dataMap);
		
		// 도시 및 관광지 정보 가져오기
		sqlMapId = "travel.read";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
	}
	
	// 관심지역별 도시 리스트, 도시별 관광지 리스트
	public Object getList(Object dataMap) {
		
		String sqlMapId = "";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;
	}
	
	// 동적 셀렉트 박스
	public Object getSelectList(Object dataMap) {
		
		String sqlMapId = "travel.country";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;
	}

}
