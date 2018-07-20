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

import com.skysearch.myapp.component.MapParamCollector;
import com.skysearch.myapp.service.MemberService;

@Controller
public class MypageController {
	private final static String MAPPING = "/mypage/";

	@Autowired
	private MemberService service;

	@RequestMapping(value = MAPPING + "{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(MapParamCollector paramMethodMap, @PathVariable String action,
			ModelAndView modelandView) {

		Map<Object, Object> paramMap = paramMethodMap.getMap();
		String viewName = MAPPING + action;
		String forwardView = (String) paramMap.get("forwardView");

		Map<Object, Object> resultMap = new HashMap<Object, Object>();
		List<Object> resultList = new ArrayList<Object>();

		// divided depending on action value
		if ("list".equalsIgnoreCase(action)) {
			resultList = (List<Object>) service.getList(paramMap);
		} else if ("read".equalsIgnoreCase(action)) {
			resultMap = (Map<Object, Object>) service.getObject(paramMap);
		} else if ("edit".equalsIgnoreCase(action)) {
			resultMap = (Map<Object, Object>) service.getObject(paramMap);
		} else if ("merge".equalsIgnoreCase(action)) {
			service.saveObject(paramMap);
		} else if ("withdrawal".equalsIgnoreCase(action)) {
			
		} else if ("disable".equalsIgnoreCase(action)) {
			String id=(String)paramMap.get("email");//�Է��� �̸��ϰ� ��й�ȣ
			String pw=(String)paramMap.get("password");
     
			resultMap = (Map<Object, Object>) service.Find(paramMap);
			
			String email = (String)resultMap.get("EMAIL");
			String pass = (String)resultMap.get("PASSWORD");
			
			if(id.equals(email)&&pw.equals(pass)) {//�̸��ϰ� ����� ��ġ�ϸ� 
				service.deleteObject(paramMap);
				/*viewName = "/home/index";*/
			}else {
				viewName = "/mypage/withdrawalfail";
			}
		} else if("contact".equalsIgnoreCase(action)) {
			service.sendObject(paramMap);
		}
		if (forwardView != null) {
			viewName = forwardView;
		}

		modelandView.setViewName(viewName);

		modelandView.addObject("paramMap", paramMap);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);

		return modelandView;
	}
}
