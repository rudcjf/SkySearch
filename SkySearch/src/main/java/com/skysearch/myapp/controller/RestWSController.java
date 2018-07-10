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



@RestController
public class RestWSController {


	
	@Autowired
	private LocalService localService;
	@Autowired
	private CityService cityService;
	
	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET, RequestMethod.POST },
			        produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable
		String action) {
		Object resultObject = new Object();
		
		if("localList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getList(paramMap);
		} else if("cityList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) cityService.getList(paramMap);
		}
		/*else if ("organizationList".equalsIgnoreCase(action)) {
		resultObject = (List<Object>) organizationService.getList(paramMap);
	    } else if ("authorityID".equalsIgnoreCase(action)) {
		resultObject = (List<Object>) authorityService.getList(paramMap);
	   } */
		return resultObject;
	  }
	
	
}
