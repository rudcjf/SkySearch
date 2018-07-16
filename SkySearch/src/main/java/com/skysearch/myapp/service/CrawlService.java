package com.skysearch.myapp.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedCaseInsensitiveMap;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class CrawlService {

	
	
	public Object getListMIT(Map<String,Object> dataMap) {
		List<Object> resultObject = new ArrayList<Object>();
	

		resultObject.add(getAsiana());
		resultObject.add(getJejuair1());
		resultObject.add(getJejuair2());
		//resultObject.add(getBusanair());
		
		return resultObject;
	}
	
	
	public List getAsiana() {
		List resultList = new ArrayList<>();
		try {
			Document doc ;
			Map<String,Object> resultMap ;
			
			doc = Jsoup.connect("https://flyasiana.com/C/KR/KO/event/index?menuId=CM201802220000728482").get();
			
			Elements questions = doc.select("li");
			Elements question = questions.select("a");
			
			for(Element e : question){
				resultMap = new HashMap<String,Object>();
				if(e.attr("class").contains("inner_box")) {
					if(e.text().contains("특가")) {
						StringBuffer sb = new StringBuffer();
						sb.append("https://flyasiana.com/C/KR/KO/event");
						sb.append(e.getElementsByAttribute("href").attr("href").substring(1));
						
						resultMap.put("title",e.text());
						resultMap.put("url",sb);
						
						//System.out.println(e.text());
						resultList.add(resultMap);
					}
				}
			}
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultList;
		
		
	}
	
	public List getJejuair1() {
		List resultList = new ArrayList<>();
		try {
			Document doc ;
			Map<String,Object> resultMap ;
			
			//resultMap = new HashMap<String,Object>();
			doc = Jsoup.connect("https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_list.do?page=&event_id=&nSearch=%ED%8A%B9%EA%B0%80&condition=mix&search=%ED%8A%B9%EA%B0%80").get();
			
			Elements questions = doc.select("li");
			Elements question = questions.select("div");

			for (Element e : question) {
				if (e.attr("class").contains("item")) {
					resultMap = new HashMap<>();
					resultMap.put("title", e.text());
					//System.out.println(e.text());
					
					StringTokenizer tok = new StringTokenizer(e.getElementsByAttribute("href").attr("href"), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ(' ):,;");
					
					int[] array = new int[2];
					int a = 0;
					while(tok.hasMoreTokens()){
						//System.out.println(tok.nextToken());
						array[a] = Integer.parseInt(tok.nextToken());
						//System.out.println(">>"+a+">>"+array[a]);
						a++;
						
						
					}
					
					StringBuffer sb = new StringBuffer();
					sb.append("https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_detail.do?page=");
					sb.append(array[0]);
					sb.append("&event_id=");
					sb.append(array[1]);
					sb.append("&nSearch=%ED%8A%B9%EA%B0%80&condition=mix&search=%ED%8A%B9%EA%B0%80");
					System.out.println(sb);
					
					resultMap.put("url", sb);
					resultList.add(resultMap);
				}
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultList;
	}
	
	public List getJejuair2() {
		List resultList = new ArrayList<>();
		try {
			Document doc ;
			Map<String,Object> resultMap ;
			
			//resultMap = new HashMap<String,Object>();
			doc = Jsoup.connect("https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_list.do?page=&event_id=&nSearch=%ED%94%84%EB%A1%9C%EB%AA%A8%EC%85%98&condition=mix&search=%ED%94%84%EB%A1%9C%EB%AA%A8%EC%85%98").get();
			
			Elements questions = doc.select("li");
			Elements question = questions.select("div");

			for (Element e : question) {
				if (e.attr("class").contains("item")) {
					resultMap = new HashMap<>();
					resultMap.put("title", e.text());
					//System.out.println(e.text());
					
					StringTokenizer tok = new StringTokenizer(e.getElementsByAttribute("href").attr("href"), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ(' ):,;");
					
					int[] array = new int[2];
					int a = 0;
					while(tok.hasMoreTokens()){
						//System.out.println(tok.nextToken());
						array[a] = Integer.parseInt(tok.nextToken());
						//System.out.println(">>"+a+">>"+array[a]);
						a++;
						
						
					}
					
					StringBuffer sb = new StringBuffer();
					sb.append("https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_detail.do?page=");
					sb.append(array[0]);
					sb.append("&event_id=");
					sb.append(array[1]);
					sb.append("&nSearch=%ED%8A%B9%EA%B0%80&condition=mix&search=%ED%8A%B9%EA%B0%80");
					System.out.println(sb);
					
					resultMap.put("url", sb);
					resultList.add(resultMap);
				}
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultList;
	}
	
	
	public List getBusanair() {
		List resultList = new ArrayList<>();
		

		
		
		
		try {
			Document doc ;
			Map<String,Object> resultMap ;
			
			//resultMap = new HashMap<String,Object>();
			//doc = Jsoup.connect("https://www.airbusan.com/content/common/flynjoy/flyNEvent/").get();
			doc = Jsoup.connect("https://www.airbusan.com/content/EventApi/listInProgress?lang=ko").get();
			
			Elements questions = doc.select("ul.listEventProgress");
			//System.out.println("결과갑 : " +doc.html());
			//Elements questions = doc.select("script");
			
			//Elements question = questions.select("a");
			
			String[] tempArr = doc.html().split("linkKo"); //[1] [3] [5] [7] [9]
			System.out.println(tempArr.length+">>>>>길이");
			for(int i=1; i<tempArr.length; i=i+2) {
				String[] tempArr2 = tempArr[i].split(",\"linkEn");
				System.out.println("경로 : " + tempArr2[0]);
			}
			
			

			for (Element e : questions) {
				//if (e.attr("class").contains("item")) {
					resultMap = new HashMap<>();
					resultMap.put("title", e.text());
					System.out.println(e.text());
					
//					StringTokenizer tok = new StringTokenizer(e.getElementsByAttribute("href").attr("href"), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ(' ):,;");
//					
//					int[] array = new int[2];
//					int a = 0;
//					while(tok.hasMoreTokens()){
//						//System.out.println(tok.nextToken());
//						array[a] = Integer.parseInt(tok.nextToken());
//						//System.out.println(">>"+a+">>"+array[a]);
//						a++;
//						
//						
//					}
					

				//}
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return resultList;
		
		
	}
	
	
}
