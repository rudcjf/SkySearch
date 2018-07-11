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
import org.springframework.web.bind.annotation.RestController;

import com.skysearch.myapp.service.TravelService;


@RestController
public class RestWSController {

	@Autowired
	private TravelService service;

	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if ("country".equalsIgnoreCase(action)) {
			
			resultList = (List<Object>) service.getSelectList(paramMap);
		} 
		
		return resultList;
	}
	
}
