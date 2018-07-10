package com.skysearch.myapp.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/aboutUs")
public class AboutUsController{
	@RequestMapping(value = "/{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView edit(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {
		String viewName = "/aboutUs/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();

		viewName = viewName + action;
		modelandView.setViewName(viewName);
		return modelandView;
	}



}
