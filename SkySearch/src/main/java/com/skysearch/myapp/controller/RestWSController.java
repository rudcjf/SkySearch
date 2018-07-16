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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.skysearch.myapp.service.CityService;
import com.skysearch.myapp.service.LocalService;
import com.skysearch.myapp.service.MemberService;
import com.skysearch.myapp.service.TravelService;
import com.skysearch.myapp.util.CommonUtil;

@RestController
public class RestWSController {

	@Autowired
	private CommonUtil commonUtil;
	@Autowired
	private LocalService localService;
	@Autowired
	private CityService cityService;
	@Autowired
	private TravelService travelService;
	@Autowired
	private MemberService memberservice;
	
	@RequestMapping(value = "/ws/{action}", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public Object actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action) {
		
		Object resultObject = new Object();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		
		if("localList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getList(paramMap);
		} else if("memberList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getLocalList(paramMap);
		} else if("ciList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) cityService.getCiList(paramMap);
		} else if("coList".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) cityService.getCoList(paramMap);
		} else if("checkLocal".equalsIgnoreCase(action)) {
			resultObject = (List<Object>) localService.getCheckLocal(paramMap);
		} else if("idcheck".equalsIgnoreCase(action)) {
	         
	         String id=(String) paramMap.get("M_ID");
	         Object result = memberservice.checkID(paramMap);
	         return result;
	       
		}
		
		return resultObject;
	  }

	// 援�媛� �젙蹂� 媛��졇�삤�뒗 硫붿꽌�뱶
	@RequestMapping(value = "/ws/countyList", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public @ResponseBody Map<String, Object> Country(@RequestParam Map<String, Object> paramMap) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map> resultList = new ArrayList<>();
		
		resultList = (List<Map>) travelService.getSelectCountry(paramMap);
		resultMap.put("addList", resultList);

		return resultMap;
	}
	
	// �룄�떆 �젙蹂� 媛��졇�삤�뒗 硫붿꽌�뱶
	@RequestMapping(value = "/ws/cityList", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public @ResponseBody Map<String, Object> City(@RequestParam Map<String, Object> paramMap) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map> resultList = new ArrayList<>();
		
		resultList = (List<Map>) travelService.getSelectCity(paramMap);
		resultMap.put("addList", resultList);

		return resultMap;
	}
	
	// �뙎湲� �엯�젰�븯�뒗 硫붿꽌�뱶
	@RequestMapping(value = "/ws/commentSet", method = { RequestMethod.GET, RequestMethod.POST }, produces = "application/json")
	public void CommentSet(@RequestParam Map<String, Object> paramMap) {
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map> resultList = new ArrayList<>();
		
		paramMap.put("COMMENT_SEQ", commonUtil.getUniqueSequence());
		paramMap.put("MEMBER_SEQ", "SYSUID-SS066"); // �엫�쓽濡� �꽔�뼱�넃�� 硫ㅻ쾭�떆���뒪 媛�
		travelService.setComment(paramMap);
	}
	
}

