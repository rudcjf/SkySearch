
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css"
	href="<c:url value='/resources/vendor/bootstrap/css/specialmj.css'/>"
	rel="stylesheet" />

<!-- 특가 검색 Main Slider With Form -->
<section class="osahan-slider">
	<div id="osahanslider" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#osahanslider" data-slide-to="0" class="active"></li>
			<li data-target="#osahanslider" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active"
				style="background-image: url('<c:url value='/resources/img/slider/1.jpg'/>')">
				<div class="overlay"></div>
			</div>
			<div class="carousel-item"
				style="background-image: url('<c:url value='/resources/img/slider/2.jpg'/>')">
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
	<div class="slider-form">
		<div class="container">
			<h1 class="text-center text-white mb-5">여행 정보</h1>
			<!-- 여행지 검색바, form태그 안에 데이터 넣어서 컨트롤러로 보내야함 -->
			<form>
				<div class="row no-gutters">
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					<div class="col-md-3">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="mdi mdi-earth"></i>
							</div>
							<select class="form-control select2 no-radius" placeholder="여행지역">
								<option value="">여행지역</option>
								<option value="Japan">일본</option>
								<option value="Hongkong">홍콩,싱가포르,대만,마카오</option>
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
							<div class="input-group-addon">
								<i class="mdi mdi-airplane"></i>
							</div>
							<select class="form-control select2 no-radius">
								<option value="">국가명</option>
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
							<div class="input-group-addon">
								<i class="mdi mdi-map-marker-outline"></i>
							</div>
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
						<button type="submit"
							class="btn btn-success btn-block no-radius font-weight-bold">SEARCH</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- End 특가 검색 Main Slider With Form -->
<!-- 광고 특가  Product List -->
<section class="section-padding">
	<div class="container">
		<div class="row">

			<div class="col-lg-12 col-md-12">
				<div class="osahan_top_filter row">
					<div class="col-lg-11 col-md-11 tags-action">
						<h4>이 특가 추천</h4>
						<!-- test -->
						<a href="<c:url value='/transport/flight'/>">항공권</a>
						<!-- end test -->
					</div>
					<div class="col-lg-1 col-md-1 sort-by-btn float-right">
						<div class="tooltipmj">
							<em>광고</em><i class="mdi mdi-help-circle-outline"></i>


							<!-- tooltip -->
							<!-- <div class="">arrow
	                     	<i class="mdi mdi-tooltip"></i>
	                     	</div> -->
							<span class="tooltiptextmj">
								<!-- tooltip-inner --> skysearch의 광고상품을 구입한 특가가 보여지는 영역입니다.
							</span>
						</div>

					</div>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="<c:url value='/specialPrice/read'/>"> <span
								class="badge badge-danger">HOT</span>
							<!-- 이부분은 뱃지 영역 ->빨간 뱃지: 조회수 기준 이상(예 100이상) 띄워줌, 흑색 뱃지: 마감된 뱃지  -->
								<img class="card-img-top"
								src="<c:url value='/resources/img/special/thumb_1.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">
										제주항공 찜 특가
										<!-- 이부분은 특가 게시판 제목입니다 -->
									</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>다낭, 베트남
										<!-- 이부분은 도시명,국가명입니다 -->
									</h6>
									<h2 class="text-success mb-0 mt-3">
										140,000원 ~
										<!-- 이부분은 특가정보 가격입니다 -->
									</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>제주항공<!--이 부분은 특가정보의 항공사명입니다 --></strong></span>
									<span><i class="mdi mdi-checkbox-marked-outline"></i> 특가
										종료일 : <strong>18.07.24<!-- 이부분은 특가정보의 종료일입니다  --></strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span> <img
								class="card-img-top"
								src="<c:url value='/resources/img/list/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span> <img
								class="card-img-top"
								src="<c:url value='/resources/img/list/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>
<hr>
<!-- End 광고 특가  Product List -->
<!--  Product List -->
<section class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12">
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
									class="mdi mdi-chevron-right"></i> 진행중인 특가 </a> <a
									class="dropdown-item" href="#"><i
									class="mdi mdi-chevron-right"></i> 종료된 특가 </a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span>
							<!-- 조회수가 기준(예 100) 이상인 특가 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/1.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span>
							<!-- 조회수가 기준(예 100) 이상인 특가 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span>
							<!-- 조회수가 기준(예 100) 이상인 특가 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/2.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span>
							<!-- 조회수가 기준(예 100) 이상인 특가 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-danger">HOT</span> <img
								class="card-img-top"
								src="<c:url value='/resources/img/list/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <img class="card-img-top"
								src="<c:url value='/resources/img/list/5.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <img class="card-img-top"
								src="<c:url value='/resources/img/list/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <img class="card-img-top"
								src="<c:url value='/resources/img/list/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-secondary">마감</span>
							<!-- 마감된 이벤트 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/3.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-secondary">마감</span>
							<!-- 마감된 이벤트 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-secondary">마감</span>
							<!-- 마감된 이벤트 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/4.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card card-list">
							<a href="#"> <span class="badge badge-secondary">마감</span>
							<!-- 마감된 이벤트 표시 --> <img class="card-img-top"
								src="<c:url value='/resources/img/list/3.png'/>"
								alt="Card image cap">
								<div class="card-body">
									<h5 class="card-title">제목</h5>
									<h6 class="card-subtitle mb-2 text-muted">
										<i class="mdi mdi-map-marker-multiple"></i>도시명, 국가
									</h6>
									<h2 class="text-success mb-0 mt-3">가격 ~</h2>
								</div>
								<div class="card-footer">
									<span><i class="mdi mdi-airplane"></i> 항공사 : <strong>항공사
											명</strong></span> <span><i class="mdi mdi-checkbox-marked-outline"></i>
										특가 종료일 : <strong>날짜</strong></span>
								</div>
							</a>
						</div>
					</div>
				</div>
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
		</div>
	</div>
</section>
<!-- End Product List -->
