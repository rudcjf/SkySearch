<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

      <!-- 메인 슬라이더 -->
      <section class="osahan-slider">
         <div id="osahanslider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#osahanslider" data-slide-to="0" class="active"></li>
               <li data-target="#osahanslider" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
               <div class="carousel-item active" style="background-image: url('<c:url value='/resources/img/slider/1.jpg'/>')">
                  <div class="overlay"></div>
               </div>
               <div class="carousel-item" style="background-image: url('<c:url value='/resources/img/slider/2.jpg'/>')">
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
         <div class="property-single-title">
            <div class="container">
               <div class="row">
                  <div class="col-lg-8 col-md-8">
                     <h1 class="text-white">도쿄</h1>
                  </div>
                  <div class="col-lg-2 col-md-2 text-right">
                     <h6 class="text-white mt-2">날씨정보</h6>
                     <h4 class="text-success">날씨정보</h4>
                  </div>
                  <div class="col-lg-2 col-md-2 text-right">
                     <h6 class="text-white mt-2">환율정보</h6>
                     <h4 class="text-success">환율정보</h4>
                  </div>
               </div>
               <hr>
               <div class="row">
                  <div class="col-lg-8 col-md-8"></div>
                  <div class="col-lg-4 col-md-4 text-right">
                  	<h6 class="text-white"><i class="mdi mdi-home-map-marker">&nbsp;</i>도쿄 주소</h6>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- 메인 슬라이더 끝 -->
      
      <!-- Property Single Slider -->
      <section class="section-padding">
      <div class="section-title text-center mb-5">
         <h2>관광지 추천</h2>
         <p>도쿄의 핵심 관광지</p>
      </div>
      	 <!-- 메인 뷰 시작 -->
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12">
               	  <div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/1.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h6>관광지이름</h6>
									<p class="mb-0">관광지설명</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h6>관광지이름</h6>
									<p class="mb-0">관광지설명</p>
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
									<h6>관광지이름</h6>
									<p class="mb-0">관광지설명</p>
								</div>
							</a>
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
									<h6>관광지이름</h6>
									<p class="mb-0">관광지설명</p>
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
									<h6>관광지이름</h6>
									<p class="mb-0">관광지설명</p>
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
									<h6>관광지이름</h6>
									<p class="mb-0">관광지설명</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
				  <!-- 회원들이 쓴 글이 나타나는 공간 -->
                  <!-- for문, pagenation을 이용(5개단위), 회원들이 올린 글이 실시간으로 리로드 되어야 함 -->
				  <div class="col-lg-8 col-md-12">
                  <div class="card padding-card reviews-card">
                     <div class="card-body">
                        <h5 class="card-title mb-4">회원들이 쓴 글</h5>
                        <form>
                           <div class="control-group form-group">
                              <div class="controls">
                                 <label>평점</label>
                                 <select class="form-control custom-select">
                                    <option name="STAR" value="1star">1 Star</option>
                                    <option name="STAR" value="2star">2 Star</option>
                                    <option name="STAR" value="3star">3 Star</option>
                                    <option name="STAR" value="4star">4 Star</option>
                                    <option name="STAR" value="5star">5 Star</option>
                                 </select>
                              </div>
                           </div>
                           <div class="control-group form-group">
                              <div class="controls">
                                 <label>내용</label>
                                 <textarea rows="3" cols="50" class="form-control" name="CONTENTS"></textarea>
                              </div>
                           </div>
                           <button type="submit" class="btn btn-success btn-block">올리기</button>
                        </form>
                        <hr>
                        <div class="media mb-4">
                           <img class="d-flex mr-3 rounded-circle" src="<c:url value='/resources/img/user/1.jpg'/>">
                           <div class="media-body">
                              <h5 class="mt-0">회원 아이디1 <small>작성일</small> 
                                 <span class="star-rating float-right">
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i><small class="text-success">5/2</small>
                                 </span>
                              </h5>
                              <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                           </div>
                        </div>
                        <div class="media mb-4">
                           <img class="d-flex mr-3 rounded-circle" src="<c:url value='/resources/img/user/2.jpg'/>">
                           <div class="media-body">
                              <h5 class="mt-0">회원 아이디2 <small>작성일</small> 
                                 <span class="star-rating float-right">
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i><small class="text-success">5/2</small>
                                 </span>
                              </h5>
                              <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                           </div>
                        </div>
                        <div class="media mb-4">
                           <img class="d-flex mr-3 rounded-circle" src="<c:url value='/resources/img/user/3.jpg'/>">
                           <div class="media-body">
                              <h5 class="mt-0">회원 아이디3 <small>작성일</small> 
                                 <span class="star-rating float-right">
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i><small class="text-success">5/2</small>
                                 </span>
                              </h5>
                              <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                           </div>
                        </div>
                        <div class="media mb-4">
                           <img class="d-flex mr-3 rounded-circle" src="<c:url value='/resources/img/user/4.jpg'/>">
                           <div class="media-body">
                              <h5 class="mt-0">회원 아이디4 <small>작성일</small> 
                                 <span class="star-rating float-right">
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i><small class="text-success">5/2</small>
                                 </span>
                              </h5>
                              <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                           </div>
                        </div>
                          <div class="media mb-4">
                           <img class="d-flex mr-3 rounded-circle" src="<c:url value='/resources/img/user/5.jpg'/>">
                           <div class="media-body">
                              <h5 class="mt-0">회원 아이디5 <small>작성일</small> 
                                 <span class="star-rating float-right">
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i>
                                 <i class="mdi mdi-star-half text-warning"></i><small class="text-success">5/2</small>
                                 </span>
                              </h5>
                              <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                           </div>
                        </div>
                        	<nav class="mt-5">
                     			<ul class="pagination justify-content-center">
                        			<li class="page-item disabled">
                           				<a class="page-link" href="#" tabindex="-1"><i class="mdi mdi-chevron-left"></i></a>
                        			</li>
                        			<li class="page-item active"><a class="page-link" href="#">1</a></li>
                        			<li class="page-item"><a class="page-link" href="#">2</a></li>
                        			<li class="page-item"><a class="page-link" href="#">3</a></li>
                        			<li class="page-item"><a class="page-link" href="#">...</a></li>
                        			<li class="page-item"><a class="page-link" href="#">10</a></li>
                        			<li class="page-item">
                            			<a class="page-link" href="#"><i class="mdi mdi-chevron-right"></i></a>
                        			</li>
                     			</ul>
                     		</nav>
                     	</div>
                  	</div>
                  <!-- 회원들이 쓴 글이 나타나는 공간 끝 -->
               	</div>
               	  <!-- 구글지도  -->
               	<div class="col-lg-4 col-md-12">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h5 class="card-title mb-3">지도</h5>
                        <div class="row mb-3">
                           <div class="col-lg-6 col-md-6">
                              <p><strong class="text-dark">주소</strong><br>Petersham Town</p>
                           </div>
                           <div class="col-lg-6 col-md-6">
                              <p><strong class="text-dark">도시</strong><br>Sydney</p>
                           </div>
                        </div>
                        <div id="map"></div>
                     </div>
                  </div>
                  <!-- 구글 지도 끝 -->
			    </div>
			  </div>
            </div>
          </div>
        </div>
        <!-- 메인 뷰 끝 --> 
      </section>
      <!-- End Property Single Slider -->	 

      <!-- Bootstrap core JavaScript -->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Contact form JavaScript -->
      <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <script src="js/jqBootstrapValidation.js"></script>
      <script src="js/contact_me.js"></script>
      <!-- select2 Js -->
      <script src="vendor/select2/js/select2.min.js"></script>
      <!-- Custom -->
      <script src="js/custom.js"></script>
      <!-- Google Map Api -->
      <script>
         function initMap() {
         	var uluru = {
         		lat: -25.363,
         		lng: 131.044
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
         	var image = 'img/marker.png';
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

