<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Property Single Slider header -->
<section class="osahan-slider">
	<div id="osahanslider" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#osahanslider" data-slide-to="0" class="active"></li>
			<li data-target="#osahanslider" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active"
				style="background-image: url('<c:url value='/resources/img/slider/tokyo2.jpg'/>')"></div>
			<div class="carousel-item"
				style="background-image: url('<c:url value='/resources/img/slider/tokyo3.jpg'/>')"></div>
		</div>
		<a class="carousel-control-prev" href="#osahanslider" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#osahanslider" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	<div class="property-single-title property-single-title-gallery">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<h1>${resultMap.CITY_NAME}</h1><!--  도시명  영문도시명 가져오기 -->
					<h6><i class="mdi mdi-home">&nbsp;</i>${resultMap.CITY_ADD}</h6><!-- 국가명 > 도시명 가져오기 -->
					<b class="mdi mdi-trending-up">&nbsp;조회수 : ${resultMap.VIEWS}</b>
				</div>
				<div class="col-lg-1 col-md-1">
					<h5 class="mt-3">현지 날씨</h5><!-- 현지 날씨정보 가져오기 -->
				</div>
				<div class="col-lg-2 col-md-2">
					<img src="<c:url value='/resources/img/special/weather.jpg'/>">
				</div>
				<div class="col-lg-1 col-md-1"></div>
				<div class="col-lg-1 col-md-1">
					<h5 class="mt-3">오늘 환율</h5><!-- 오늘의 환율정보 가져오기 -->
				</div>
				<div class="col-lg-2 col-md-2">
					<h2 class="mt-3">환율정보(텍스트)</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End Property Single Slider header -->
