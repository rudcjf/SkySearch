<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

 <link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>" rel="stylesheet" />

      <!-- Inner Header -->

      <!-- End Inner Header -->
 
 <!-- mypage tab -->     
      <section class="tab-view">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <ul class="nav justify-content-center">
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/main'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/edit'/>">회원정보 수정</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/pw_edit'/>">비밀번호 변경</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/withdrawal'/>">회원 탈퇴</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
 <!-- END mypage tab -->   
     
      <!-- member Profile -->
      <!-- 회원 리스트로부터 회원 시퀀스에 해당하는 회원의 정보를 read 나타낸다 -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6 mx-auto">
                 <div class="card padding-card"> 
	                 <form role="form" method="POST" action="<c:url value='/member/update?MEMBER_SEQ=${paramMap.MEMBER_SEQ}' />">
	                  <div class="card-body">
		                  <h2 class="mb-0 mt-4">Member ID :  <%-- ${resultMap.EMAIL} --%></h2>
		                  <h5 class="text-success mb-3">Member no. :  <%-- ${resultMap.MEMBER_SEQ} --%></h5>
		                 
		                  <div class="row mt-5">
		                     <div class="col-lg-6 col-md-6">
		                        <p><strong class="text-dark">NAME :</strong> <%-- ${resultMap.NAME} --%></p>
		                        <p><strong class="text-dark">PASSWORD :</strong> <%-- ${resultMap.PASSWORD} --%></p>
		                     <%--   <p><strong class="text-dark">GRADE :</strong>  ${resultMap.GRADE} ></p>--%>
		                        <p><strong class="text-dark">PHONE :</strong> <%-- ${resultMap.PHONE} --%></p>
		                        <p><strong class="text-dark">INTEREST LOCATION :</strong> <%-- ${resultMap.INT_LOCAL} --%></p>
		                     </div>
		                  </div>
                  	  </div>
                 	</form>  
                 </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End member Profile -->
      