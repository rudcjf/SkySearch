package com.skysearch.myapp.component;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.skysearch.myapp.util.FileUtil;

public class CustomizeMethodArgumentResolver implements HandlerMethodArgumentResolver {

	@Override
	public boolean supportsParameter(MethodParameter methodParameter) {
		// TODO Auto-generated method stub
		return MapParamCollector.class.isAssignableFrom(methodParameter.getParameterType());
	}

	@Autowired
	FileUtil fileUtil;

	@Override
	public Object resolveArgument(MethodParameter methodParameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {

		Class<?> clazz = methodParameter.getParameterType();
		MapParamCollector requestMap = new MapParamCollector();
		if (clazz.equals(MapParamCollector.class)) {
			HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
			Enumeration<?> enumeration = request.getParameterNames();
			while (enumeration.hasMoreElements()) {
				String key = (String) enumeration.nextElement();
				//List<Object> values = A
				//if (values != null) {
				//	requestMap.put(key, (values.length > 1) ? values : values[0]);
				//}
			}

			if (request instanceof MultipartHttpServletRequest) {
				MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
				requestMap.put("attachFileList", fileUtil.setMultipartList(multipartRequest));
			}
		}
		return requestMap;
	}

}
