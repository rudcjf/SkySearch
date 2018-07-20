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

	/**
	 * 크롤링하는 메소드 호출
	 * 
	 * @param dataMap
	 * @return
	 */
	public Object getListMIT(Map<String, Object> dataMap) {
		List<Object> resultObject = new ArrayList<Object>();

		resultObject.add(getAsiana());
		resultObject.add(getJejuair());
		resultObject.add(getTway());

		// resultObject.add(getSeoulair());
		//resultObject.add(geteastarjet());
		// resultObject.add(getBusanair());
		 resultObject.add(getjinair());

		return resultObject;
	}

	/**
	 * Asiana crawling
	 * 
	 * @return list
	 */
	public List getAsiana() {

		List resultList = new ArrayList<>();

		try {
			Document doc;
			Map<String, Object> resultMap;

			doc = Jsoup.connect("https://flyasiana.com/C/KR/KO/event/index?menuId=CM201802220000728482").get();

			Elements questions = doc.select("li");
			Elements question = questions.select("a");

			for (Element e : question) {
				resultMap = new HashMap<String, Object>();

				if (e.attr("class").contains("inner_box")) {
					if (e.text().contains("특가")) {
						StringBuffer sb = new StringBuffer();
						sb.append("https://flyasiana.com/C/KR/KO/event");
						sb.append(e.getElementsByAttribute("href").attr("href").substring(1));

						resultMap.put("img", e.getElementsByAttribute("src").attr("src"));
						resultMap.put("title", e.select("em").text());
						resultMap.put("period", e.select("span.date").text());
						resultMap.put("url", sb);
						resultMap.put("alt", e.getElementsByAttribute("alt").attr("alt"));
						resultMap.put("flight", "아시아나항공");

						resultList.add(resultMap);
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	/**
	 * Jeju air crawling
	 * 
	 * @return
	 */
	public List getJejuair() {

		List resultList = new ArrayList<>();

		try {
			Document doc;
			Map<String, Object> resultMap;

			doc = Jsoup.connect(
					"https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_list.do?page=1&event_id=&nSearch=&condition=content&search=")
					.get();

			Elements questions = doc.select("li");
			Elements question = questions.select("div");

			for (Element e : question) {
				if (e.attr("class").contains("item")) {
					if (e.text().contains("프로모션") || e.text().contains("특가")) {

						resultMap = new HashMap<>();
						resultMap.put("title", e.select("span.subject").text());
						resultMap.put("period", e.select("span.date").text());
						resultMap.put("img", e.getElementsByAttribute("src").attr("src"));
						resultMap.put("alt", e.getElementsByAttribute("alt").attr("alt"));
						resultMap.put("flight", "제주항공");

						StringTokenizer tok = new StringTokenizer(e.getElementsByAttribute("href").attr("href"),
								"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ(' ):,;");

						int[] array = new int[2];
						int a = 0;

						while (tok.hasMoreTokens()) {
							array[a] = Integer.parseInt(tok.nextToken());
							a++;

						}

						StringBuffer sb = new StringBuffer();
						sb.append("https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_detail.do?page=");
						sb.append(array[0]);
						sb.append("&event_id=");
						sb.append(array[1]);
						sb.append("&nSearch=%ED%8A%B9%EA%B0%80&condition=mix&search=%ED%8A%B9%EA%B0%80");
						resultMap.put("url", sb);

						resultList.add(resultMap);
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	// 부산항공 사이트 크롤링 >>json방식 >>미완
	public List getBusanair() {
		List resultList = new ArrayList<>();

		try {
			Document doc;
			Map<String, Object> resultMap;

			// resultMap = new HashMap<String,Object>();
			// doc =
			// Jsoup.connect("https://www.airbusan.com/content/common/flynjoy/flyNEvent/").get();
			doc = Jsoup.connect("https://www.airbusan.com/content/EventApi/listInProgress?lang=ko").get();

			Elements questions = doc.select("ul.listEventProgress");
			// System.out.println("결과갑 : " +doc.html());
			// Elements questions = doc.select("script");

			// Elements question = questions.select("a");

			String[] tempArr = doc.html().split("linkKo"); // [1] [3] [5] [7] [9]
			System.out.println(tempArr.length + ">>>>>길이");
			for (int i = 1; i < tempArr.length; i = i + 2) {
				String[] tempArr2 = tempArr[i].split(",\"linkEn");
				System.out.println("경로 : " + tempArr2[0]);
			}

			for (Element e : questions) {
				// if (e.attr("class").contains("item")) {
				resultMap = new HashMap<>();
				resultMap.put("title", e.text());
				System.out.println(e.text());

				// StringTokenizer tok = new
				// StringTokenizer(e.getElementsByAttribute("href").attr("href"),
				// "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ(' ):,;");
				//
				// int[] array = new int[2];
				// int a = 0;
				// while(tok.hasMoreTokens()){
				// //System.out.println(tok.nextToken());
				// array[a] = Integer.parseInt(tok.nextToken());
				// //System.out.println(">>"+a+">>"+array[a]);
				// a++;
				//
				//
				// }

				// }
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	// 이스타 사이트 크롤링 >>js방식 >>미완
	public List geteastarjet() {
		List resultList = new ArrayList<>();
		try {
			Document doc;
			Map<String, Object> resultMap;

			doc = Jsoup.connect("https://www.eastarjet.com/newstar/PGWTA00001?searchIndex=undefined").get();
			System.out.println("결과값");
			System.out.println(">>" + doc.html());

			//Elements questions = doc.select("ul");
			// Elements question = questions.select("a");

			/*
			 * for (Element e : questions) { if (e.attr("class").contains("event")) { if
			 * (e.text().contains("프로모션") || e.text().contains("특가") ||
			 * e.text().contains("예약")) { resultMap = new HashMap<>();
			 * 
			 * resultMap.put("title", e.select("strong").text()); //resultMap.put("period",
			 * e.select("span.date").text()); resultMap.put("img",
			 * e.getElementsByAttribute("src").attr("src")); resultMap.put("alt",
			 * e.getElementsByAttribute("alt").attr("alt")); resultMap.put("flight",
			 * "이스타항공");
			 * 
			 * StringTokenizer tok = new
			 * StringTokenizer(e.getElementsByAttribute("href").attr("href"),
			 * "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ(' ):,;");
			 * 
			 * int[] array = new int[2]; int a = 0; while (tok.hasMoreTokens()) { array[a] =
			 * Integer.parseInt(tok.nextToken()); a++;
			 * 
			 * }
			 * 
			 * StringBuffer sb = new StringBuffer(); sb.append(
			 * "https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_detail.do?page="
			 * ); sb.append(array[0]); sb.append("&event_id="); sb.append(array[1]);
			 * sb.append(
			 * "&nSearch=%ED%8A%B9%EA%B0%80&condition=mix&search=%ED%8A%B9%EA%B0%80");
			 * 
			 * resultMap.put("url", sb); resultList.add(resultMap); } } }
			 */

		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	/**
	 * tway crawling
	 * 
	 * @return list
	 */
	public List getTway() {

		List resultList = new ArrayList<>();

		try {
			Document doc;
			Map<String, Object> resultMap;

			doc = Jsoup.connect("https://www.twayair.com/together/event/listEventsInProgress.do").get();

			Elements questions = doc.select("div.eventList");
			Elements question = questions.select("a");

			for (Element e : question) {
				if (e.text().contains("프로모션") || e.text().contains("특가") || e.text().contains("예약")
						|| e.text().contains("여행")) {
					resultMap = new HashMap<>();

					resultMap.put("title", e.select("h4").text());
					resultMap.put("period", e.select("p.mt5").text());
					resultMap.put("img", e.getElementsByAttribute("src").attr("src"));
					resultMap.put("alt", e.getElementsByAttribute("alt").attr("alt"));
					resultMap.put("flight", "티웨이");
					resultMap.put("url",
							"https://www.twayair.com/together/event/" + e.getElementsByAttribute("href").attr("href"));

					resultList.add(resultMap);
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	/**
	 * 에어서울
	 * @return
	 */
	public List getSeoulair() {

		List resultList = new ArrayList<>();

		try {
			Document doc;
			Map<String, Object> resultMap;

			doc = Jsoup.connect("https://flyairseoul.com/CW/ko/ingEvent.do").get();

			System.out.println(">>>" + doc.html());
			Elements questions = doc.select("div.eventList");
			Elements question = questions.select("a");

			for (Element e : question) {
				if (e.text().contains("프로모션") || e.text().contains("특가") || e.text().contains("예약")
						|| e.text().contains("여행")) {
					resultMap = new HashMap<>();

					resultMap.put("title", e.select("h4").text());
					resultMap.put("period", e.select("p.mt5").text());
					resultMap.put("img", e.getElementsByAttribute("src").attr("src"));
					resultMap.put("alt", e.getElementsByAttribute("alt").attr("alt"));
					resultMap.put("flight", "티웨이");
					resultMap.put("url",
							"https://www.twayair.com/together/event/" + e.getElementsByAttribute("href").attr("href"));

					resultList.add(resultMap);
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}
	
	/**
	 * 진에어
	 * @return
	 */
	public List getjinair() {

		List resultList = new ArrayList<>();

		try {
			Document doc;
			Map<String, Object> resultMap;

			doc = Jsoup.connect("https://www.jinair.com/promotion/eventList").get();

			System.out.println(">>>" + doc.html());
			/*Elements questions = doc.select("div.eventList");
			Elements question = questions.select("a");

			for (Element e : question) {
				if (e.text().contains("프로모션") || e.text().contains("특가") || e.text().contains("예약")
						|| e.text().contains("여행")) {
					resultMap = new HashMap<>();

					resultMap.put("title", e.select("h4").text());
					resultMap.put("period", e.select("p.mt5").text());
					resultMap.put("img", e.getElementsByAttribute("src").attr("src"));
					resultMap.put("alt", e.getElementsByAttribute("alt").attr("alt"));
					resultMap.put("flight", "티웨이");
					resultMap.put("url",
							"https://www.twayair.com/together/event/" + e.getElementsByAttribute("href").attr("href"));

					resultList.add(resultMap);
				}
			}*/

		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultList;
	}

}
