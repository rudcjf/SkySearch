<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
         
	<!-- 메인 특가 검색 slider-->
         <div class="slider-form">
            <div class="container">
               <h1 class="text-center text-white mb-5">언제든 가볍게 지.구.산.책!</h1>
               <!-- 특가상품 검색: form태그 안 데이터값으로 결과 출력한다 -->
               <form>
                  <div class="row no-gutters">
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-earth"></i></div>
                           <select class="form-control select2 no-radius" placeholder="여행지역">
                              <option value="">여행지역</option>
                              <option value="Japan">일본</option>
                              <option value="Hongkong">홍콩,싱카포르,대만,마카오</option>
                              <option value="China">중국</option>
                              <option value="Asia">아시아</option>
                              <option value="Jeju">국내(제주)</option>
                              <option value="South_pacificocean">남태평양</option>
                              <option value="North_america">북미</option>
                              <option value="South_america">중남미</option>
                              <option value="Europe">유럽</option>
                              <option value="Etc">기타</option>
                           </select>
                        </div>
                     </div>

                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-airplane"></i></div>
                           <select class="form-control select2 no-radius">
                              <option value="">나라명</option>
                              <option value="Japan">일본</option>
                              <option value="Singapore">싱가포르</option>
                              <option value="India">인도</option>
                              <option value="France">프랑스</option>
                              <option value="Swiss">스위스</option>
                              <option value="America">미국</option>
                              <option value="Canada">캐나다</option>
                           </select>
                        </div>
                     </div>

                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-map-marker-outline"></i></div>
                           <select class="form-control select2 no-radius">
                              <option value="">도시명</option>
                              <option value="Osaka">오사카</option>
                              <option value="Paris">파리</option>
                              <option value="Newyork">뉴욕</option>
                              <option value="LA">로스엔젤레스</option>
                              <option value="London">런던</option>
                              <option value="Tokyo">도쿄</option>
                              <option value="Rome">로마</option>
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
<!-- 최신순 6개 뽑아서 출력할것 -->
      <section class="section-padding">
         <div class="section-title text-center mb-5">
            <h2>추천 특가 상품</h2>
            <p>빅 프로모션! 놓치지 마세용!</p>
                     <div class="col-lg-1 col-md-1 sort-by-btn float-right">
                     <em>광고</em><i class="mdi mdi-help-circle-outline"></i></div>
         </div>

         <div class="container">
            <div class="row">
            
               <div class="col-lg-4 col-md-4">
               
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-success">For Sale</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/newyork01.png'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">뉴욕 특가 떴다!</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 127 Kent Sreet, Sydny, NEW 2000</h6>
                           <h2 class="text-success mb-0 mt-3">
                              $130,000 <small>/month</small>
                           </h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-sofa"></i> Beds : <strong>3</strong></span>
                           <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>2</strong></span>
                           <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>587 sq ft</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-info">For Rent</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/philadelphia.png'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">필라델피아</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> The Village, Jersey City, NJ 07302, USA</h6>
                           <h2 class="text-success mb-0 mt-3">
                              $356, 000 <small>/month</small>
                           </h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-sofa"></i> Beds : <strong>1</strong></span>
                           <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>3</strong></span>
                           <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>187 sq ft</strong></span>
                        </div>
                     </a>
                  </div>
               </div>               
               
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-success">For Sale</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/london.png'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">런던 런던</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hope Street (Stop P), London SW11, UK</h6>
                           <h2 class="text-success mb-0 mt-3">
                              $55,000 <small>/month</small>
                           </h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-sofa"></i> Beds : <strong>2</strong></span>
                           <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>1</strong></span>
                           <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>100 sq ft</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-danger">For Sale</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/paris.jpg'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">파리 파리</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                           <h2 class="text-success mb-0 mt-3">
                              $25,000 <small>/month</small>
                           </h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                           <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                           <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-warning">For Rent</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/swiss.jpg'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">스위스</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> NJ 07305, USA</h6>
                           <h2 class="text-success mb-0 mt-3">
                              $12,000 <small>/month</small>
                           </h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-sofa"></i> Beds : <strong>8</strong></span>
                           <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                           <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>120 sq ft</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card card-list">
                     <a href="#">
                        <span class="badge badge-secondary">For Rent</span>
                        <img class="card-img-top" src="<c:url value='/resources/img/overlay/newyork02.jpg'/>" alt="Card image cap"/>
                        <div class="card-body">
                           <h5 class="card-title">뉴욕뉴욕</h5>
                           <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hoboken, NJ, USA</h6>
                           <h2 class="text-success mb-0 mt-3">
                              $127,000 <small>/month</small>
                           </h2>
                        </div>
                        <div class="card-footer">
                           <span><i class="mdi mdi-sofa"></i> Beds : <strong>5</strong></span>
                           <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>3</strong></span>
                           <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>300 sq ft</strong></span>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section>
<!-- End 추천 특가 상품 List --> 
      
<!-- 추천 여행지 : 조회수 높은 도시 출력 6개 할것 -->
      <section class="section-padding bg-white">
         <div class="section-title text-center mb-5">
            <h2>인기 여행지 정보</h2>
            <p>나만의 여행계획을 세워보세요</p>
         </div>
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card bg-dark text-white card-overlay">
                     <a href="#">
                        <img class="card-img" src="<c:url value='/resources/img/overlay/newyork01.png'/>" alt="Card image"/>
                        <div class="card-img-overlay">
                           <h3 class="card-title text-white">New York</h3>
                           <p class="card-text text-white">16 Properties</p>
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
                           <p class="card-text text-white">16 Properties</p>
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
                           <p class="card-text text-white">265 Properties</p>
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
                           <p class="card-text text-white">620 Properties</p>
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
                           <p class="card-text text-white">28 Properties</p>
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
                           <p class="card-text text-white">28 Properties</p>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section>
<!-- End 추천 여행지 -->
      
      
