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

import com.skysearch.myapp.service.MemberService;


@Controller
public class MemberController {
	private final static String MAPPING = "/member/";
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {

		String viewName = MAPPING + action ;
		String forwardView = (String) paramMap.get("forwardView") ;

		Map<Object, Object> resultMap = new HashMap<Object, Object>() ;
		List<Object> resultList = new ArrayList<Object>();

		// divided depending on action value
	
		if ("list".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList(paramMap);
		} else if ("read".equalsIgnoreCase(action)) {
			resultMap = (Map<Object, Object>) service.getObject(paramMap);
		} else if ("edit".equalsIgnoreCase(action)) {
			resultMap = (Map<Object, Object>) service.getObject(paramMap);
		} else if ("merge".equalsIgnoreCase(action)) {
			resultMap = (Map<Object, Object>) service.saveObject(paramMap);
		} else if ("disable".equalsIgnoreCase(action)) {
			service.deleteObject(paramMap);
			resultMap = (Map<Object,Object>) service.getObject(paramMap);
		} 
		/*
		 * else if ("update".equalsIgnoreCase(action)) { } resultMap = (Map<String,
		 * Object>) service.getObject(paramMap); paramMap.put("action", action); } else
		 * if ("merge".equalsIgnoreCase(action)) { resultMap = (Map<String, Object>)
		 * service.saveObject(paramMap); } else if ("read".equalsIgnoreCase(action)) {
		 * resultMap = (Map<String, Object>) service.getObject(paramMap); } else if
		 * ("list".equalsIgnoreCase(action)) { resultList = (List<Object>)
		 * service.getList(paramMap); } else if ("delete".equalsIgnoreCase(action)) {
		 * resultList = (List<Object>) service.deleteObject(paramMap); }
		 */
		if(forwardView != null){
			viewName = forwardView;
		}
		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
	}
}