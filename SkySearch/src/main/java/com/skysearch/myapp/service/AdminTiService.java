package com.skysearch.myapp.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skysearch.myapp.dao.ShareDao;
import com.skysearch.myapp.util.CommonUtil;

@Service
public class AdminTiService {

	@Autowired
	private ShareDao dao;

	@Autowired
	private CommonUtil commonUtil;

	public Object getList(Object dataMap) {
		String sqlMapId = "ti.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "ti.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("TRAVEL_SEQ");

		if ("".equals(uniqueSequence)) {
			uniqueSequence = commonUtil.getUniqueSequence();
			dataMap.put("TRAVEL_SEQ", uniqueSequence);
		}
		dataMap.put("REGISTER_SEQ", "UUID-1111-1111111");
		dataMap.put("MODIFIER_SEQ", "UUID-1111-1111111");
		
		String sqlMapId = "ti.merge";

		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		System.out.println((int)resultKey);
		sqlMapId = "ti.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "authorityRmember.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// delete Mother record authority
		sqlMapId = "ti.delete";

		resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "ti.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}
	public Object saveCity(Map<String, Object> dataMap) {
		String uniqueCountrySequence = (String) dataMap.get("COUNTRY_SEQ");
		
			
		if ("".equals(uniqueCountrySequence)) {
			uniqueCountrySequence = commonUtil.getUniqueSequence();
			dataMap.put("COUNTRY_SEQ", uniqueCountrySequence);
		}
		
		String sqlMapId = "ti.countrymerge";
		
		String uniqueCitySequence = (String) dataMap.get("CITY_SEQ");
		
		
		if ("".equals(uniqueCitySequence)) {
			uniqueCitySequence = commonUtil.getUniqueSequence();
			dataMap.put("CITY_SEQ", uniqueCitySequence);
		}
		
		sqlMapId = "ti.citymerge";
		
		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		System.out.println((int)resultKey);
		sqlMapId = "ti.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;
		

	}
}
