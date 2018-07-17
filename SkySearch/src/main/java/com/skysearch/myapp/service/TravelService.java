package com.skysearch.myapp.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skysearch.myapp.dao.ShareDao;
import com.skysearch.myapp.util.Pagination;

@Service
public class TravelService {

	@Autowired
	private ShareDao dao;
	
	// read화면 - 로그인 한 유저의 관심지역의 모든 도시리스트 가져오기(조회수별 상위6개)
	public Object getCityList(Object dataMap) {
		
		String sqlMapId = "travel.citylist";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;
		
	}
	
	// 도시정보 가져오기
	public Object getObject(Map<String, Object> dataMap) {
		
		// 클릭시 그 도시의 조회수 증가
		String sqlMapId = "travel.view";
		dao.updateObject(sqlMapId, dataMap);
		
		// 도시 및 관광지 정보 가져오기
		sqlMapId = "travel.read";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
	
	}
	
	// 멤버시퀀스 가져오기
	public Object getMemberSeq(Map<String, Object> dataMap) {
		
		String sqlMapId = "travel.member";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
		
	}
	
	// 댓글 리스트 가져오기
	public Object getCommentList(Object dataMap) {
		
		String sqlMapId = "travel.comment";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;

	}
	
	// 댓글 쓰기
	public void setComment(Object dataMap) {
		
		String sqlMapId = "travel.setcomment";
		dao.insertObject(sqlMapId, dataMap);
		
	}
	
	// 댓글 가져오기
	public Object modCommentSet(Object dataMap) {

		String sqlMapId = "travel.modcommentset";
		Object resultObject = dao.getObject(sqlMapId, dataMap);
		return resultObject;
		
	}
	
	// 댓글 수정하기
	public void modComment(Object dataMap) {
		
		String sqlMapId = "travel.modcomment";
		dao.updateObject(sqlMapId, dataMap);
		
	}
	
	// 댓글 지우기
	public void delComment(Object dataMap) {
		
		String sqlMapId = "travel.delcomment";
		dao.deleteObject(sqlMapId, dataMap);
		
	}
	
	// 관광지 리스트 가져오기
	public Object getLandmarkList(Object dataMap) {
		
		String sqlMapId = "travel.landmark";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;

	}
	
	// 동적 셀렉트 박스 - 국가정보 가져오기
	public Object getSelectCountry(Object dataMap) {
		
		String sqlMapId = "travel.country";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;
		
	}
	
	// 동적 셀렉트 박스 - 도시정보 가져오기
	public Object getSelectCity(Object dataMap) {
		
		String sqlMapId = "travel.city";
		Object resultObject = dao.getList(sqlMapId, dataMap);
		return resultObject;
		
	}
	
	// 페이징 적용하기
	public Object getListPagination(Object dataMap) {

		Map<String, Object> resultMap = new HashMap<String, Object>() ;
		String sqlMapId = "travel.totalcount";
		int totalCount = (int) dao.getObject(sqlMapId, dataMap);
		int currentPage = 1;
		if(((Map<String,Object>) dataMap).get("curPage") != null) {
			currentPage = Integer.valueOf(((Map<String, String>) dataMap).get("curPage"));
		}
		Pagination pagination = new Pagination(totalCount, currentPage); // 댓글의 총 갯수와, 하나의 페이지당 들어갈 컬럼수
		resultMap.put("pagination", pagination);
		sqlMapId = "travel.listpagination";
		((Map<String, Object>) dataMap).put("pagination", pagination);
		Object resultList = dao.getList(sqlMapId, dataMap);
		resultMap.put("resultList", resultList);
		return resultMap;
		
	}
	
}
