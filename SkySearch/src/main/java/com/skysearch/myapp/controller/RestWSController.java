package com.skysearch.myapp.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.skysearch.myapp.service.CityService;
import com.skysearch.myapp.service.LocalService;
import com.skysearch.myapp.service.MemberService;



@RestController
public class RestWSController {


	
	@Autowired
	private LocalService localService;
	@Autowired
	private CityService cityService;
	
	@Autowired
	private MemberService memberservice;
	
	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET, RequestMethod.POST },
			        produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable
		String action) {
		Object resultObject = new Object();
		
		if("localList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getList(paramMap);
		} else if("cityList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) cityService.getList(paramMap);
		} else if("memberList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getLocalList(paramMap);
		}
		return resultObject;
	  }
	
	
}
