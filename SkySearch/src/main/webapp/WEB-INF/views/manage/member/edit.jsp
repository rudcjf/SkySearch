<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>"
	rel="stylesheet" />

<script>
	$(function() {
		$("#ForwareList").click(function() {
			$("form").submit(function(e) {
				$(this).attr("action", "<c:url value='/mypage/read'/>");
				return;
			});
		});
	});
</script>
<!-- 관심지역 다중 클릭 체크박스 -->
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
						if("${resultMap.LOCAL_NAME}"==""){
							
						$
								.each(
										data,
										function(i, item) {
											formTag += "<label class='checkbox-inline'>";
											formTag += '<input type=checkbox name="LOCAL_SEQ" value="'+item.LOCAL_SEQ+'">'
													+ item.LOCAL_NAME;
											formTag += '</label> ';
										});
						}else{
							$
							.each(
									data,
									function(i, item) {
										if("${resultMap.LOCAL_NAME}"==item.LOCAL_NAME){
											formTag += "<label class='checkbox-inline'>";
											formTag += '<input type=checkbox checked="checked" name="LOCAL_SEQ" value="'+item.LOCAL_SEQ+'">'
													+ item.LOCAL_NAME;
											formTag += '</label> ';
										}else{
										formTag += "<label class='checkbox-inline'>";
										formTag += '<input type=checkbox name="LOCAL_SEQ" value="'+item.LOCAL_SEQ+'">'
												+ item.LOCAL_NAME;
										formTag += '</label> ';
										}
									});
							
						}
						$('#' + id).html(formTag);

					},
					error : function(xhr, status, exception) {
						alert("Failure \n (" + status + ")");
						return false;
					}
				});
	}

	$(document).ready(function() {
		fn_setFormTagCheckbox("<c:url value='/ws/checkLocal' />", "localDIV");

	});
</script>


<!-- Inner Header -->

<!--  END mypage tab -->

<!-- 회원정보수정 -->
<!-- 회원리스트로부터 회원 시퀀스에 해당하는 회원 정보를 가져와서 (read)에서 수정(edit), 회원번호, 아이디, 이름, 비밀번호는 변경 안된다 -->
<section class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 mx-auto">
				<form role="form" method="POST" action="<c:url value='/member/merge' />">
					<!--<input type="hidden" name="forwardView" value="/member/read" /> -->
					<input type="hidden" name="MEMBER_SEQ"	value="${resultMap.MEMBER_SEQ }" />
					<div class="card padding-card">
						<div class="card-body">
							<h4 class="card-title mb-4">회원정보 수정</h4>
							<p>회원 정보를 입력하세요</p>
							<div class="form-group">
								<label>Member ID :</label> <input type="email"
									class="form-control" name="EMAIL" value="${resultMap.EMAIL}"
									readonly>
							</div>
							<div class="form-group">
								<label>Name :</label> <input type="text" class="form-control"
									name="NAME" value="${resultMap.NAME}" readonly>
							</div>
							<div class="form-group">
								<label>PASSWORD :</label> <input type="password"
									class="form-control" name="PASSWORD"
									value="${resultMap.PASSWORD}" readonly>
							</div>
							<div class="form-group">
								<label>Phone :</label> <input type="text" class="form-control"
									name="PHONE" value="${resultMap.PHONE}">
							</div>
							<div class="form-group">
								<label> INTEREST LOCATION : </label>
								<p>관심 지역을 1곳 이상 선택하세요</p>
								<div id=localDIV></div>
							</div>
							<%--  <div class="form-group">
                              <label>INTEREST LOCATION :</label>
	                           <div class="row">
	                              <div class="form-group col-md-6">
		                              <select class="form-control custom-select" id="INT_LOCAL" name="INT_LOCAL" value="${resultMap.INT_LOCAL}">
		                              	<option value="">Location 1</option>
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
	                              <div class="form-group col-md-6">
	                                 <select class="form-control custom-select" id="INT_LOCAL" name="INT_LOCAL">
		                              	<option value="">Location 2</option>
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
                           </div> --%>
							<br>
							<div align="center">
								<button type="submit" class="btn btn-success">EDIT</button>
								<button type="reset" class="btn btn-default">RESET</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- End 회원정보수정 -->
