<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<script>
	$(function() {
		var city = '${resultMap.CITY_ENAME}';
		var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+city+"&appid=a91687f156153cd9318bcb65d0a2298e";
		
		$.ajax({
			url : apiURI,
			type : 'get',
			dataType : 'json',
			async : 'false',
			success: function(resp){
				//console.log(resp);
				var tag = "<p>현재 온도 : " + (Math.floor(resp.main.temp- 273.15)) + "℃</p>" +
                "<p>현재습도 : "+ (resp.main.humidity) + "％</p>" +
                "<p>날씨설명 : "+ (resp.weather[0].description) + "</p>" +
            /*  "<p>날씨 : "+ (resp.weather[0].main ) + "</p>" +
                "<p>날씨 이미지 : "+ resp.weather[0].icon + "</p>" + */
                "<p>바람   : "+ resp.wind.speed + "m/s</p>" +
           /*  "<p>나라   : "+ resp.sys.country + "</p>" + 
                "<p>도시이름  : "+ resp.name + "</p>" +*/
                "<p>구름  : "+ (resp.clouds.all) +"％</p>";
                
                $('#temper').html(tag);
		}
		})
	});
	
</script>

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
                	<h1>${resultMap.CITY_NAME}</h1>
                	<h5>&nbsp;&nbsp;${resultMap.CITY_ENAME}</h5><!--  도시명  영문도시명 가져오기 -->
               		<h6><i class="mdi mdi-home">&nbsp;</i>${resultMap.CITY_ADD}</h6><!-- 국가명 > 도시명 가져오기 -->
               		<b class="mdi mdi-trending-up">&nbsp;조회수 : ${resultMap.CITY_VIEWS}</b>
            	</div>
            	
            	<div class="col-lg-1 col-md-1">
               		<h5 class="mt-3">현지 날씨</h5><!-- 현지 날씨정보 가져오기 -->
            	</div>
            	
           		<div class="col-lg-3 col-md-3" id="temper">
                	<img src="<c:url value='http://openweathermap.org/img/w/10d.png'/>"> --%>
                </div>
            	<div class="col-lg-1 col-md-1">
                	<h5 class="mt-3">오늘 환율</h5><!-- 오늘의 환율정보 가져오기 -->
             	</div>
            	<div class="col-lg-3 col-md-3">
            	
   				<!-- 실시간 환율 정보 -->
         		<!--Currency Converter widget by FreeCurrencyRates.com -->
         
         		<div id='gcw_mainFTK58iLbV' class='gcw_mainFTK58iLbV'></div>
         		<a id='gcw_siteFTK58iLbV' href='https://freecurrencyrates.com/en/'></a>
	<script>
    	function reloadFTK58iLbV(){ 
        	var sc = document.getElementById('scFTK58iLbV');
            if (sc) sc.parentNode.removeChild(sc);
            	sc = document.createElement('script'); 
                sc.type = 'text/javascript';
                sc.charset = 'UTF-8';
                sc.async = true;
                sc.id='scFTK58iLbV';
                sc.src = 'https://freecurrencyrates.com/en/widget-vertical?iso=USDEURGBPJPYCNYXUL&df=1&p=FTK58iLbV&v=fits&source=yahoo&width=300&width_title=0&firstrowvalue=1&thm=A6C9E2,FCFDFD,4297D7,5C9CCC,FFFFFF,C5DBEC,FCFDFD,2E6E9E,000000&title=Currency%20Converter&tzo=-540';
                var div = document.getElementById('gcw_mainFTK58iLbV');
                div.parentNode.insertBefore(sc, div);
                }           
    	reloadFTK58iLbV(); 
	</script>
         <!-- put custom styles here: .gcw_mainFTK58iLbV{}, .gcw_headerFTK58iLbV{}, .gcw_ratesFTK58iLbV{}, .gcw_sourceFTK58iLbV{} -->
         <!--End of Currency Converter widget by FreeCurrencyRates.com -->  
  <!-- END 실시간 환율 정보 -->
      
            </div>
         </div>
      </div>
   </div>
</section>
<!-- End Property Single Slider header -->

