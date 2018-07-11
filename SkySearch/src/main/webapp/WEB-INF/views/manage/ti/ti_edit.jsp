<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sufee Admin - HTML5 Admin Template</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<script>

/* disable change */
function enable() {
	$('select').attr('disabled', false);
	}

/* CITY SelectBox */
		var fn_setCityFormTagCheckbox = function(url, id, params) {
			$.ajax({
						type : "POST",
						url : url,
						data : params,
						cache : false,
						success : function(data) {
							var formTag = "";
							
							if("${resultMap.CITY_NAME}"==""){
								
								formTag += "<select class='form-control' name='CITY_SEQ' >";
								$
										.each(
												data,
												function(i, item) {
														formTag += '<option value="'+item.CITY_SEQ+'" >'
														+ item.CITY_NAME;
													
												});
							}else{
								formTag += "<select class='form-control' name='CITY_SEQ' disabled >";
								
								$
								.each(
										data,
										function(i, item) {
											if("${resultMap.CITY_NAME}"==item.CITY_NAME){
												formTag += '<option selected="selected" value="'+item.CITY_SEQ+'">'
												+ item.CITY_NAME;
											}else{
												formTag += '<option  value="'+item.CITY_SEQ+'" >'
												+ item.CITY_NAME;
											}
										});
								
							}
							formTag += '</select> ';
							$('#' + id).html(formTag);
						},
						error : function(xhr, status, exception) {
							alert("Failure \n (" + status + ")");
							return false;
						}
					});

		}
		/* LOCAL SelectBox */
		var fn_setLocalFormTagCheckbox = function(url, id, params) {
			$.ajax({
						type : "POST",
						url : url,
						data : params,
						cache : false,
						success : function(data) {
							var formTag = "";
							if("${resultMap.LOCAL_NAME}"==""){
								
								formTag += "<select class='form-control' name='LOCAL_SEQ' >";
								$
										.each(
												data,
												function(i, item) {
														formTag += '<option value="'+item.LOCAL_SEQ+'" >'
														+ item.LOCAL_NAME;
													
												});
							}else{
								formTag += "<select class='form-control' name='LOCAL_SEQ' disabled>";
								$
										.each(
												data,
												function(i, item) {
													if("${resultMap.LOCAL_NAME}"==item.LOCAL_NAME){
														formTag += '<option selected="selected" value="'+item.LOCAL_SEQ+'" >'
														+ item.LOCAL_NAME;
													}else{
														formTag += '<option value="'+item.LOCAL_SEQ+'" >'
														+ item.LOCAL_NAME;
													}
												});
							}
							formTag += '</select> ';
							$('#' + id).html(formTag);
						},
						error : function(xhr, status, exception) {
							alert("Failure \n (" + status + ")");
							return false;
						}
					});

		}

		$(document).ready(
				function() {
					fn_setCityFormTagCheckbox("<c:url value='/ws/cityList' />",
							"cityDIV");
					fn_setLocalFormTagCheckbox("<c:url value='/ws/localList' />",
					"localDIV");

				});
	</script>


	<div class="breadcrumbs">
		<div class="col-sm-4">
			<div class="page-header float-left">
				<div class="page-title">
					<h1>여행정보</h1>
				</div>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="page-header float-right">
				<div class="page-title">
					<ol class="breadcrumb text-right">
						<li><a href="<c:url value='/manage/main/index'/>">Dashboard</a></li>
						<li><a href="<c:url value='/manage/ti/ti_list'/>">여행정보</a></li>
						<li class="active">여행정보 입력</li>
					</ol>
				</div>
			</div>
		</div>
	</div>

	<div class="content mt-3">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<strong class="card-title">도시입력</strong> <input type="submit"
								class="btn btn-primary" value=정보목록
								onClick="location.href='<c:url value="/manage/ti/ti_list"/>'"
								style="float: right;">
								<input type="submit"
								class="btn btn-primary" value=도시입력
								onClick="location.href='<c:url value="/manage/ti/ti_local"/>'"
								style="float: right;">
						</div>
						<div class="card-body">
						<!-- CITY_INSERT -->
							<div class="col-sm-12">
								<form role="form" method="POST"
									action="<c:url value='/manage/ti/citymerge' />">
									<input type="hidden" name="forwardView"
										value="/manage/ti/ti_edit" />
									<div class="card padding-card">
										<div class="card-body">
											<div align="left">
												<div class="card-body">
													<div class="form-group col-sm-4">
														<label> 지역 명 : </label>
														<div id=localDIV></div>
													</div>
													<input type="hidden"
															class="form-control" name="CITY_SEQ"
															value="${resultMap.CITY_SEQ}">
													<input type="hidden"
															class="form-control" name="COUNTRY_SEQ"
															value="${resultMap.COUNTRY_SEQ}">
													<div class="form-group col-sm-4">
														<label>국가 명 :</label> <input type="text"
															class="form-control" name="COUNTRY_NAME"
															value="${resultMap.COUNTRY_NAME}">
													</div>
													<div class="form-group col-sm-4">
														<label>도시 명 :</label> <input type="text"
															class="form-control" name="CITY_NAME"
															value="${resultMap.CITY_NAME}">
													</div>
													<div class="form-group col-sm-12">
														<label>도시 주소:</label> <input type="text"
															class="form-control" name="CITY_ADD"
															value="${resultMap.CITY_ADD}">
													</div>
													<div class="form-group col-sm-6">
														<label>위도:</label> <input type="text"
															class="form-control" name="CITY_LATITUDE"
															value="${resultMap.CITY_LATITUDE}">
													</div>
													<div class="form-group col-sm-6">
														<label>경도:</label> <input type="text"
															class="form-control" name="CITY_LONGITUDE"
															value="${resultMap.CITY_LONGITUDE}">
													</div>
													<div class="col col-md-3">
														<label for="file-input" class=" form-control-label">이미지
															넣기</label>
													</div>
													<br>
													<div class="col-12 col-md-9">
														<input type="file" id="file-input" name="file-input"
															class="form-control-file">
													</div>

												</div>
											</div>
										</div>
										<div align="right">
											<input type="submit" onclick="enable()" class="btn btn-success" value="입력"/>
										</div>
									</div>
								</form>

							</div>
							
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<strong class="card-title">여행정보</strong> 
							<input type="submit"
								class="btn btn-primary" value=뒤로가기
								onClick="location.href='<c:url value="/manage/ti/ti_list"/>'"
								style="float: right;"> 
						</div>
						<div class="card-body">
							<section class="section-padding">
								<div class="container">
									<div class="row">
										<div class="col-lg-12 col-md-12 mx-auto">
											<form role="form" method="POST"
												action="<c:url value='/manage/ti/merge' />">
												<input type="hidden" name="forwardView"
													value="/manage/ti/ti_list" />
												<div class="card padding-card">
													<div class="card-body">
														<h4 class="card-title mb-4">도시정보 입력</h4>
														<p>도시 정보를 입력하세요</p>
														<div class="form-group">
															<input type="hidden" class="form-control"
																name="TRAVEL_SEQ" value="${resultMap.TRAVEL_SEQ}" />
														</div>
														<div class="form-group">
															<label>도시명 :</label> 
															<div id=cityDIV name="CITY_NAME"></div>
														</div>
														<!-- Repeat Contents -->
														<div id="room_type">

															<div align="left">

																<div class="card-body">
																	<div class="form-group">
																		<label>관광지명 :</label> <input type="text"
																			class="form-control" name="LANDMARK_NAME"
																			value="${resultMap.LANDMARK_NAME}">
																	</div>
																	<div class="form-group">
																		<label>관광지 주소 :</label> <input type="text"
																			class="form-control" name="LANDMARK_ADDR"
																			value="${resultMap.LANDMARK_ADDR}">
																	</div>
																	
																	<div class="form-group">
																		<label>관광지 설명 :</label> <input type="text"
																			class="form-control" name="LANDMARK_EXP"
																			value="${resultMap.LANDMARK_EXP}">
																	</div>
																	
																	<div class="col col-md-3">
																		<label for="file-input" class=" form-control-label">이미지
																			넣기</label>
																	</div>
																	<br>
																	<div class="col-12 col-md-9">
																		<input type="file" id="file-input" name="file-input"
																			class="form-control-file">
																	</div>

																</div>

																<input type="button" class="btn btn-secondary mb-1"
																	value="+" onclick="add_div()" style="float: right;">
															</div>

															<input type="button" class="btn btn-secondary mb-1"
																value="-" onclick="remove_div(this)"
																style="float: right;">

														</div>
														<div id="field"></div>
														<!-- Repeat Contents End -->

													</div>
													<div align="right">
														<script>
														
														</script>
														<input type="submit" onclick="enable()" class="btn btn-success" value="입력"/>
														<button type="reset" class="btn btn-default">RESET</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>


			</div>
		</div>
		<!-- .animated -->
	</div>

	
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->


</body>
</html>



