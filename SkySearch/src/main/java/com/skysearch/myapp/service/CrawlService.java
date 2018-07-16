package com.skysearch.myapp.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

@Service
public class CrawlService {

	
	public Object getListMIT(Map<String,Object> dataMap) {
		List<Object> resultObject = new ArrayList<Object>();
		Document doc;
		try {
			//String url =
			String departDate = dataMap.get("depart").toString().replace("-", "").substring(2);
			//System.out.println(departDate+">>>>>>>>>>>>>>>>>>>>>>>>>>>");
			//doc = Jsoup.connect("https://www.skyscanner.co.kr/transport/flights/"
				//	+ dataMap.get("location1") +"/"+ dataMap.get("location2") +"/"+ departDate +"/?adults=1&children=0&adultsv2=1&childrenv2=&infants=0&cabinclass=economy&rtn=0&preferdirects=false&outboundaltsenabled=false&inboundaltsenabled=false&ref=home#results").get();
			doc = Jsoup.connect("https://www.skyscanner.co.kr/transport/flights/bcn/sela/180712/?adults=1&children=0&adultsv2=1&childrenv2=&infants=0&cabinclass=economy&rtn=0&preferdirects=false&outboundaltsenabled=true&inboundaltsenabled=false&ref=home#results").get();
			String url = doc.html();
			System.out.println(">>>>>>>>>>>>>"+url);
			Elements questions = doc.select(".day-list-item .ItinerariesContainer__dayListItem-sWySG");
			System.out.println(questions.html());
			for(Element link:questions) {
				if(link.attr("class").contains("airline-name")) {
					System.out.println("here");
					resultObject.add(questions.text());
				}
			}
		}catch(IOException e) {
			e.printStackTrace();
			
		}
		return resultObject;
	}
}
