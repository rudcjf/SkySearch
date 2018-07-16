<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>"	rel="stylesheet" />
<!-- 회원정보의 member 테이블 update와, int_local 테이블update가 함께 되야 한다 -->
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
<!-- 관심지역 다중 클릭 체크박스/ 회원의 관심지역으로 체크박스가 체크되어야함. -->
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
						$
								.each(
										data,
										function(i, item) {
											if("${resultMap.LOCAL_NAME}"==""){
												formTag += "<label class='checkbox-inline'>";
												formTag += '<input type=checkbox name="LOCAL_SEQ" value="'+item.LOCAL_SEQ+'">' + item.LOCAL_NAME;
												formTag += '</label> ';
											}else{
												formTag += "<label class='checkbox-inline'>";
												formTag += '<input type=checkbox name="LOCAL_SEQ" value="'+item.LOCAL_SEQ+'">' + "${resultMap.LOCAL_NAME}";
												formTag += '</label> ';
											}
										});
						$('#' + id).html(formTag);

					},
					error : function(xhr, status, exception) {
						alert("Failure \n (" + status + ")");
						return false;
					}
				});
	}

	$(document).ready(function() {
		fn_setFormTagCheckbox("<c:url value='/ws/localList' />", "localDIV");

	});
</script>

<!-- Inner Header -->
<section class="section-padding bg-dark inner-header1">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="mt-0 mb-3 text-white">My Page</h1>
				<div class="breadcrumbs">
					<p class="mb-0 text-white">
						<a class="text-white" href="#">My Page</a> / <span
							class="text-success">회원정보 수정</span>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End Inner Header -->

<!--  mypage tab -->
<section class="tab-view">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="nav justify-content-center">
					<c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/read?EMAIL=${principalName}'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/edit?EMAIL=${principalName}'/>">회원정보 수정</a>
                     </li>
					<%-- <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/member/pwedit?EMAIL=${principalName}'/>">비밀번호 변경</a>
                     </li> --%>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/withdrawal?EMAIL=${principalName}'/>">회원 탈퇴</a>
                     </li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!--  END mypage tab -->

<!-- 회원정보수정 -->
<!-- 회원리스트로부터 회원 시퀀스에 해당하는 회원 정보를 가져와서 (read)에서 수정(edit), 회원번호, 아이디, 이름, 비밀번호는 변경 안된다 -->
<section class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 mx-auto">
				<form role="form" method="POST" action="<c:url value='/member/merge' />">
					<input type="hidden" name="forwardView" value="/member/read" /> 
					<input type="hidden" name="MEMBER_SEQ"	value="${resultMap.MEMBER_SEQ }" />
					<div class="card padding-card">
						<div class="card-body">
							<h4 class="card-title mb-4">회원정보 수정</h4>
							<p>회원 정보를 입력하세요</p>
							<div class="form-group">
								<label>Member ID :</label> <input type="email"	class="form-control" name="EMAIL" value="${resultMap.EMAIL}" readonly>
							</div>
							<div class="form-group">
								<label>Name :</label> <input type="text" class="form-control"
									name="NAME" value="${resultMap.NAME}" readonly>
							</div>
							<div class="form-group">
								<label>PASSWORD :</label> <input type="password"
									class="form-control" name="PASSWORD"
									value="${resultMap.PASSWORD}">
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
							<br>
						       <div align="center">
								<button type="submit" class="btn btn-success col-3">EDIT</button>
								<button type="reset" class="btn btn-default col-3">Cancel</button>

						   </div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- End 회원정보수정 -->

