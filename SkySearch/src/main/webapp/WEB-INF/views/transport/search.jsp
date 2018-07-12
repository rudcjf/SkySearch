<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:forEach items = "${resultList}" var="resultList" varStatus = "loop">
	<c:forEach items = "${resultList}" var="resultData" varStatus = "loop">
	<ol>
		<li>
			  <a href="${resultData.url}" target="_blank">${resultData.title} </a><br> 
				
		</li>
	</ol>
	</c:forEach>  
</c:forEach>  