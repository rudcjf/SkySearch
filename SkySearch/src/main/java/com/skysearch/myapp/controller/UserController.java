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
public class UserController {
	private final static String MAPPING = "/user/";

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
		if ("forgetIdPw".equalsIgnoreCase(action)) {
			//�α���ȭ�鿡�� ���̵� ��й�ȣ ã��
		} else if ("forgetId".equalsIgnoreCase(action)) {
			//
		} else if ("forgetPw".equalsIgnoreCase(action)) {
			//
		}else if("checkId".equalsIgnoreCase(action)) {
	        resultMap = (Map<Object, Object>) service.Find(paramMap);
	        
	        String NAME = (String)resultMap.get("NAME");
	        String PHONE = (String)resultMap.get("PHONE");
	         
			String name=(String)paramMap.get("name");//�Է��� �̸�, ����ȣ
			String phone=(String)paramMap.get("phone");	         
	         
	        if(NAME.equals(name)&&PHONE.equals(phone)) {//�̸�, ����ȣ  ��ġ�ϸ� ���̵� ã��
	        	 viewName = "/user/findId";
	             resultMap.put("EMAIL",(String)resultMap.get("EMAIL"));
	            }else {//��ġ���� ������,
	               viewName = "/user/forgetId";
	     }
	         
	      }else if("checkPw".equalsIgnoreCase(action)) {
	         resultMap = (Map<Object, Object>) service.Find(paramMap);
	         
	         String EMAIL = (String)resultMap.get("EMAIL");
		     String NAME = (String)resultMap.get("NAME");
		         
				String email=(String)paramMap.get("email");//�Է��� �̸�, ���̵�
				String name=(String)paramMap.get("name");	         
		         
		        if(NAME.equals(name)&&EMAIL.equals(email)) {//�̸�,���̵�  ��ġ�ϸ� ��й�ȣ ã��
		        	 viewName = "/user/findPw";
		             resultMap.put("PASSWORD",(String)resultMap.get("PASSWORD"));
		            }else {//��ġ���� ������,
		             viewName = "/user/forgetPw";
		            }
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