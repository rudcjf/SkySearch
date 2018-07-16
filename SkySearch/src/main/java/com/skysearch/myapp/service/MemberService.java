package com.skysearch.myapp.service;

import java.util.List;
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
	public Object getPepList(Object dataMap) {
		String sqlMapId = "member.read";
		
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		
		return resultObject;
	}

	public Object getObject(Object dataMap) {
		String sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object saveObject(Map<Object, Object> paramMap) {
		String uniqueSequence = new String(); 
				uniqueSequence=(String) paramMap.get("MEMBER_SEQ");

		if (uniqueSequence==null) {
			uniqueSequence = commonUtil.getUniqueSequence();
			paramMap.put("MEMBER_SEQ", uniqueSequence);
		}
		paramMap.put("REGISTER_SEQ", "UUID-1111-1111111");
		paramMap.put("MODIFIER_SEQ", "UUID-1111-1111111");
		
		String sqlMapId = "member.merge";

		Object resultKey = dao.saveObject(sqlMapId, paramMap);
		
		sqlMapId = "int_local.insert";
		System.out.println(paramMap.toString());
		List<Object> temp = (List<Object>)(paramMap.get("LOCAL_SEQ"));
		System.out.println(temp.toString());
		dao.saveObject(sqlMapId, paramMap);
		
		sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, paramMap);

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
		
		sqlMapId = "int_local.insert";
		dao.saveObject(sqlMapId, dataMap);
		
		System.out.println((int)resultKey);
		sqlMapId = "member.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	
	public Object deleteObject(Object dataMap) {
		String sqlMapId = "member.delete";

		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);

		// get Member List
		sqlMapId = "member.read";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}
	public Object deleteObjectAdmin(Object dataMap) {
		String sqlMapId = "member.deleteAdmin";
		
		Integer resultKey = (Integer) dao.deleteObject(sqlMapId, dataMap);
		
		// get Member List
		sqlMapId = "member.list";
		
		Object resultObject = dao.getList(sqlMapId, dataMap);
		
		return resultObject;
	}
	//�쉶�뜝�룞�삕�뜝�룞�삕�뜝�떛�벝�삕, �쉶�뜝�룞�삕 �뜝�룞�삕艅섇뜝�떕占� 李얍뜝�룞�삕
	public Object Find(Object dataMap) {
	      String sqlMapId ="member.check";
	      Object resultObject = dao.getObject(sqlMapId,dataMap);
	      return resultObject;
	   }

}
