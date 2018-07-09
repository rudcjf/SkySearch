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
							<strong class="card-title">여행정보</strong> <input type="submit"
								class="btn btn-primary" value=글쓰기
								onClick="location.href='<c:url value="/manage/ti/ti_edit"/>'"
								style="float: right;">

						</div>
						<div class="card-body">
							<div id="bootstrap-data-table_wrapper"
								class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
								
									
								<div class="row">
									<div class="col-sm-12">
										<table id="bootstrap-data-table"
											class="table table-striped table-bordered" style="overflow:hidden;">
											<thead>
												<tr>
													<th>도시명</th>
													<th>주소</th>
													<th>관광지</th>
													<th>조회수</th>
													<th>등록자</th>
													<th>등록일자</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>도쿄타워</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>스카이트리</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>시부야109</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>롯폰기힐즈</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>센소지</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>도쿄도청사 전망대</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>아사쿠사</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>도쿄</td>
													<td>2 Chome-8-1 Nishishinjuku, Shinjuku-ku, Tōkyō-to
														163-8001 일본</td>
													<td>대관람차</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>뉴욕</td>
													<td>City Hall Park, New York, NY 10007 미국</td>
													<td>자유의 여신상</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>뉴욕</td>
													<td>City Hall Park, New York, NY 10007 미국</td>
													<td>타임스퀘어</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>뉴욕</td>
													<td>City Hall Park, New York, NY 10007 미국</td>
													<td>센트럴파크</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>뉴욕</td>
													<td>City Hall Park, New York, NY 10007 미국</td>
													<td>엠파이어스테이트빌딩</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>뉴욕</td>
													<td>City Hall Park, New York, NY 10007 미국</td>
													<td>LOVE조각상</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
												<tr>
													<td>뉴욕</td>
													<td>City Hall Park, New York, NY 10007 미국</td>
													<td>브루클린다리</td>
													<td>20</td>
													<td>0knave0</td>
													<td>2018.07.06</td>
												</tr>
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
		<!-- .animated -->
	</div>


	</div>
	<!-- .content -->
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->


</body>
</html>
