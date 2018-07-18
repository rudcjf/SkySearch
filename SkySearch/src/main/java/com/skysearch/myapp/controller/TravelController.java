/**
 * It's Designed For incubation Center
 * @author ohsanghun
 * @version     %I%, %G%
 * @since       1.0
 */
package com.skysearch.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skysearch.myapp.service.TravelService;


@Controller
public class TravelController {
	private final static String MAPPING = "/tripInfo/";
	
	@Autowired
	private TravelService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action, ModelAndView modelandView) {

		String viewName = MAPPING + action ;
		
		Map<String, Object> resultMap = new HashMap<String, Object>(); 
		Map<String, Object> resultMemberMap = new HashMap<String, Object>();
		Map<String, Object> resultPaginationMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		List<Object> resultAvgStarList = new ArrayList<Object>();
		List<Object> resultAllCityList = new ArrayList<Object>();
		List<Object> resultLandmarkList = new ArrayList<Object>();
		
		// 여행정보 메인화면
		if ("main".equalsIgnoreCase(action)) {
			
			resultList = (List<Object>) service.getCityList(paramMap);
			resultAvgStarList = (List<Object>) service.getAvgStarList(paramMap);
			resultAllCityList = (List<Object>) service.getCityList2(paramMap);
			
			modelandView.setViewName(viewName);
			modelandView.addObject("paramMap", paramMap);
			modelandView.addObject("resultMap", resultMap);
			modelandView.addObject("resultList", resultList);
			modelandView.addObject("resultAvgStarList", resultAvgStarList);
			modelandView.addObject("resultAllCityList", resultAllCityList);
		
		// 여행정보 리드화면
		} else if ("read".equalsIgnoreCase(action)) {
			
			resultMap = (Map<String, Object>) service.getObject(paramMap);
			resultMemberMap = (Map<String, Object>) service.getMemberSeq(paramMap);
			resultLandmarkList = (List<Object>) service.getLandmarkList(paramMap);
			resultPaginationMap = (Map<String, Object>) service.getListPagination(paramMap);
			
			modelandView.setViewName(viewName);
			modelandView.addObject("paramMap", paramMap);
			modelandView.addObject("resultMap", resultMap);
			modelandView.addObject("resultMemberMap", resultMemberMap);
			modelandView.addObject("resultLandmarkList", resultLandmarkList);
			modelandView.addObject("resultPaginationMap", resultPaginationMap);	
			
		// 여행정보 댓글 수정 팝업	
		} else if ("popup".equalsIgnoreCase(action)) {
			
			resultMap = (Map<String, Object>) service.modCommentSet(paramMap);
			
			modelandView.addObject("resultMap", resultMap);
			modelandView.setViewName("tripInfo/popup");
			
		} 
		
		return modelandView;
	}
}