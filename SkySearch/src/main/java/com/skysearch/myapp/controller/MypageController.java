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
public class MypageController {
	private final static String MAPPING = "/mypage/";

	@Autowired
	private MemberService service;

	@RequestMapping(value = MAPPING + "{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {

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
			resultMap = (Map<Object, Object>) service.saveObject(paramMap);
		} else if ("withdrawal".equalsIgnoreCase(action)) {
			service.deleteObject(paramMap);
			resultMap = (Map<Object, Object>) service.getObject(paramMap);
			
			//회원탈퇴, 아이디와 비번이 일치하믄 회원의 enable을 n으로 바꾼다
			
//			String id=(String)paramMap.get("email");//입력한 이메일과 비밀번호
//			String pw=(String)paramMap.get("password");
//			
//			resultMap = (Map<Object, Object>) service.membercheck(paramMap);//DB에 저장된 이메일과 비번
//			String email = (String)resultMap.get("EMAIL");
//			String pass = (String)resultMap.get("PASSWORD");
//			
//			if(id.equals(email)&&pw.equals(pass)) {//이메일과 비번이 일치하면 
//				service.deleteObject(paramMap);
//				resultList = (List<Object>) service.getList(paramMap);
//			}else {
//				viewName = "/mypage/withdrawalfail";
//			}
			
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