<!-- Property Single Slider -->
<section class="section-padding">
	<div class="section-title text-center mb-5">
		<h2>${resultMap.CITY_NAME}의 추천 관광지</h2><!-- 도시명 바뀜 -->
		</div>
	<!-- 메인 뷰 시작 -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<img class="card-img-top" src="<c:url value = '/resources/img/blog/1.png'/>" alt="Card image cap"><!-- 관광지 이미지 가져오기 -->
							<div class="card-body">
								<h6>${resultMap.LANDMARK_NAME}</h6><!-- 관광지명  -->
								<h7><i class="mdi mdi-map-marker-multiple">&nbsp;</i>${resultMap.LANDMARK_ADDR}</h7><!-- 관광지명 주소 -->
								<p class="mb-0">${resultMap.LANDMARK_EXP}</p><!-- 관광지에 대한 설명 -->
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
							<div class="card-body">
								<h6>UnderWater World Guam</h6>
								<h7><i class="mdi mdi-map-marker-multiple"></i> Pale San Vitores Rd, Tamuning, 96913 괌</h7>
								<p class="mb-0">수족관 및 스쿠버 다이빙</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<img class="card-img-top"
								src="<c:url value = '/resources/img/blog/3.png'/>"
								alt="Card image cap">
							<div class="card-body">
								<h6>Tumon Beach</h6>
								<h7><i class="mdi mdi-map-marker-multiple"></i> 818 North, Marine Corps Dr, Piti, 96915 괌</h7>
								<p class="mb-0">해변</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<img class="card-img-top"
								src="<c:url value = '/resources/img/blog/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h6>Fish Eye Marine Park (Visitor Center）</h6>
									<h7><i class="mdi mdi-map-marker-multiple"></i>207 Archbishop FC Flores St, Hagåtña, 96910 괌</h7>
									<p class="mb-0">스노클링 및 스쿠버 다이빙</p>
								</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<!-- <a href="#"> --> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/5.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h6>코코스 섬</h6>
									<h7><i class="mdi mdi-map-marker-multiple"></i>마리아나 제도</h7>
									<p class="mb-0">스쿠버 다이빙, 스노클링 및 해변</p>
								</div>
							<!-- </a> -->
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<!-- <a href="#"> --> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/6.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h6>Ypao Beach Archeological Site</h6>
									<h7><i class="mdi mdi-map-marker-multiple"></i>괌 96913 타뮤닝</h7>
									<p class="mb-0">해변, 스노클링 및 공원</p>
								</div>
							<!-- </a> -->
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 이부분은 인기명소 페이징 부분입니다 -->
<!-- 		<div class="row">
			<div class="col-lg-4 col-md-4"></div>
			<div class="col-lg-4 col-md-4">
				<nav class="mt-5">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1"><i class="mdi mdi-chevron-left"></i></a></li>
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
		</div> -->
		<!--END 페이징 -->
		<hr>
		<!-- 회원들이 쓴 글이 나타나는 공간 -->
		<!-- for문, pagenation을 이용(5개단위), 회원들이 올린 글이 실시간으로 리로드 되어야 함 -->
	<div class="section-title text-center mb-5">
		<h2>${resultMap.CITY_NAME} 커뮤니티</h2>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="card padding-card reviews-card">
					<div class="card-body">
						<!-- 댓글 리스트 : 최신이 위로 뜨게 함 -->
						<div class="media mb-4">
							<%-- <img class="d-flex mr-3 rounded-circle" 
								src="<c:url value='/resources/img/user/1.jpg'/>"> 프로필 사진 없으므로 삭제함--%>
							<div class="media-body">
								<h5 class="mt-0">
									회원 이름<!-- 회원의 이름을 가져오는 부분 -->
									<span><small>2018.7.9. 14:18<!-- 작성일을 가져오는 부분 -->&nbsp;
										<a href="#">수정</a>&nbsp;<a href="#">삭제</a><!-- 본인이 쓴 댓글에만 수정 삭제가 보임 --></small>
										<!-- 수정 클릭시  textarea에서 수정 네이버 블로그 댓글 참고 -->
									</span> 
									<span 
										class="star-rating float-right"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small><!-- 별점을 가져오는 부분 -->
									</span>
								</h5>
								<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
									metus scelerisque ante sollicitudin. Cras purus odio,
									vestibulum in vulputate at, tempus viverra turpis. Fusce
									condimentum nunc ac nisi vulputate fringilla. Donec lacinia
									congue felis in faucibus.</p><!-- 댓글 내용을 가져오는 부분 -->
							</div>
						</div>
						<div class="media mb-4">
							<%-- <img class="d-flex mr-3 rounded-circle"
								src="<c:url value='/resources/img/user/2.jpg'/>"> --%>
							<div class="media-body">
								<h5 class="mt-0">
									회원 이름 <small>작성일</small> <span
										class="star-rating float-right"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
								</h5>
								<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
									metus scelerisque ante sollicitudin. Cras purus odio,
									vestibulum in vulputate at, tempus viverra turpis. Fusce
									condimentum nunc ac nisi vulputate fringilla. Donec lacinia
									congue felis in faucibus.</p>
							</div>
						</div>
						<div class="media mb-4">
						<%-- 	<img class="d-flex mr-3 rounded-circle"
								src="<c:url value='/resources/img/user/3.jpg'/>"> --%>
							<div class="media-body">
								<h5 class="mt-0">
									회원 이름 <small>작성일</small> <span
										class="star-rating float-right"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
								</h5>
								<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
									metus scelerisque ante sollicitudin. Cras purus odio,
									vestibulum in vulputate at, tempus viverra turpis. Fusce
									condimentum nunc ac nisi vulputate fringilla. Donec lacinia
									congue felis in faucibus.</p>
							</div>
						</div>
						<div class="media mb-4">
							<%-- <img class="d-flex mr-3 rounded-circle"
								src="<c:url value='/resources/img/user/4.jpg'/>"> --%>
							<div class="media-body">
								<h5 class="mt-0">
									회원 이름 <small>작성일</small> <span
										class="star-rating float-right"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
								</h5>
								<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
									metus scelerisque ante sollicitudin. Cras purus odio,
									vestibulum in vulputate at, tempus viverra turpis. Fusce
									condimentum nunc ac nisi vulputate fringilla. Donec lacinia
									congue felis in faucibus.</p>
							</div>
						</div>
						<div class="media mb-4">
							<%-- <img class="d-flex mr-3 rounded-circle"
								src="<c:url value='/resources/img/user/5.jpg'/>"> --%>
							<div class="media-body">
								<h5 class="mt-0">
									회원 이름 <small>작성일</small> <span
										class="star-rating float-right"> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i> <i
										class="mdi mdi-star-half text-warning"></i><small
										class="text-success">5/2</small>
									</span>
								</h5>
								<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
									metus scelerisque ante sollicitudin. Cras purus odio,
									vestibulum in vulputate at, tempus viverra turpis. Fusce
									condimentum nunc ac nisi vulputate fringilla. Donec lacinia
									congue felis in faucibus.</p>
							</div>
						</div>
						<!-- END 댓글 -->
						<!-- 페이징 -->
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
						<!-- END 페이징 -->
						<hr>
						<div>
							<form action="#" method="post">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="row">
											<div class="col-lg-2 col-md-2">
												<select class="form-control custom-select">
													<option value="0">==별점 선택==</option>
													<option value="5">★★★★★</option>
													<option value="4">★★★★☆</option>
													<option value="3">★★★☆☆</option>
													<option value="2">★★☆☆☆</option>
													<option value="1">★☆☆☆☆</option>
												</select>
											</div>
											<div class="col-lg-9 col-md-9">
												<textarea rows="3" cols="50" class="form-control"
													name="contents"
													placeholder="댓글을 입력하세요. 불괘감을 주는 욕설과 악플은 삭제될 수 있습니다." id="coment" onkeyup="checkComentCount(this)" maxlength="500"></textarea>
											</div>
											<div class="col-lg-1 col-md-1">
											<span><span id ="comentCount">0</span><!-- 바뀌는 부분 -->/500</span><!--  500자(기준) 중 몇자를 썼는지 글자수 체크 -->
												<button type="submit" class="btn btn-success btn-block" >등록</button>
											</div>
										</div>
									</div>
								</div>
							</form>
							<hr>
						</div>
					</div>
				</div>
				<!-- 회원들이 쓴 글이 나타나는 공간 끝 -->
			</div>
			<!-- 구글지도  -->
			<div class="col-lg-12 col-md-12">
				<div class="card padding-card">
					<div class="card-body">
					<c:forTokens var="abc" items="안녕/하세요/hunit블로그/입니다" delims="/" />
					<p>${abc}</p>
						<!-- <h5 class="card-title mb-3">지도</h5> -->
						<!-- <div class="row mb-3">
							<div class="col-lg-6 col-md-6">
								<p>
									<strong class="text-dark">주소</strong><br>괌의 주소괌주소
								</p>
							</div>
							<div class="col-lg-6 col-md-6">
								<p>
									<strong class="text-dark">도시</strong><br>괌괌
								</p>
							</div>
						</div> -->
						<div id="map"></div>
					</div>
				</div>
			</div>
			<!-- 구글 지도 끝 -->
		</div>
	</div>
	<!-- 메인 뷰 끝 -->
