<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

      <!-- 메인 슬라이드 이미지 -->
      <section class="osahan-slider">
         <div id="osahanslider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#osahanslider" data-slide-to="0" class="active"></li>
               <li data-target="#osahanslider" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
               <div class="carousel-item active" style="background-image: url('<c:url value='/resources/img/slider/tokyo1.jpg'/>')">
                  <div class="overlay"></div>
               </div>
               <div class="carousel-item" style="background-image: url('<c:url value='/resources/img/slider/tokyo2.jpg'/>')">
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
        
         <div class="slider-form">
            <div class="container">
               <h1 class="text-center text-white mb-5">여행 정보</h1>    
               <!-- 여행지 검색바, form태그 안에 데이터 넣어서 컨트롤러로 보내야함 -->
               <form method="POST" action="<c:url value='/tripInfo/read'/>">
                  <div class="row no-gutters">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-airplane"></i></div>
                           <select class="form-control select2 no-radius">
                              <option value="">여행지역</option>
                              <option value="NorthAmerica">북아메리카</option>
                              <option value="SouthAmerica">남아메리카</option>
                              <option value="Europe">유럽</option>
                              <option value="Asia">아시아</option>
                              <option value="Africa">아프리카</option>
                              <option value="Oceania">오세아니아</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-earth"></i></div>
                           <select class="form-control select2 no-radius">
                              <option value="">국가명</option>
                              <option value="">나라1</option>
                              <option value="">나라2</option>
                              <option value="">나라3</option>
                              <option value="">나라4</option>
                              <option value="">나라5</option>
                              <option value="">나라6</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-city"></i></div>
                           <select class="form-control select2 no-radius">
                              <option value="">도시명</option>
                              <option value="">도시1</option>
                              <option value="">도시2</option>
                              <option value="">도시3</option>
                              <option value="">도시4</option>
                              <option value="">도시5</option>
                              <option value="">도시6</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-md-2">  
                        <button type="submit" class="btn btn-success btn-block no-radius font-weight-bold">SEARCH</button>
                     </div>
                  </div>
               </form>
               <!-- 여행지 검색바 끝 -->
            </div>
         </div>
      </section>
      <!-- 메인 슬라이드 이미지 끝 -->
      
      <!-- 여행정보 리스트(상위 6개) -->
   <section class="section-padding">
      <div class="section-title text-center mb-5">
         <h2>여행지 추천</h2>
         <p>회원가입시 관심지역을 기준으로 나타냅니다.</p>
      </div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<form>
							<a href="<c:url value='/tripInfo/read'/>?CITY_NAME=<%='괌'%>"><img class="card-img-top"
								src="<c:url value='/resources/img/blog/tripinfo1.jpg'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-success">첫번째 추천도시</span>
									<h6>괌</h6>
									<p class="mb-0">국가명</p>
								</div>
								<div class="card-footer">
									<p class="mb-0">관광지1, 관광지2...</p>
								</div>
							</a>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card blog-card">
							<a href="#"> <img class="card-img-top"
								src="<c:url value = '/resources/img/blog/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<span class="badge badge-danger">두번째 추천도시</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
								<div class="card-footer">
									<p class="mb-0">관광지1, 관광지2...</p>
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
									<span class="badge badge-info">세번째 추천도시</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
								<div class="card-footer">
									<p class="mb-0">관광지1, 관광지2...</p>
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
									<span class="badge badge-white">네번째 추천도시</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
								<div class="card-footer">
									<p class="mb-0">관광지1, 관광지2...</p>
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
									<span class="badge badge-info">다섯번째 추천도시</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
								<div class="card-footer">
									<p class="mb-0">관광지1, 관광지2...</p>
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
									<span class="badge badge-dark">여섯번째 추천도시</span>
									<h6>도시이름</h6>
									<p class="mb-0">국가명</p>
								</div>
								<div class="card-footer">
									<p class="mb-0">관광지1, 관광지2...</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
					</div>
					<div class="col-lg-4 col-md-4">
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
			</div>
		</div>
	</div>
   </section>
   <!-- 여행정보 리스트(상위 6개) 끝 -->


