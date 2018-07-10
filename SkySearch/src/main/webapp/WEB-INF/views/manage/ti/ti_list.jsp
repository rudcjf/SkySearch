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
						 <strong class="card-title">여행정보</strong>
							<input type="submit" class="btn btn-primary" value=정보입력
								onClick="location.href='<c:url value="/manage/ti/ti_edit"/>'"
								style="float: right;">
							<input type="submit" class="btn btn-primary" value=도시추가
								onClick="location.href='<c:url value="/manage/ti/ti_insertCity"/>'"
								style="float: right;"> 

						</div>
						<div class="card-body">
							<div id="bootstrap-data-table_wrapper"
								class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">


								<div class="row">
									<div class="col-sm-12">

										<!-- Table -->
										<table class="table table-striped table-bordered table-hover"
											id="bootstrap-data-table">
											<thead>
												<tr>

													<th><input type="checkbox" id="selecctall" /></th>
													<th>관광지명</th>
													<th>도시명</th>
													<th>설명</th>
													<th>주소</th>
													<th>등록자</th>
													<th>등록날짜</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${resultList}" var="resultData"
													varStatus="loop">
													<tr
														class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
														<td><input type="checkbox" class="checkbox"
															name="TRAVEL_SEQ" value="${resultData.TRAVEL_SEQ}" /></td>
														<td><a
															href="<c:url value="/manage/ti/ti_edit?TRAVEL_SEQ=${resultData.TRAVEL_SEQ}" />">
																${resultData.LANDMARK_NAME}</a></td>
														<td>${resultData.CITY_NAME}</td>
														<td>${resultData.LANDMARK_EXP}</td>
														<td>${resultData.LANDMARK_ADDR}</td>
														<td>${resultData.REGISTER_SEQ}</td>
														<td>${resultData.REGISTRY_DATE}</td>
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
	<!-- .animated -->

	</div>

	</div>

	<!-- .content -->
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->
</body>
</html>
