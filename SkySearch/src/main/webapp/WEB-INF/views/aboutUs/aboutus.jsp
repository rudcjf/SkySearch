<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

    <!-- Inner Header -->
      <section class="section-padding bg-dark inner-header">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">About Us</h1>
                  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><a class="text-white" href="#">About Us</a>  /  <span class="text-success">About Us</span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Inner Header -->
      
      <!-- About -->
      <section class="section-padding bg-white">
         <div class="container">
            <div class="row">
               <div class="pl-4 col-lg-5 col-md-5 pr-4">
                  <img class="rounded img-fluid" src="<c:url value='/resources/img/europe.png'/>" alt="Card image cap">
               </div>
               <div class="col-lg-6 col-md-6 pl-5 pr-5">
                  <h2 class="mt-5 mb-5">SKY Search</h2>
                  <h5 class="mt-2">항공권 특가 상품</h5>
                  <p>가장 빠르게 항공권 특가 정보를 제공합니다</p>
                  <h5 class="mt-4">인기 여행지 정보 제공</h5>
                  <p>쉽고 빠르게,나만의 여행 계획을 세워보세요</p>
               </div>
            </div>
         </div>
      </section>
      <!-- End About -->
      
<!-- Developer/Maganer 소개 -->
	<section class="section-padding">
         <div class="section-title text-center mb-5">
            <h2>Trusted Agents</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
         </div>
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card padding-card">
                     <div class="card-body agents-card text-center">
                        <img class="img-fluid mb-4" src="<c:url value='/resources/img/user/seungju.jpg'/>" alt=""/>
                        <p class="mb-4">프로젝트 매니저를 맡고  있는 이승주 입니다. 스카이서치 많이 이용해 주세요!!</p>
                        <h6 class="mb-0 text-success">- 이 승주</h6>
                        <small>Project Manager</small>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card padding-card">
                     <div class="card-body agents-card text-center">
                        <img class="img-fluid mb-4" src="<c:url value='/resources/img/user/taegun.jpg'/>" alt=""/>
                        <p class="mb-4">팀에서 귀여움과 외모를 담당하는 유태근 입니다..</p>
                        <h6 class="mb-0 text-success">- 유 태근</h6>
                        <small>Travel Information 총괄</small>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card padding-card">
                     <div class="card-body agents-card text-center">
                        <img class="img-fluid mb-4" src="<c:url value='/resources/img/user/minchae.jpg'/>" alt=""/>
                        <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                        <h6 class="mb-0 text-success">- 김 민채</h6>
                        <small>Real Estate Broker</small>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-4 col-md-4">
                  <div class="card padding-card">
                     <div class="card-body agents-card text-center">
                        <img class="img-fluid mb-4" src="<c:url value='/resources/img/user/daseul.jpg'/>" alt=""/>
                        <p class="mb-4">누군지 모르시겠죠? はじめまして 정 한다슬 です。よろしくお願いいたします。それではこれ。 </p>
                        <h6 class="mb-0 text-success">- 정 한다슬</h6>
                        <small>Manager Ti 총괄</small>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card padding-card">
                     <div class="card-body agents-card text-center">
                        <img class="img-fluid mb-4" src="<c:url value='/resources/img/user/5.jpg'/>" alt=""/>
                        <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                        <h6 class="mb-0 text-success">- Ryan Printz</h6>
                        <small>Selling Agent</small>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-4">
                  <div class="card padding-card">
                     <div class="card-body agents-card text-center">
                        <img class="img-fluid mb-4" src="<c:url value='/resources/img/user/2.jpg'/>" alt=""/>
                        <p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                        <h6 class="mb-0 text-success">- Mark Smith</h6>
                        <small>Real Estate Broker</small>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
<!-- End Developer/Maganer 소개  -->  