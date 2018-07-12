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

/* DisableChange */
function enable() {
	$('select').attr('disabled', false);
	}

		/* CitySelectBox */
		var fn_setCityFormTagSelectbox = function(url, id, params) {
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
		

		$(document).ready(
				function() {
					fn_setCityFormTagSelectbox("<c:url value='/ws/cityList' />",
							"cityDIV");

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
							<strong class="card-title">관광지입력</strong> <input type="submit"
								class="btn btn-primary" value=정보목록
								onClick="location.href='<c:url value="/manage/ti/ti_list"/>'"
								style="float: right;"> <input type="submit"
								class="btn btn-primary" value=도시입력
								onClick="location.href='<c:url value="/manage/ti/ti_city"/>'"
								style="float: right;">
						</div>
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-lg-12 col-md-12 mx-auto">
										<form role="form" method="POST"
											action="<c:url value='/manage/ti/merge' />">
											<input type="hidden" name="forwardView"
												value="/manage/ti/ti_list" />
											<div class="card padding-card">
												<div class="card-body">
													<h4 class="card-title mb-4">관광지 입력</h4>
													<p>관광지 정보를 입력하세요</p>
													<div class="form-group">
														<input type="hidden" class="form-control"
															name="TRAVEL_SEQ" value="${resultMap.TRAVEL_SEQ}" />
													</div>
													
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
													<div class="form-group">
														<label>도시명 :</label>
														<div id=cityDIV name="CITY_NAME"></div>
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
											<div align="right">
												
												<input type="submit" onclick="enable()"
													class="btn btn-success" value="입력" />

											</div>
										</form>
									</div>
								</div>
							</div>
						</div>


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



