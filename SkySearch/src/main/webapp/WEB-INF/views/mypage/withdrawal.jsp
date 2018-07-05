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
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/main'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/edit'/>">회원정보수정</a>
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
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4 mx-auto">
                 <form role="form">
                 	<div class="card padding-card">
                    	<div class="card-body">
                        	<h4 class="card-title mb-4">회원 탈퇴</h4>
                        	<p>회원 탈퇴를 원하신다면 <br> Member ID와 Password를 입력해주세요</p>
                           	<div class="form-group">
                            	<label>Member ID <span class="text-danger">*</span></label>
                            	<input type="email" name="EMAIL" class="form-control" placeholder="Base form : mulcam@mulcam.com">
                            	<label>Password <span class="text-danger">*</span></label>
                            	<input type="password" name="PASSWORD" class="form-control" placeholder="Password">
                           	</div>
					 	</div> 
					</div>	
					<div align="right">	
		            	<button type="submit" class="btn btn-success">EDIT</button>
		                <button type="reset" class="btn btn-default">RESET</button>
		            </div>
                 </form> 
               </div>
            </div>
         </div>
      </section>
      <!-- End 회원탈퇴 -->
