package com.skysearch.myapp;

import java.security.Principal;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skysearch.myapp.component.MapParamCollector;
import com.skysearch.myapp.service.TravelService;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private TravelService service;
	// Simply selects the home view to render by returning its name.

	@RequestMapping(value = "/", method = {RequestMethod.GET})
	public ModelAndView home(@RequestParam Map<String, Object> paramMap, Locale locale, Model model, ModelAndView modelandView, Principal principal) {
//		Map<Object, Object> paramMap = paramMethodMap.getMap();
		String viewName = "/home/index";
		if(principal==null) {
			
		}else {
			paramMap.put("EMAIL", principal.getName());
		}
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		Map<String, Object> resultCityMap = new HashMap<String, Object>();
		Map<String, Object> resultMemberMap = new HashMap<String, Object>();
		Map<String, Object> resultPaginationMap = new HashMap<String, Object>();
		List<Object> resultUserCityList = new ArrayList<Object>();
		List<Object> resultAvgStarList = new ArrayList<Object>();
		List<Object> resultNoUserCityList = new ArrayList<Object>();
		List<Object> resultLandmarkList = new ArrayList<Object>();
		
		resultUserCityList = (List<Object>) service.getUserCityList(paramMap);
		resultAvgStarList = (List<Object>) service.getAvgStarList(paramMap);
		resultNoUserCityList = (List<Object>) service.getNoUserCityList(paramMap);

		modelandView.setViewName(viewName);
		modelandView.addObject("resultCityMap", resultCityMap);
		modelandView.addObject("resultUserCityList", resultUserCityList);
		modelandView.addObject("resultAvgStarList", resultAvgStarList);
		modelandView.addObject("resultNoUserCityList", resultNoUserCityList);

		model.addAttribute("serverTime", formattedDate);
		return modelandView;
	}

	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String Login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "/home/login";
	}

	@RequestMapping(value = "/signup", method = { RequestMethod.GET, RequestMethod.POST })
	public String SignUp(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "/home/signup";
	}

}
