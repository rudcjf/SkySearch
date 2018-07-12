<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- 메인 슬라이드 이미지 -->
<section class="osahan-slider">
	<div id="osahanslider" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#osahanslider" data-slide-to="0" class="active"></li>
			<li data-target="#osahanslider" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active"
				style="background-image: url('<c:url value='/resources/img/slider/3.jpg'/>')">
				<div class="overlay"></div>
			</div>
			<div class="carousel-item"
				style="background-image: url('<c:url value='/resources/img/slider/4.jpg'/>')">
				<div class="overlay"></div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#osahanslider" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#osahanslider" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	
	<!-- 동적 셀렉트 박스 스크립트 -->
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

	<div class="slider-form">
		<div class="container">
			<h1 class="text-center text-white mb-5">여행 정보</h1>
			<!-- 여행지 검색바, form태그 안에 데이터 넣어서 컨트롤러로 보내야함, 최종적으로 도시 시퀀스를 보내서 정보 출력 -->
			<form action="<c:url value='/tripInfo/read'/>" method="POST">
				<div class="row no-gutters">
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					<div class="col-md-3">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="mdi mdi-earth"></i>
							</div>
							<select class="form-control select2 no-radius" id="local" name="LOCAL_NAME" onchange="CountrySelect(this.value);" placeholder="여행지역" >
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
							<div class="input-group-addon">
								<i class="mdi mdi-airplane"></i>
							</div>
							<select class="form-control select2 no-radius" id="country" name="COUNTRY_SEQ" onchange="CitySelect(this.value);">
								<option value="">국가명</option>
							</select>
						</div>
					</div>

					<div class="col-md-3">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="mdi mdi-map-marker-outline"></i>
							</div>
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
<!-- 메인 슬라이드 이미지 끝 -->
<!-- 여행정보 리스트(상위 6개) -->
<section class="section-padding">
	<div class="section-title text-center mb-5">
		<h2>여행지 맞춤 추천</h2>
	</div>
	<!--  회원가입시 관심지역을 기준으로 나타냅니다. -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<form action="<c:url value='/tripInfo/read'/>" method="POST">
								<img class="card-img-top"
									src="<c:url value='/resources/img/blog/tokyo1.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <small
										class="text-success">2/5</small>
									</span>
									<h6>
										<input type="hidden" name="CITY_SEQ" value="CI001">도쿄
									</h6>
									<p class="mb-0">일본</p>
								</div>
								<button type="submit" class="btn btn-success">정보 보기</button>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<form action="<c:url value='/tripInfo/read'/>" method="POST">
								<img class="card-img-top"
									src="<c:url value = '/resources/img/blog/beijing1.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <small
										class="text-success">2/5</small>
									</span>
									<h6>
										<input type="hidden" name="CITY_SEQ" value="CI004">베이징
									</h6>
									<p class="mb-0">중국</p>
								</div>
								<button type="submit" class="btn btn-default">정보 보기</button>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<form action="<c:url value='/tripInfo/read'/>" method="POST">
								<img class="card-img-top"
									src="<c:url value = '/resources/img/blog/taibei1.jpg'/>"
									alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <small
										class="text-success">2/5</small>
									</span>
									<h6>
										<input type="hidden" name="CITY_SEQ" value="CI007">타이베이
									</h6>
									<p class="mb-0">대만</p>
								</div>
								<button type="submit" class="btn btn-default">정보 보기</button>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/5.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/6.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">2/5</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<hr>

<!-- 이하 부분은 전체 여행지를 보여주는 부분입니다. -->
<section class="section-padding">
	<div class="section-title text-center mb-5">
		<h2>도시 전체보기</h2>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<!-- 정렬 선택하는 부분입니다-->
				<div class="osahan_top_filter row">
					<div class="col-lg-12 col-md-12 sort-by-btn float-right">
						<div class="dropdown float-right">
							<button class="btn btn-success btn-sm dropdown-toggle"
								type="button" id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								<i class="mdi mdi-filter"></i> Sort by
							</button>
							<div class="dropdown-menu float-right"
								aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#"><i
									class="mdi mdi-chevron-right"></i> 별점순 </a> <a
									class="dropdown-item" href="#"><i
									class="mdi mdi-chevron-right"></i> 가나다순 </a>
							</div>
						</div>
					</div>
				</div>
				<!-- END 정렬 선택하는 부분입니다-->
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>"><img
								class="card-img-top"
								src="<c:url value='/resources/img/blog/tripinfo1.jpg'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>괌</h6>
									<p class="mb-0">미국</p>
								</div> </a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/3.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>

							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_NAME=<%='괌'%>"><img
								class="card-img-top"
								src="<c:url value='/resources/img/blog/tripinfo1.jpg'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>괌</h6>
									<p class="mb-0">미국</p>
								</div> </a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/3.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>

							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_NAME=<%='괌'%>"><img
								class="card-img-top"
								src="<c:url value='/resources/img/blog/tripinfo1.jpg'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>괌</h6>
									<p class="mb-0">미국</p>
								</div> </a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/3.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>

							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="<c:url value='/tripInfo/read'/>?CITY_NAME=<%='괌'%>"><img
								class="card-img-top"
								src="<c:url value='/resources/img/blog/tripinfo1.jpg'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>괌</h6>
									<p class="mb-0">미국</p>
								</div> </a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/3.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-white"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>

							</a>
						</div>
					</div>
				</div>
				<!-- END 이부분은 전체 여행지를 보여주는 부분입니다. -->
				<!-- 이부분은 페이징 부분입니다 -->
				<div class="row">
					<div class="col-lg-4 col-md-4"></div>
					<div class="col-lg-4 col-md-4">
						<nav class="mt-5">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1"><i class="mdi mdi-chevron-left"></i></a>
								</li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#"><i
										class="mdi mdi-chevron-right"></i></a></li>
							</ul>
						</nav>
					</div>
				</div>
				<!--END 페이징 -->
			</div>
		</div>
	</div>
</section>
