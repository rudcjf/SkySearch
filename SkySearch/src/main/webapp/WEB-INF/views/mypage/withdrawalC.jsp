<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>" rel="stylesheet" />

<%-- 회원 탈퇴시 탈퇴 완료 Modal 
 <script>
$(document).ready(function(){
    $("#Btn").click(function(){
        $("#Modal").modal();
    });
});
</script> 
  <div class="modal fade" id="Modal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">회원 탈퇴 완료</h5>
        </div>
        <div class="modal-body">
          <p>회원 탈퇴에 성공하셨습니다</p>
          </div>
        <div class="modal-footer" align="center">
         <c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
          <a class="btn btn-success btn-sm" href="<c:url value='/j_spring_security_logout'/>">Close</a>
        </div> 
      </div>
    </div>
  </div> --%>

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
                        <a class="nav-link" href="<c:url value='/mypage/read?EMAIL=${principalName}'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/edit?EMAIL=${principalName}'/>">회원정보 수정</a>
                     </li>
                    <%--  <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/member/pwedit?EMAIL=${principalName}'/>">비밀번호 변경</a>
                     </li> --%>
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/withdrawal?EMAIL=${principalName}'/>">회원 탈퇴</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
 <!-- END mypage tab -->     
             
      <!-- 회원탈퇴 완료 -->
 <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4 mx-auto">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h5 class="card-title mb-4">회원 탈퇴 완료</h5>
                        <br>
                           <div class="form-group">
                             <p>회원 탈퇴에 성공하셨습니다 <br> 다음에 또 이용해 주세요</p>
                          <br>
						   </div>
						   <div align="center">
						   	 <c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
        					 <a class="btn btn-success col-5" href="<c:url value='/j_spring_security_logout'/>">Home</a>
        					                           </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End 회원탈퇴 완료 -->
