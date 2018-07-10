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
							<strong class="card-title">여행정보</strong> <input type="submit"
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
														<input type="hidden" class="form-control" name="TRAVEL_SEQ"
															value="${resultMap.TRAVEL_SEQ}" />
															</div>
														<div class="form-group">
															<label>도시명 :</label> <input type="text"
																class="form-control" name="CITY_NAME"
																value="${resultMap.CITY_NAME}">
														</div>
														<div class="form-group">
															<label>주소 :</label> <input type="text"
																class="form-control" name="CITY_ADD"
																value="${resultMap.CITY_ADD}">
														</div>
														<!-- Repeat Contents -->
														<div id="room_type">

															<div align="left">

																<div class="card-body">
																	<div class="form-group">
																		<label>관광지명 :</label> <input type="text"
																			class="form-control" name="LANDMARK_NAME"
																			value="${resultMap.LANDMARK_NAME}" >
																	</div>
																	<div class="form-group">
																		<label>관광지 주소 :</label> <input type="text"
																			class="form-control" name="LANDMARK_ADDR"
																			value="${resultMap.LANDMARK_ADDR}" >
																	</div>
																	<div class="form-group">
																		<label>관광지 설명 :</label>
																		<textarea name="textarea-input LANDMARK_EXP"
																			id="textarea-input" rows="3"
																			class="form-control">${resultMap.LANDMARK_EXP}</textarea>
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
														<button type="submit" class="btn btn-success">입력</button>
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

	<!-- Modal Contents -->
	<div class="form-group">
		<div class="modal fade" id="scrollmodal" tabindex="-1" role="dialog"
			aria-labelledby="scrollmodalLabel" style="display: none;"
			aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="scrollmodalLabel">Scrolling Long
							Content Modal</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>관광지명 :</label> <input type="text" class="form-control"
								name="LANDMARK_NAME" value="${resultMap.LANDMARK_NAME}" readonly>
						</div>
						<div class="form-group">
							<label>관광지 주소 :</label> <input type="text" class="form-control"
								name="LANDMARK_ADDR" value="${resultMap.LANDMARK_ADDR}" readonly>
						</div>
						<div class="form-group">
							<label>관광지 설명 :</label>
							<textarea name="textarea-input LANDMARK_EXP" id="textarea-input"
								rows="5" placeholder="내용을 입력하세요." class="form-control">${resultMap.LANDMARK_EXP}</textarea>
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
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">입력</button>
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



