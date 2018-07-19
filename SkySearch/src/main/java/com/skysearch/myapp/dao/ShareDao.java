package com.skysearch.myapp.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShareDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Object getList(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectList(sqlMapId, dataMap);

		return result;
	}

	public Object getObject(String sqlMapId, Object dataMap) {
		Object result = sqlSession.selectOne(sqlMapId, dataMap);
		
		return result;
	}

	public Object saveObject(String sqlMapId, Object dataMap) {
		Integer result = sqlSession.insert((String)sqlMapId, dataMap);
		
		return result;
	}
	
	public void updateObject(String sqlMapId, Object dataMap) {
		sqlSession.update(sqlMapId, dataMap);
	}
	
	public Object deleteObject(String sqlMapId, Object dataMap) {
		Integer result = sqlSession.update(sqlMapId,dataMap);
		return result;
	}
	
	public void insertObject(String sqlMapId, Object dataMap) {
		sqlSession.insert(sqlMapId, dataMap);
	}

}
