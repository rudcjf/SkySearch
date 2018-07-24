<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%-- <link type="text/css" href="<c:url value='/resources/vendor/bootstrap/css/specialmj.css'/>" rel="stylesheet" />
 --%>
<!-- Main Slider With Form -->
      <section class="osahan-slider">
         <div id="osahanslider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#osahanslider" data-slide-to="0" class="active"></li>
               <li data-target="#osahanslider" data-slide-to="1"></li>
               <li data-target="#osahanslider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
               <div class="carousel-item active" style="background-image: url('<c:url value='resources/img/slider/tokyo2.jpg'/>')">
              <!--     <div class="overlay"></div> -->
               </div>
               <div class="carousel-item" style="background-image: url('<c:url value='resources/img/slider/newyork01.jpg'/>')">
            <!--       <div class="overlay"></div> -->
               </div>
               <div class="carousel-item" style="background-image: url('<c:url value='resources/img/slider/paris01.jpg'/>')">
               <!--    <div class="overlay"></div> -->
               </div>
            </div>
            <a class="carousel-control-prev" href="#osahanslider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#osahanslider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
         </div>
         
         <script>
		// 지역을 선택했을 때 국가 가져오기
		function CountrySelect(value) {
			$.ajax({
					type : "GET", // 값을 보낼 방식
					url : "<c:url value='/ws/countyList'/>", // 보낼 컨트롤러
					data : { // 서버에 보낼 데이터 (key, value형식)
						"LOCAL_NAME" : value
					},
					success : function(result) { // result -> 컨트롤러에서 날라온 resultMap의 값
						var list = result.addList; // 자바 스크립트 내에서 쓸 수 있는 변수로 변환
						var category = "<option value='' selected>국가명</option>";

						$.each(list, function(i) { // select박스의 option값에 순차적으로 넣기
							category += "<option value='"
								+ (list[i])['COUNTRY_SEQ'] + "'>"
								+ (list[i])['COUNTRY_NAME']
								+ "</option>";
						});
						$("#country").html(category);

					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert("오류발생");
						return false;
					}
				});
			}
		
		// 국가를 선택했을 때 도시 가져오기
		function CitySelect(value) {
			$.ajax({
					type : "GET", // 값을 보낼 방식
					url : "<c:url value='/ws/cityList'/>", // 보낼 컨트롤러
					data : { // 서버에 보낼 데이터 (key, value형식)
						"COUNTRY_SEQ" : value
					},
					success : function(result) { // result -> 컨트롤러에서 날라온 resultMap의 값
						var list = result.addList; // 자바 스크립트 내에서 쓸 수 있는 변수로 변환
						var category = "<option value='' selected>도시명</option>";

						$.each(list, function(i) { // select박스의 option값에 순차적으로 넣기
							category += "<option value='"
								+ (list[i])['CITY_SEQ'] + "'>"
								+ (list[i])['CITY_NAME']
								+ "</option>";
						});
						$("#city").html(category);

					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert("오류발생");
						return false;
					}
				});
			}
	</script>
        
	<!-- 메인 특가 검색 slider-->
         <div class="slider-form">
            <div class="container">
               <h1 class="text-center text-white mb-5">Fly more, Pay less!</h1>
               <!-- 특가상품 검색: form태그 안에  데이터넣어 컨트롤러 보내야함. 최종적으로 도시시퀀스를 보내서 결과 출력한다 -->
               <form method="POST" action="<c:url value='/tripInfo/read'/>">
                  <div class="row no-gutters">
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-airplane"></i></div>
                           <select class="form-control select2 no-radius" id="local" name="LOCAL_NAME" onchange="CountrySelect(this.value);">
                              <option value="">여행지역</option>
								<option value="아시아">아시아</option>
								<option value="동남아시아">동남아시아</option>
								<option value="유럽">유럽</option>
								<option value="북아메리카">북아메리카</option>
								<option value="남아메리카">남아메리카</option>
								<option value="오세아니아">오세아니아</option>
                           </select>
                        </div>
                     </div>

                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-earth"></i></div>
                           <select class="form-control select2 no-radius" id="country" name="COUNTRY_SEQ" onchange="CitySelect(this.value);">
                              <option value="">국가명</option>
                           </select>
                        </div>
                     </div>

                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-city"></i></div>
                           <select class="form-control select2 no-radius" id="city" name="CITY_SEQ">
                              <option value="">도시명</option>
                            </select>
                        </div>
                     </div>
                   <div class="col-md-2">  
                        <button type="submit" class="btn btn-success btn-block no-radius font-weight-bold">SEARCH</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </section>
 <!-- End Main Slider With Form -->

      
