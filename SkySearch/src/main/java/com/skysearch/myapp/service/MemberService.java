package com.skysearch.myapp.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skysearch.myapp.dao.ShareDao;
import com.skysearch.myapp.util.CommonUtil;

@Service
public class MemberService {

	@Autowired
	private ShareDao dao;

	@Autowired
	private CommonUtil commonUtil;

	public Object getList(Object dataMap) {
		String sqlMapId = "member.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object saveObject(Map<String, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("MEMBER_SEQ");

		if ("".equals(uniqueSequence)) {
			uniqueSequence = commonUtil.getUniqueSequence();
			dataMap.put("MEMBER_SEQ", uniqueSequence);
		}
		dataMap.put("REGISTER_SEQ", "UUID-1111-1111111");
		dataMap.put("MODIFIER_SEQ", "UUID-1111-1111111");
		
		String sqlMapId = "member.merge";

		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		
		sqlMapId = "int_local.insert";
		dao.saveObject(sqlMapId, dataMap);
		
		sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}
	public Object saveObjectAdmin(Map<Object, Object> dataMap) {
		String uniqueSequence = (String) dataMap.get("MEMBER_SEQ");
		
		if ("".equals(uniqueSequence)) {
			uniqueSequence = commonUtil.getUniqueSequence();
			dataMap.put("MEMBER_SEQ", uniqueSequence);
		}
		dataMap.put("REGISTER_SEQ", "UUID-1111-1111111");
		dataMap.put("MODIFIER_SEQ", "UUID-1111-1111111");
		
		String sqlMapId = "member.merge";
		
		Object resultKey = dao.saveObject(sqlMapId, dataMap);
		System.out.println((int)resultKey);
		sqlMapId = "member.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object deleteObject(Object dataMap) {
		// delete child record authority
		String sqlMapId = "member.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "member.list";

		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}
}