<!-- Property Single Slider -->
<section class="section-padding">
	<div class="section-title text-center mb-5">
		<h2>${resultMap.CITY_NAME}의추천 관광지</h2>
		<!-- 도시명 바뀜 -->
	</div>
	<!-- 메인 뷰 시작 -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="row">
					<c:forEach items="${resultLandmarkList}" var="resultData" varStatus="loop">
						<div class="col-lg-4 col-md-4">
							<div class="card blog-card">
								<img class="card-img-top" src="<c:url value = '/resources/img/blog/1.png'/>" alt="Card image cap">
								<!-- 관광지 이미지 가져오기 -->
								<div class="card-body">
									<h6>${resultData.LANDMARK_NAME}</h6>
									<!-- 관광지명  -->
									<h7>
									<i class="mdi mdi-map-marker-multiple">&nbsp;</i>${resultData.LANDMARK_ADDR}</h7>
									<!-- 관광지명 주소 -->
									<p class="mb-0">${resultData.LANDMARK_EXP}</p>
									<!-- 관광지에 대한 설명 -->
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<hr>
		<!-- 회원들이 쓴 글이 나타나는 공간 -->
		<!-- for문, pagenation을 이용(5개단위), 회원들이 올린 글이 실시간으로 리로드 되어야 함 -->
		<div class="section-title text-center mb-5">
			<h2>${resultMap.CITY_NAME}커뮤니티</h2>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="card padding-card reviews-card">
					<div class="card-body">
						<!-- 댓글 리스트 : 최신이 위로 뜨게 함 -->
						<c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
						<c:forEach items="${resultCommentList}" var="resultData" varStatus="loop">
							<div class="media mb-4" id="commentList">
								<div class="media-body">
									<h5 class="mt-0">
									${resultData.MEMBER_NAME}
												<c:if test="${resultData.MEMBER_EMAIL==principalName}"> 
												<span><small>${resultData.REGISTRY_DATE}&nbsp;&nbsp;
												<button type="button" class="btn btn-default btn-sm" value="${resultData.COMMENT_SEQ}" onclick="ModComment1(this.value);">수정</button>&nbsp;
												<button type="button" class="btn btn-default btn-sm" value="${resultData.COMMENT_SEQ}" onclick="DelComment(this.value);">삭제</button>
												</small></span>
												</c:if>
										<c:choose>
											<c:when test="${resultData.SS_STAR == 1}">
												<span class="star-rating float-right"> <i
													class="mdi mdi-star text-warning"></i> <small
													class="text-success">5/1</small>
												</span>
											</c:when>
											<c:when test="${resultData.SS_STAR == 2}">
												<span class="star-rating float-right"> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <small
													class="text-success">5/2</small>
												</span>
											</c:when>
											<c:when test="${resultData.SS_STAR == 3}">
												<span class="star-rating float-right"> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <small
													class="text-success">5/3</small>
												</span>
											</c:when>
											<c:when test="${resultData.SS_STAR == 4}">
												<span class="star-rating float-right"> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <small
													class="text-success">5/4</small>
												</span>
											</c:when>
											<c:when test="${resultData.SS_STAR == 5}">
												<span class="star-rating float-right"> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <i
													class="mdi mdi-star text-warning"></i> <small
													class="text-success">5/5</small>
												</span>
											</c:when>
											<c:otherwise>
												<!-- 별점이 0개 일때 아무것도 표시되지 않는다. -->
											</c:otherwise>
										</c:choose>
									</h5>
									<!-- 댓글 내용을 가져오는 부분 -->
									<p>${resultData.COMMENT_CON}</p>
								</div>
							</div>
						</c:forEach>
						<!-- END 댓글 -->

						<!-- 페이징 -->
						<c:set var="page" value="${resultPaginationMap.pagination}" />
						<nav class="mt-5">
							<ul class="pagination justify-content-center">
								<li class="page-item"><a class="page-link"
									href="<c:url value="/tripInfo/pagination?curPage=${page.nextPage}"/>"><i
										class="mdi mdi-chevron-left"></i></a></li>
								<c:forEach var="pageNum" begin="${page.blockStart}"
									end="${page.blockEnd}">
									<c:choose>
										<c:when test="${pageNum==page.curPage}">
											<li class="page-item active"><a class="page-link"
												href="<c:url value="/tripInfo/pagination?curPage=${pageNum}" />">${pageNum}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item active"><a class="page-link"
												href="<c:url value="/tripInfo/pagination?curPage=${pageNum}" />">${pageNum}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<li class="page-item"><a class="page-link"
									href="<c:url value="/tripInfo/pagination?curPage=${page.nextPage}"/>"><i
										class="mdi mdi-chevron-right"></i></a></li>
							</ul>
						</nav>
						<!-- END 페이징 -->

						<script>
						// 댓글 동적으로 데이터베이스에 넣기
						function SetComment(cityseq) { // 도시시퀀스를 파라미터로 가져오고
 				         	var star = $('#star').val(); // 셀렉트박스의 평점 저장
				            var comment = $('#comment').val(); // 텍스트에어리어의 내용 저장
				            var memseq = $('#memseq').val(); // 멤버시퀀스 저장
				            
							$.ajax({
									type : "GET", // 값을 보낼 방식
									url : "<c:url value='/ws/commentSet'/>", // 보낼 컨트롤러
									data : { // 서버에 보낼 데이터 (key, value형식)
										"SS_STAR" : star,
										"COMMENT_CON" : comment,
										"CITY_SEQ" : cityseq,
										"MEMBER_SEQ" : memseq
									},
									success : function() { 
										alert('댓글이 입력되었습니다.');
										location.reload();
									},
									error : function(jqXHR, textStatus, errorThrown) {
										alert("오류발생");
										return false;
									}
								});
							}
						
						// 수정버튼 클릭시 모달창 띄워주기	
						function ModComment1(value) {
							var params = {
									COMMENT_SEQ : value
							};
							var url = "<c:url value='/tripInfo/popup'/>";
							common.layerPopupParam(url,".modal", params);
							
						} 
						
						// 댓글 삭제하기
						function DelComment(commentseq) {
							var con = confirm("정말로 삭제하시겠습니까?");
							if(con == true) {
								$.ajax({
									type : "GET",
									url : "<c:url value='/ws/commentDel'/>",
									data : {
										"COMMENT_SEQ" : commentseq
									},
									
									success : function() {
										location.reload();
									},
									error : function(jqXHR, textStatus, errorThrown) {
										alert("오류발생");
										return false;
									}
								});									
							} else {
								return false;
							}
						}
						</script>

						<hr>	
							<form id="commentForm" name="commentForm" method="GET">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="row">
											<div class="col-lg-2 col-md-2">
												<select class="form-control custom-select" id="star">
													<option value="5">★★★★★</option>
													<option value="4">★★★★☆</option>
													<option value="3">★★★☆☆</option>
													<option value="2">★★☆☆☆</option>
													<option value="1">★☆☆☆☆</option>
												</select>
											</div>
												<input type="hidden" id="memseq" value="${resultMemberMap.MEMBER_SEQ}"/>
											<div class="col-lg-9 col-md-9">
												<textarea rows="3" cols="50" class="form-control" name="contents" placeholder="댓글을 입력하세요. 불괘감을 주는 욕설과 악플은 삭제될 수 있습니다." id="comment" onkeyup="countContents(this)"></textarea>
											</div>
											<div class="col-lg-1 col-md-1">
												<span><span id="comentCount">0</span>/500</span>
												<button type="button" class="btn btn-success btn-block" onclick="SetComment(this.value)" value="${resultMap.CITY_SEQ}">등록</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						<hr>
					</div>
				</div>
				<!-- 회원들이 쓴 글이 나타나는 공간 끝 -->
			</div>
			<!-- 댓글 수정을 위한 모달창 -->
			<div class="modal fade" class="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true"></div>

			<script>
			function countContents(element){
				document.getElementById("comentCount").innerHTML =element.value.length;
			}
			</script>

			<!-- 구글지도  -->
			<div class="col-lg-12 col-md-12">
				<div class="card padding-card">
					<div class="card-body">
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
<script src="<c:url value='/resources/js/contact_me.js'/>"></script>
<!-- select2 Js -->
<script src="<c:url value='/resources/vendor/select2/js/select2.min.js'/>"></script>
<!-- Custom -->
<script src="<c:url value='/resources/js/custom.js'/>"></script>
<c:set var="lat">${resultMap.CITY_LATITUDE}</c:set><!-- 위도값 받아오기 -->
<c:set var="lng">${resultMap.CITY_LONGITUDE}</c:set><!-- 경도값 받아오기 -->
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
      
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBUsOUkZbTEwLxeUN5Qfag6Vr5BjngCGMY&callback=initMap"></script>