<!-- 추천 특가 상품 List -->
<section class="section-padding bg-white">
	<div class="section-title text-center mb-5">
		<h2>항공사별 특가</h2>
		<p>빅 프로모션! 놓치지 마세요!</p>
		<div class="col-lg-2 col-md-2 sort-by-btn float-right">
			<!-- tooltip -->
			<div class="tooltipmj">
				<em>광고</em><i class="mdi mdi-help-circle-outline"></i> <span
					class="tooltiptextmj">
					<!-- tooltip-inner --> SKY search의 광고상품을 구입한 특가가 보여지는 영역입니다.
				</span>
			</div>
		</div>
	</div>


	<!-- 조회순 또는 최신순 6개/ 로그인 할 경우 회원의 관심 지역에 해당하는 상품들 중 랜덤으로 추천할 것 -->
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4">
				<div class="card card-list">
					<a href="https://www.jinair.com/promotion/index" target="_blank">
						<img class="card-img-top"
						src="<c:url value='/resources/img/special/jinair.jpg' />" alt="">
						<div class="card-body">
							<h5 class="card-title">지금 이순간 최저가를 한눈에!</h5>
						</div>
						<div class="card-footer">
							<span> <strong>진에어</strong></span>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="card card-list">
					<a
						href="https://www.eastarjet.com/newstar/PGWTA00001?searchIndex=undefined"
						target="_blank"> <img class="card-img-top"
						src="<c:url value='/resources/img/special/EASTARJET.jpg' />"
						alt="">
						<div class="card-body">
							<h5 class="card-title">EASTAR JET EVENT</h5>
						</div>
						<div class="card-footer">
							<span> <strong>이스타</strong></span>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="card card-list">
					<a
						href="https://www.twayair.com/together/event/listEventsInProgress.do"
						target="_blank"> <img class="card-img-top"
						src="<c:url value='/resources/img/special/TWAY.jpg' />" alt="">
						<div class="card-body">
							<h5 class="card-title">진행중인 이벤트</h5>
						</div>
						<div class="card-footer">
							<span> <strong>티웨이</strong></span>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4">
				<div class="card card-list">
					<a
						href="https://www.airbusan.com/content/common/flynjoy/flyNEvent/"
						target="_blank"> <img class="card-img-top"
						src="<c:url value='/resources/img/special/airbusan.jpg' />" alt="">
						<div class="card-body">
							<h5 class="card-title">Fly & EVENT</h5>
						</div>
						<div class="card-footer">
							<span> <strong>에어부산</strong></span>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="card card-list">
					<a
						href="https://kr.koreanair.com/korea/ko/detailDiscountTicket.html#step1"
						target="_blank"> <img class="card-img-top"
						src="<c:url value='/resources/img/special/koreanair.png' />"
						alt="">
						<div class="card-body">
							<h5 class="card-title">특가 항공권</h5>
						</div>
						<div class="card-footer">
							<span> <strong>대한항공</strong></span>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="card card-list">
					<a
						href="https://www.jejuair.net/jejuair/kr/com/jeju/ibe/news/event/event_list.do?page=1+&event_id=&condition=mix&nSearch=%ED%8A%B9%EA%B0%80"
						target="_blank"> <img class="card-img-top"
						src="<c:url value='/resources/img/special/jeju.jpg' />" alt="">
						<div class="card-body">
							<h5 class="card-title">진행중인 이벤트</h5>
						</div>
						<div class="card-footer">
							<span> <strong>제주항공</strong></span>
						</div>
					</a>
				</div>
			</div>

		</div>
	</div>
