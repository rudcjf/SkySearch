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
                     <p class="mb-0 text-white"><a class="text-white" href="#">My Page</a>  /  <span class="text-success">My Page</span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Inner Header -->
      
      <section class="tab-view">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <ul class="nav justify-content-center">
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/main'/>">My Page</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/edit'/>">회원정보수정</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/pw_edit'/>">비밀번호변경</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/withdrawal'/>">회원탈퇴</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
      
      <!-- User Profile -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-5 col-md-5">
                  <img class="rounded img-fluid" src="img/agent.jpg" alt="Card image cap">
               </div>
               <div class="col-lg-7 col-md-7 pl-5 pr-5">
                  <h1 class="mb-0 mt-4">Steve Martin</h1>
                  <h5 class="text-success mb-3">Buying Agent</h5>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis tincidunt est, et euismod purus suscipit quis. Etiam euismod ornare elementum.lobortis tincidunt est, et euismod purus suscipit quis. Etiam euismod ornare elementum. </p>
                  <div class="row mt-3">
                     <div class="col-lg-6 col-md-6">
                        <p><strong class="text-dark">Phone :</strong> +91 12345-67890</p>
                        <p><strong class="text-dark">Address :</strong> 1200 Petersham Town</p>
                        <p><strong class="text-dark">State :</strong> Newcastle</p>
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <p><strong class="text-dark">Website :</strong> www.askbootstrap.com</p>
                        <p><strong class="text-dark">City :</strong> Sydney</p>
                        <p><strong class="text-dark">Zip/Postal Code  :</strong> 54330</p>
                     </div>
                  </div>
                  <div class="footer-social"><span>Follow : </span>
                     <a href="#"><i class="mdi mdi-facebook"></i></a>
                     <a href="#"><i class="mdi mdi-twitter"></i></a>
                     <a href="#"><i class="mdi mdi-instagram"></i></a>
                     <a href="#"><i class="mdi mdi-google"></i></a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End User Profile -->
      
