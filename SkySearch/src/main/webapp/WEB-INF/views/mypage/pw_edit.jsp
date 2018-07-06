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
                     <p class="mb-0 text-white"><a class="text-white" href="#">My Page</a>  /  <span class="text-success">비밀번호 변경</span></p>
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
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/main'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/edit'/>">회원정보 수정</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/pw_edit'/>">비밀번호 변경</a>
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
       
      <!-- 비밀번호 변경 -->
            <!-- 회원리스트로부터 회원 시퀀스에 해당하는 회원의 비밀번호를 수정(edit)한다-->
     <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4 mx-auto">
                  <form role="form" method="POST" action="<c:url value='/member/merge' />">
                    <div class="card padding-card">
                        <div class="card-body">
                           <h4 class="card-title mb-4">비밀번호 변경</h4>
                           <P>비밀번호를 입력하세요</P>
                           <div class="form-group">
                              <label>현재 비밀번호 <span class="text-danger">*</span></label>
                              <input id="PASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
                           </div>
                           <div class="form-group">
                              <label>새 비밀번호 <span class="text-danger">*</span></label>
                              <input id="PASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="새 비밀번호를 입력하세요">
                           </div>
                           <div class="form-group">
                              <label>새 비밀번호 확인 <span class="text-danger">*</span></label>
                              <input id="PASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="새 비밀번호를 다시 입력하세요">
                           </div>
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
      <!-- End 비밀번호 변경 -->
      
