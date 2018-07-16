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

					fn_setLocalFormTagSelectbox2(
							"<c:url value='/ws/localList' />", "localDIV2");
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
						<li class="active">여행정보</li>
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
							<strong class="card-title">여행정보</strong> <input type="submit"
								class="btn btn-primary" value=관광지입력
								onClick="location.href='<c:url value="/manage/ti/ti_edit"/>'"
								style="float: right;">
							<button type="button" class="btn btn-secondary mb-1"
								data-toggle="modal" data-target="#mediumModal"
								style="float: right;">국가추가</button>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-sm-12">


									<!-- TAB -->
									<div class="card-body">
										<!-- Centered Tabs -->
										<ul class="nav nav-tabs nav-justified">
											<li class="nav-item"><a class="nav-link active"
												href="<c:url value='/manage/ti/ti_cilist'/>">국가목록</a></li>
											<li class="nav-item"><a class="nav-link"
												href="<c:url value='/manage/ti/ti_list'/>">관광지목록</a></li>
										</ul>
									</div>
									<!-- 도시TAB -->

									<!-- Table -->
									<div id="bootstrap-data-table_wrapper"
										class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
										<table class="table table-striped table-bordered table-hover"
											id="bootstrap-data-table">
											<thead>
												<tr>
													
													<th>도시명</th>
													<th>국가</th>
													<th>위도</th>
													<th>경도</th>
													<th>주소</th>
													<th>조회수</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${resultList}" var="resultData"
													varStatus="loop">
													<tr
														class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
														
														<td><a
															href="<c:url value="/manage/ti/ti_city?TRAVEL_SEQ=${resultData.TRAVEL_SEQ}" />">
																${resultData.CITY_NAME}</a></td>
														<td>${resultData.COUNTRY_NAME}</td>
														<td>${resultData.CITY_LATITUDE}</td>
														<td>${resultData.CITY_LONGITUDE}</td>
														<td>${resultData.CITY_ADD}</td>
														<td>${resultData.CITY_VIEWS}</td>
														<td><input type="checkbox" class="checkbox"
															name="TRAVEL_SEQ" value="${resultData.TRAVEL_SEQ}" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
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

											<input type="hidden" class="form-control" name="COUNTRY_SEQ"
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
									<input type="submit" onclick="enable()" class="btn btn-success"
										value="입력" />
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

	<!-- .content -->
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->

</body>
</html>