</section>
<!-- End Property Single Slider -->

<!-- Bootstrap core JavaScript -->
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<!-- Contact form JavaScript -->
<!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
<script src="<c:url value='/resources/js/jqBootstrapValidation.js'/>"></script>
<script src="js/contact_me.js"></script>
<!-- select2 Js -->
<script src="<c:url value='/resources/vendor/select2/js/select2.min.js'/>"></script>
<!-- Custom -->
<script src="<c:url value='/resources/js/custom.js'/>"></script>
<c:set var="lat">${resultMap.CITY_LATITUDE}</c:set> <!-- 위도값 받아오기 -->
<c:set var="lng">${resultMap.CITY_LONGITUDE}</c:set> <!-- 경도값 받아오기 -->
<!-- Google Map Api -->
<script>
         function initMap() {
         	var uluru = {
         		lat: ${lat},
         		lng: ${lng}
         	};
         	var map = new google.maps.Map(document.getElementById('map'), {
         		zoom: 3,
         		center: uluru,
         		styles: [{
         				elementType: 'geometry',
         				stylers: [{
         					color: '#64DDBA'
         				}]
         			},
         			{
         				elementType: 'labels.text.stroke',
         				stylers: [{
         					color: '#64DDBA'
         				}]
         			},
         			{
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#34495E'
         				}]
         			},
         			{
         				featureType: 'administrative.locality',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#8A8A8A'
         				}]
         			},
         			{
         				featureType: 'poi',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#8A8A8A'
         				}]
         			},
         			{
         				featureType: 'poi.park',
         				elementType: 'geometry',
         				stylers: [{
         					color: '#263c3f'
         				}]
         			},
         			{
         				featureType: 'poi.park',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#6b9a76'
         				}]
         			},
         			{
         				featureType: 'road',
         				elementType: 'geometry',
         				stylers: [{
         					color: '#ABABAB'
         				}]
         			},
         			{
         				featureType: 'road',
         				elementType: 'geometry.stroke',
         				stylers: [{
         					color: '#212a37'
         				}]
         			},
         			{
         				featureType: 'road',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#9ca5b3'
         				}]
         			},
         			{
         				featureType: 'road.highway',
         				elementType: 'geometry',
         				stylers: [{
         					color: '#34495E'
         				}]
         			},
         			{
         				featureType: 'road.highway',
         				elementType: 'geometry.stroke',
         				stylers: [{
         					color: '#1f2835'
         				}]
         			},
         			{
         				featureType: 'road.highway',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#f3d19c'
         				}]
         			},
         			{
         				featureType: 'transit',
         				elementType: 'geometry',
         				stylers: [{
         					color: '#2f3948'
         				}]
         			},
         			{
         				featureType: 'transit.station',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#8A8A8A'
         				}]
         			},
         			{
         				featureType: 'water',
         				elementType: 'geometry',
         				stylers: [{
         					color: '#F2F6FF'
         				}]
         			},
         			{
         				featureType: 'water',
         				elementType: 'labels.text.fill',
         				stylers: [{
         					color: '#BCBCBC'
         				}]
         			},
         			{
         				featureType: 'water',
         				elementType: 'labels.text.stroke',
         				stylers: [{
         					color: '#F2F6FF'
         				}]
         			}
         		]
         	});
         	var contentString = '<div id="content">' +
         		'<div id="bodyContent">' +
         		'<div class="card card-list"><a href="#"><span class="badge badge-danger">For Sale</span><img class="card-img-top" src="img/list/1.png" alt="Card image cap"><div class="card-body"><h5 class="card-title">House in Kent Street</h5><h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 127 Kent Sreet, Sydny, NEW 2000</h6><h2 class="text-success mb-0 mt-3">$130,000 <small>/month</small></h2></div><div class="card-footer"><span><i class="mdi mdi-sofa"></i> Beds : <strong>3</strong></span><span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>2</strong></span><span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>587 sq ft</strong></span></div></a> </div>' +
         		'</div>' +
         		'</div>';
         
         	var infowindow = new google.maps.InfoWindow({
         		content: contentString,
         		maxWidth: 300
         	});
         	var image = '<c:url value='/resources/img/marker.png'/>';
         	var marker = new google.maps.Marker({
         		position: uluru,
         		map: map,
         		icon: image
         	});
         	marker.addListener('click', function() {
         		infowindow.open(map, marker);
         	});
         }
          
      </script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBUsOUkZbTEwLxeUN5Qfag6Vr5BjngCGMY&callback=initMap"></script>
	
	
<script>
	function checkComentCount(element){
		document.getElementById("comentCount").innerHTML = element.value.length;
	}

</script>


