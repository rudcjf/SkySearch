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
					<h1>Dashboard</h1>
				</div>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="page-header float-right">
				<div class="page-title">
					<ol class="breadcrumb text-right">
						<li><a href="#">Dashboard</a></li>
						<li><a href="#">Table</a></li>
						<li class="active">Data table</li>
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
							<strong class="card-title">Data Table</strong>
						</div>
						<div class="card-body">
							<div id="bootstrap-data-table_wrapper"
								class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">

								<div class="row">
									<form role="form" method="POST"
										action="<c:url value='/manage/member/disable?MEMBER_SEQ=${resultData.MEMBER_SEQ}' />">
										<div class="col-sm-12">
											<table class="table table-striped table-bordered table-hover"
												id="bootstrap-data-table">
												<thead>
													<tr>
														<th><input type="checkbox" id="selecctall" /></th>
														<th>EMAIL</th>
														<th>NAME</th>
														<th>PHONE</th>
														<th>INT_LOCAL</th>
														<th>ENABLE</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${resultList}" var="resultData"
														varStatus="loop">
														<tr
															class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
															<td><input type="checkbox" class="checkbox"
																name="MEMBER_SEQ" value="${resultData.MEMBER_SEQ}" /></td>
															<td><a
																href="<c:url value="/manage/member/edit?MEMBER_SEQ=${resultData.MEMBER_SEQ}" />">
																	${resultData.EMAIL}</a></td>
															<td>${resultData.NAME}</td>
															<td>${resultData.PHONE}</td>
															<td>${resultData.INT_LOCAL}</td>
															<td>${resultData.ENABLE}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<input type="hidden" name="MEMBER_SEQ" value="dummy_id">
											<button type="submit" class="btn btn-default">disable
												Button</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
		<!-- .animated -->
	</div>



	<!-- .content -->

	<!-- /#right-panel -->

	<!-- Right Panel -->


</body>
</html>