</section>
<!-- End 추천 특가 상품 List --> 

<!-- 여행지 : 조회수 높은 도시 출력 6개 할것 -->
<c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
<!-- 여행정보 리스트(상위 6개) -->
<section class="section-padding">
	<div class="section-title text-center mb-5">
		<h2>추천 여행지</h2>
	</div>
	<!--  로그인시 관심지역을 기준으로 조회수 많은순으로 6개를 나타낸다. -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="row">
					<c:forEach items="${resultUserCityList}" var="resultData" varStatus="loop">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_SEQ=${resultData.CITY_SEQ}&EMAIL=${principalName}">
								<c:choose>
									<c:when test="${resultData.CITY_SEQ==resultData.SOURCE_UNIQUE_SEQ}">
										<img class="card-img-top" src="<c:url value='/resources/uploads/${resultData.PHYSICALFILE_NAME}'/>" alt="Card image cap" style="height:30%;">
									</c:when>
									<c:otherwise>
										<img class="card-img-top" src="<c:url value='/resources/uploads/noimage.jpg'/>" alt="Card image cap" style="height:30%;">
									</c:otherwise>
								</c:choose>
								<div class="card-body">
									<span class="badge badge-white">
									<b class="mdi mdi-trending-up">&nbsp;조회수 : ${resultData.CITY_VIEWS}</b>
									</span>
									<!-- 유저 평점을 뿌려주기 위한 forEach문 --> 
									<c:forEach items="${resultAvgStarList}" var="resultData2" varStatus="loop">
										<c:choose>
											<c:when test="${resultData.CITY_NAME == resultData2.CITY_NAME}">
												<span class="badge badge-white"> 
												<b class="mdi mdi-star">&nbsp;유저 평점 : ${resultData2.AVG_STAR}</b>
												</span>
											</c:when>
										</c:choose>
									</c:forEach>
									<h6>${resultData.CITY_NAME}</h6>
									<span class="mb-0">${resultData.CITY_ADD}</span>
								</div>
							 </a>
						</div>
					</div>
					</c:forEach>
					<!-- 로그인 되지 않은 유저일 경우 조회수 많은 순으로 6개를 나타내준다. -->
					<c:if test="${principalName == null}">
					<c:forEach items="${resultNoUserCityList}" var="resultData" varStatus="loop">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_SEQ=${resultData.CITY_SEQ}&EMAIL=${principalName}">
								<c:choose>
									<c:when test="${resultData.CITY_SEQ==resultData.SOURCE_UNIQUE_SEQ}">
										<img class="card-img-top" src="<c:url value='/resources/uploads/${resultData.PHYSICALFILE_NAME}'/>" alt="Card image cap" style="height:30%;">
									</c:when>
									<c:otherwise>
										<img class="card-img-top" src="<c:url value='/resources/uploads/noimage.jpg'/>" alt="Card image cap" style="height:30%;">
									</c:otherwise>
								</c:choose>
								<div class="card-body">
									<span class="badge badge-white">
									<b class="mdi mdi-trending-up">&nbsp;조회수 : ${resultData.CITY_VIEWS}</b>
									</span>
									<!-- 유저 평점을 뿌려주기 위한 forEach문 --> 
									<c:forEach items="${resultAvgStarList}" var="resultData2" varStatus="loop">
										<c:choose>
											<c:when test="${resultData.CITY_NAME == resultData2.CITY_NAME}">
												<span class="badge badge-white"> 
												<b class="mdi mdi-star">&nbsp;유저 평점 : ${resultData2.AVG_STAR}</b>
												</span>
											</c:when>
										</c:choose>
									</c:forEach>
									<h6>${resultData.CITY_NAME}</h6>
									<span class="mb-0">${resultData.CITY_ADD}</span>
								</div>
							 </a>
						</div>
					</div>
					</c:forEach>					
					</c:if>
				</div>
			</div>
		</div>
	</div>
</section>



