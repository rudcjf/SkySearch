<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

      <!-- Inner Header -->
      <section class="section-padding bg-dark inner-header">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">My Page</h1>
                  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><a class="text-white" href="#">My Page</a>  /  <span class="text-success">내 정보</span></p>
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
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-5 col-md-5">
                <img class="rounded img-fluid" src="<c:url value='/resources/img/member.jpg'/>" alt="Card image cap">
               </div>
                <p> </p>
                  <p> </p>
                  <p> </p>
               <div class="col-lg-7 col-md-7 pl-5 pr-5">
                 <form role="form" method="POST" action="<c:url value='/member/update?MEMBER_SEQ=${paramMap.MEMBER_SEQ}' />">
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
                 </form>  
               </div>
            </div>
         </div>
      </section>
      <!-- End member Profile -->
      