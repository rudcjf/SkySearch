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
		var fn_setFormTagCheckbox = function(url, id, params) {
			$
					.ajax({
						type : "POST",
						url : url,
						data : params,
						cache : false,
						success : function(data) {
							var formTag = "";
							formTag += "<select class='form-control' name='LOCAL_SEQ'>";
							$
									.each(
											data,
											function(i, item) {
												formTag += '<option value="'+item.LOCAL_SEQ+'">'
														+ item.LOCAL_NAME;
											});
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
					fn_setFormTagCheckbox("<c:url value='/ws/localList' />",
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
						<li class="active">도시 입력</li>
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
								class="btn btn-primary" value=뒤로가기
								onClick="location.href='<c:url value="/manage/ti/ti_list"/>'"
								style="float: right;">
						</div>
						<div class="card-body">
						<!-- CITY_INSERT -->
							<div class="col-sm-6">
								<form role="form" method="POST"
									action="<c:url value='/manage/ti/citymerge' />">
									<input type="hidden" name="forwardView"
										value="/manage/ti/ti_ㅣlist" />
									<div class="card padding-card">
										<div class="card-body">
											<div align="left">
												<div class="card-body">
													<div class="form-group col-sm-4">
														<label> 지역 명 : </label>
														<div id=localDIV></div>
													</div>
													<div class="form-group col-sm-4">
														<label>국가 명 :</label> <input type="text"
															class="form-control" name="COUNTRY_NAME"
															value="${resultMap.COUNTRY_NAME}">
													</div>
													<div class="form-group col-sm-4">
														<label>도시 명 :</label> <input type="text"
															class="form-control" name="ITY_NAME"
															value="${resultMap.CITY_NAME}">
													</div>
													<div class="form-group col-sm-12">
														<label>도시 주소:</label> <input type="text"
															class="form-control" name="CITY_ADD"
															value="${resultMap.CITY_ADD}">
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
											<input type="submit" class="btn btn-success" value="입력"/>
										</div>
									</div>
								</form>

							</div>
							<div class="col-sm-6">
								<form role="form" method="POST"
									action="<c:url value='/manage/ti/citymerge' />">
									<input type="hidden" name="forwardView"
										value="/manage/ti/ti_ㅣlist" />
									<div class="card padding-card">
										<div class="card-body">
											<div align="left">
												<div class="card-body">
													<div class="form-group col-sm-4">
														<label> 지역 명 : </label>
														<div id=localDIV></div>
													</div>
													<div class="form-group col-sm-4">
														<label>국가 명 :</label> <input type="text"
															class="form-control" name="COUNTRY_NAME"
															value="${resultMap.COUNTRY_NAME}">
													</div>
													<div class="form-group col-sm-4">
														<label>도시 명 :</label> <input type="text"
															class="form-control" name="ITY_NAME"
															value="${resultMap.CITY_NAME}">
													</div>
													<div class="form-group col-sm-12">
														<label>도시 주소:</label> <input type="text"
															class="form-control" name="CITY_ADD"
															value="${resultMap.CITY_ADD}">
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
											<input type="submit" class="btn btn-success" value="입력"/>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
		<!-- .animated -->
	</div>


	<!-- .content -->
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->


</body>
</html>



