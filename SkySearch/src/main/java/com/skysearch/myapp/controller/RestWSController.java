package com.skysearch.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.skysearch.myapp.service.CityService;
import com.skysearch.myapp.service.LocalService;
import com.skysearch.myapp.service.MemberService;
import com.skysearch.myapp.service.TravelService;

@RestController
public class RestWSController {

	@Autowired
	private LocalService localService;
	@Autowired
	private CityService cityService;
	@Autowired
	private TravelService travelService;
	@Autowired
	private MemberService memberservice;
	
	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action) {
		
		Object resultObject = new Object();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("localList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getList(paramMap);
		}  else if("memberList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getLocalList(paramMap);
		} 
		return resultObject;
	  }

	// 국가 정보 가져오는 메서드
	@RequestMapping(value = "/ws/countyList", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public @ResponseBody Map<String, Object> Country(@RequestParam Map<String, Object> paramMap) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map> resultList = new ArrayList<>();
		
		resultList = (List<Map>) travelService.getSelectCountry(paramMap);
		resultMap.put("addList", resultList);

		return resultMap;
	}
	
	// 도시 정보 가져오는 메서드
	@RequestMapping(value = "/ws/cityList", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public @ResponseBody Map<String, Object> City(@RequestParam Map<String, Object> paramMap) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map> resultList = new ArrayList<>();
		
		resultList = (List<Map>) travelService.getSelectCity(paramMap);
		resultMap.put("addList", resultList);

		return resultMap;
	}
	
}

