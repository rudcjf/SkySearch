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

		//로그인화면에서 아이디 비밀번호 찾기
		if ("forgetIdPw".equalsIgnoreCase(action)) {
			//아이디 찾기 실패시
		} else if ("forgetId".equalsIgnoreCase(action)) {
			//비밀번호 찾기 실패시
		} else if ("forgetPw".equalsIgnoreCase(action)) {
			//아이디 찾기
		}else if("checkId".equalsIgnoreCase(action)) {
	        resultMap = (Map<Object, Object>) service.Find(paramMap);
	        
	        String NAME = (String)resultMap.get("NAME");
	        String PHONE = (String)resultMap.get("PHONE");
	        
			String name=(String)paramMap.get("name");//입력한 이름, 폰번호
			String phone=(String)paramMap.get("phone");	         
	         
	        if(NAME.equals(name)&&PHONE.equals(phone)) {//이름, 폰번호  일치하면 아이디 찾음
	             viewName = "/user/findId";
	             resultMap.put("EMAIL",(String)resultMap.get("EMAIL"));
	        }else {//일치하지 않으면,
	               viewName = "/user/forgetId";
	         }
	     //비밀번호 찾기
		}else if("checkPw".equalsIgnoreCase(action)) {
	         resultMap = (Map<Object, Object>) service.Find(paramMap);
	         
	         String EMAIL = (String)resultMap.get("EMAIL");
		     String NAME = (String)resultMap.get("NAME");
		         
				String email=(String)paramMap.get("email");//입력한 이름, 아이디
				String name=(String)paramMap.get("name");	         
		         
		        if(NAME.equals(name)&&EMAIL.equals(email)) {//이름,아이디  일치하면 비밀번호 찾음
		        	 viewName = "/user/findPw";
		             resultMap.put("PASSWORD",(String)resultMap.get("PASSWORD"));
		            }else {//일치하지 않으면,
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
