<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
               <div class="carousel-item active" style="background-image: url('resources/img/slider/paris.jpg')">
                  <div class="overlay"></div>
               </div>
               <div class="carousel-item" style="background-image: url('resources/img/slider/newyork01.png')">
                  <div class="overlay"></div>
               </div>
               <div class="carousel-item" style="background-image: url('resources/img/slider/swiss.jpg')">
                  <div class="overlay"></div>
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
            <h2>추천 항공권 특가</h2>
            <p>빅 프로모션! 놓치지 마세요!</p>
            <div class="col-lg-2 col-md-2 sort-by-btn float-right">
             <!-- tooltip -->
            	<div class="tooltipmj" >
            	<em>광고</em><i class="mdi mdi-help-circle-outline"></i>
            	 <span class="tooltiptextmj"><!-- tooltip-inner -->
	              SKY search의 광고상품을 구입한 특가가 보여지는 영역입니다.</span>
                </div>
            </div>         
         </div>
   
         
<!-- 조회순 또는 최신순 6개/ 로그인 할 경우 회원의 관심 지역에 해당하는 상품들 중 랜덤으로 추천할 것 -->
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="<c:url value='/specialPrice/read'/>">
                        <span class="badge badge-danger">HOT</span><!-- 뱃지 ->빨간(danger):조회수 기준 이상(예 100아성),흑색(secondary): 마감, 노란색(warning): 마감임박 -->
                        <img class="card-img-top" src="<c:url value='/resources/img/special/thumb_1.png'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">제주항공 찜 특가<!-- 이부분은 특가 게시판 제목입니다 --></h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i>다낭, 베트남<!-- 이부분은 도시명,국가명입니다 --> </h6>
                           <h2 class="text-success mb-0 mt-3"> 140,000원 ~ <!-- 이부분은 특가정보 가격입니다 --></h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-airplane"></i> 항공사 : <strong>제주항공<!--이 부분은 특가정보의 항공사명입니다 --></strong></span>
                           <span><i class="mdi mdi-checkbox-marked-outline"></i> 특가 종료일 : <strong>18.07.24<!-- 이부분은 특가상품의 종료일입니다  --></strong></span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-danger">HOT</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/philadelphia.png'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">특가상품의 제목</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i>도시명,국가명</h6>
                           <h2 class="text-success mb-0 mt-3">특가상품 가격</h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사명</strong></span>
                           <span><i class="mdi mdi-checkbox-marked-outline"></i> 특가 종료일 : <strong>특가상품의 종료일</strong></span>
                        </div>
                     </a>
                  </div>
               </div>               
               
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-danger">HOT</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/london.png'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">특가상품의 제목</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i>도시명,국가명</h6>
                           <h2 class="text-success mb-0 mt-3">특가상품 가격</h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사명</strong></span>
                           <span><i class="mdi mdi-checkbox-marked-outline"></i> 특가 종료일 : <strong>특가상품의 종료일</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-warning">마감임박</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/paris.jpg'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">특가상품의 제목</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i>도시명,국가명</h6>
                           <h2 class="text-success mb-0 mt-3">특가상품 가격</h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사명</strong></span>
                           <span><i class="mdi mdi-checkbox-marked-outline"></i> 특가 종료일 : <strong>특가상품의 종료일</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-warning">마감임박</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/swiss.jpg'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">특가상품의 제목</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i>도시명,국가명</h6>
                           <h2 class="text-success mb-0 mt-3">특가상품 가격</h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사명</strong></span>
                           <span><i class="mdi mdi-checkbox-marked-outline"></i> 특가 종료일 : <strong>특가상품의 종료일</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-secondary">마감</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/newyork02.jpg'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">특가상품의 제목</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i>도시명,국가명</h6>
                           <h2 class="text-success mb-0 mt-3">특가상품 가격</h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사명</strong></span>
                           <span><i class="mdi mdi-checkbox-marked-outline"></i> 특가 종료일 : <strong>특가상품의 종료일</strong></span>
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
<section class="section-padding">
	<div class="section-title text-center mb-5">
		<h2>여행지 맞춤 추천 (조회수 순)</h2>
	</div>
	<!--  로그인시 관심지역을 기준으로 조회수 많은순으로 6개를 나타낸다. -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="row">
					<c:forEach items="${resultList}" var="resultData" varStatus="loop">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_SEQ=${resultData.CITY_SEQ}&EMAIL=${principalName}">
							    <img class="card-img-top" src="<c:url value='/resources/img/blog/tokyo1.jpg'/>" alt="Card image cap">
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
					<c:forEach items="${resultAllCityList}" var="resultData" varStatus="loop">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_SEQ=${resultData.CITY_SEQ}&EMAIL=${principalName}">
							    <img class="card-img-top" src="<c:url value='/resources/img/blog/tokyo1.jpg'/>" alt="Card image cap">
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


      
<!-- 추천 여행지 : 조회수 높은 도시 출력 6개 할것 -->
     <%--  <section class="section-padding">
         <div class="section-title text-center mb-5">
            <h2>인기 여행지 정보</h2>
            <p>나만의 여행계획을 세워보세요</p>
         </div>
         <!--  회원가입시 관심지역을 기준으로 나타냅니다. -->
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark card-overlay">
                     <a href="<c:url value='/tripInfo/read'/>?CITY_NAME=<%='괌'%>">
                        <img class="card-img" src="<c:url value='/resources/img/blog/tripinfo1.jpg'/>" alt="Card image">
                      <div class="card-img-overlay">
                           <h3 class="card-title text-white">괌<!-- 도시명 --></h3>
                           <p class="card-text text-white">미국<!-- 국가명 --> </p>
                           <span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
                        </div>
                      </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark text-white card-overlay">
                     <a href="#">
                        <img class="card-img" src="<c:url value='/resources/img/overlay/newyork01.png'/>" alt="Card image"/>
                        <div class="card-img-overlay">
                           <h3 class="card-title text-white">New York</h3>
                           <p class="card-text text-white">USA<!--국가명  --></p>
                           <span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark text-white card-overlay">
                     <a href="#">
                        <img class="card-img" src="<c:url value='/resources/img/overlay/la.png'/>" alt="Card image"/>
                        <div class="card-img-overlay">
                           <h3 class="card-title text-white">Los Angeles</h3>
                           <p class="card-text text-white">USA<!--국가명  --></p>
                           <span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark text-white card-overlay">
                     <a href="#">
                        <img class="card-img" src="<c:url value='/resources/img/overlay/chicago.png'/>" alt="Card image"/>
                        <div class="card-img-overlay">
                           <h3 class="card-title text-white">Chicago</h3>
                           <p class="card-text text-white">USA<!--국가명  --></p>
                           <span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
                        </div>
                     </a>
                     .    
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark text-white card-overlay">
                     <a href="#">
                        <img class="card-img" src="<c:url value='/resources/img/overlay/philadelphia.png'/>" alt="Card image"/>
                        <div class="card-img-overlay">
                           <h3 class="card-title text-white">Philadelphia</h3>
                           <p class="card-text text-white">USA<!--국가명  --></p>
                           <span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark text-white card-overlay">
                     <a href="#">
                        <img class="card-img" src="<c:url value='/resources/img/overlay/philadelphia.png'/>" alt="Card image"/>
                        <div class="card-img-overlay">
                           <h3 class="card-title text-white">Philadelphia</h3>
                           <p class="card-text text-white">USA<!--국가명  --></p>
                           <span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section> --%>
<!-- End 추천 여행지 -->
      
      

