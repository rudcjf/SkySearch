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

		/* CountrySelectBox */
		var fn_setCountryFormTagSelectbox = function(url, id, params) {
			$
					.ajax({
						type : "POST",
						url : url,
						data : params,
						cache : false,
						success : function(data) {
							var formTag = "";
							if ("${resultMap.COUNTRY_NAME}" == "") {

								formTag += "<select class='form-control' name='COUNTRY_SEQ' >";
								$
										.each(
												data,
												function(i, item) {
													formTag += '<option value="'+item.COUNTRY_SEQ+'" >'
															+ item.COUNTRY_NAME;

												});
							} else {
								formTag += "<select class='form-control' name='COUNTRY_SEQ' disabled>";
								$
										.each(
												data,
												function(i, item) {
													if ("${resultMap.COUNTRY_NAME}" == item.COUNTRY_NAME) {
														formTag += '<option selected="selected" value="'+item.COUNTRY_SEQ+'" >'
																+ item.COUNTRY_NAME;
													} else {
														formTag += '<option value="'+item.COUNTRY_SEQ+'" >'
																+ item.COUNTRY_NAME;
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
		/* LocalSelectBox */
		var fn_setLocalFormTagSelectbox = function(url, id, params) {
			$
					.ajax({
						type : "POST",
						url : url,
						data : params,
						cache : false,
						success : function(data) {
							var formTag = "";
							if ("${resultMap.LOCAL_NAME}" == "") {

								formTag += "<select class='form-control' name='LOCAL_SEQ' >";
								$
										.each(
												data,
												function(i, item) {
													formTag += '<option value="'+item.LOCAL_SEQ+'" >'
															+ item.LOCAL_NAME;

												});
							} else {
								formTag += "<select class='form-control' name='LOCAL_SEQ' disabled>";
								$
										.each(
												data,
												function(i, item) {
													if ("${resultMap.LOCAL_NAME}" == item.LOCAL_NAME) {
														formTag += '<option selected="selected" value="'+item.LOCAL_SEQ+'" >'
																+ item.LOCAL_NAME;
													} else {
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
		/* LocalSelectBox2 */
		var fn_setLocalFormTagSelectbox2 = function(url, id, params) {
			$
					.ajax({
						type : "POST",
						url : url,
						data : params,
						cache : false,
						success : function(data) {
							var formTag = "";
							if ("${resultMap.LOCAL_NAME}" == "") {

								formTag += "<select class='form-control' name='LOCAL_SEQ' >";
								$
										.each(
												data,
												function(i, item) {
													formTag += '<option value="'+item.LOCAL_SEQ+'" >'
															+ item.LOCAL_NAME;

												});
							} else {
								formTag += "<select class='form-control' name='LOCAL_SEQ' disabled>";
								$
										.each(
												data,
												function(i, item) {
													if ("${resultMap.LOCAL_NAME}" == item.LOCAL_NAME) {
														formTag += '<option selected="selected" value="'+item.LOCAL_SEQ+'" >'
																+ item.LOCAL_NAME;
													} else {
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

					fn_setLocalFormTagSelectbox(
							"<c:url value='/ws/localList' />", "localDIV");
					fn_setLocalFormTagSelectbox2(
							"<c:url value='/ws/localList' />", "localDIV2");

					fn_setCountryFormTagSelectbox(
							"<c:url value='/ws/countryList' />", "countryDIV");

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
								style="float: right;"> <input type="submit"
								class="btn btn-primary" value=신규입력
								onClick="location.href='<c:url value="/manage/ti/ti_city"/>'"
								style="float: right;">
							<button type="button" class="btn btn-secondary mb-1"
								data-toggle="modal" data-target="#mediumModal"
								style="float: right;">국가추가</button>

						</div>
						<div class="card-body">


							<!-- 도시입력 -->
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
													<input type="hidden" class="form-control" name="CITY_SEQ"
														value="${resultMap.CITY_SEQ}"> <input
														type="hidden" class="form-control" name="COUNTRY_NAME"
														value="${resultMap.COUNTRY_SEQ}">

													<div class="form-group col-sm-4">
														<label>국가 명 :</label>
														<div id=countryDIV name="COUNTRY_NAME"></div>
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
														<label>위도:</label> <input type="text" class="form-control"
															name="CITY_LATITUDE" value="${resultMap.CITY_LATITUDE}">
													</div>
													<div class="form-group col-sm-6">
														<label>경도:</label> <input type="text" class="form-control"
															name="CITY_LONGITUDE" value="${resultMap.CITY_LONGITUDE}">
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
											<input type="submit" onclick="enable()"
												class="btn btn-success" value="입력" />
										</div>
									</div>
								</form>
							</div>
							<!-- 도시입력 END -->

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog"
		aria-labelledby="mediumModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediumModalLabel">Medium Modal</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 국가입력 -->
					<div class="col-sm-12">
						<form role="form" method="POST"
							action="<c:url value='/manage/ti/countrymerge' />">
							<input type="hidden" name="forwardView"
								value="/manage/ti/ti_city" />
							<div class="card padding-card">
								<div class="card-body">
									<div align="left">
										<div class="card-body">
											<div class="form-group col-sm-4">
												<label> 지역 명 : </label>
												<div id=localDIV2></div>
											</div>
												
												<input type="hidden"
												class="form-control" name="COUNTRY_SEQ"
												value="${resultMap.COUNTRY_SEQ}">

											<div class="form-group col-sm-4">
												<label>국가 명 :</label> <input type="text"
													class="form-control" name="COUNTRY_NAME"
													value="${resultMap.COUNTRY_NAME}">
											</div>
										</div>
									</div>
								</div>
								<div align="right">
									<input type="submit" onclick="enable()"
												class="btn btn-success" value="입력" />
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Cancel</button>
								</div>
							</div>
						</form>

					</div>
					<!-- 국가입력 END -->
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



