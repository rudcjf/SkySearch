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
		
		Map<String, Object> resultMap = new HashMap<String, Object>() ;
		List<Object> resultList = new ArrayList<Object>();
		List<Object> resultCommentList = new ArrayList<Object>();
		List<Object> resultLanmarkList = new ArrayList<Object>();

		if ("main".equalsIgnoreCase(action)) {
			
			modelandView.setViewName(viewName);
			modelandView.addObject("paramMap", paramMap);
			modelandView.addObject("resultMap", resultMap);
			modelandView.addObject("resultList", resultList);
			
		} else if ("read".equalsIgnoreCase(action)) {
			
			resultMap = (Map<String, Object>) service.getObject(paramMap);
			resultCommentList = (List<Object>) service.getCommentList(paramMap);
			resultLanmarkList = (List<Object>) service.getLandmarkList(paramMap);
			
			modelandView.setViewName(viewName);
			modelandView.addObject("paramMap", paramMap);
			modelandView.addObject("resultMap", resultMap);
			modelandView.addObject("resultCommentList", resultCommentList);
			modelandView.addObject("resultLandmarkList", resultLanmarkList);
			
		} else if ("pagination".equalsIgnoreCase(action)) {
			
			resultMap = (Map<String, Object>) service.getListPagination(paramMap);
			
			modelandView.setViewName(viewName);
			modelandView.addObject("paramMap", paramMap);
			modelandView.addObject("resultMap", resultMap);
			modelandView.addObject("resultList", resultList);
			
		}
		
		return modelandView;
	}
}