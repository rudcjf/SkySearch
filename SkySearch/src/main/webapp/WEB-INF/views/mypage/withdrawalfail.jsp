<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>" rel="stylesheet" />
<!-- 탈퇴 버튼 누르면 메인화면으로 전환 -->
<script>
	$(function() {
		$("#ForwareList").click(function() {
			$("form").submit(function(e) {
				$(this).attr("action", "<c:url value='/' />");
				return;
			});
		});
	});
</script>

      <!-- Inner Header -->
      <section class="section-padding bg-dark inner-header1">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">My Page</h1>
                  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><a class="text-white" href="#">My Page</a>  /  <span class="text-success">회원 탈퇴</span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Inner Header -->
 
  <!-- mypage tab -->      
      <section class="tab-view">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <ul class="nav justify-content-center">
                     <c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/member/read?EMAIL=${principalName}'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/member/edit?EMAIL=${principalName}'/>">회원정보 수정</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/pw_edit'/>">비밀번호변경</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/withdrawal'/>">회원탈퇴</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
 <!-- END mypage tab -->     
             
      <!-- 회원탈퇴 -->
            <!-- 회원리스트로부터 회원 시퀀스에 해당하는 회원의 정보를 delete(하지만 db에는 남는다?)-->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4 mx-auto">
                 <form role="form" method="POST"
					action="<c:url value='/member/disable?EMAIL=${resultData.EMAIL}&PASSWORD=${resultData.PASSWORD}' />">
                 	<input type="hidden" name="forwardView" value="/member/list" /> 
                 	<div class="card padding-card">
                    	<div class="card-body">
                        	<h4 class="card-title mb-4">회원 탈퇴</h4>
                        	<p><font color="red">회원탈퇴 실패!<br> Member ID와 Password를 다시 입력해주세요</font></p>
                           	<div class="form-group">
                            	<label>Member ID <span class="text-danger">*</span></label>
                            	<input type="email" name="email" class="form-control" placeholder="Base form : mulcam@mulcam.com">
                            	<br>
                            	<label>Password <span class="text-danger">*</span></label>
                            	<input type="password" name="password" class="form-control" placeholder="Password">
                           	</div>
                           	<br>
                           	<div align="center">	
				            	<button type="submit" class="btn btn-success col-4">회원 탈퇴</button>
				                <button type="reset" class="btn btn-default col-4">RESET</button>
				            </div>
					 	</div> 
					</div>	
               </form> 
               </div>
            </div>
         </div>
      </section>
      <!-- End 회원탈퇴 -->
