

<c:forEach item = "${resultList}" var="resultData" varStatus = "loop">
	<ol>
		<li>
			<a href="${resultList}" target="_blank">${resultList}</a>
		</li>
	</ol>
</c:forEach>