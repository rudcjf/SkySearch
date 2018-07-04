<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Navbar -->
      <header>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
               <a class="navbar-brand text-success logo" href="<c:url value='/'/>">
                  <font size ="10px"><i class="mdi mdi-airplane-takeoff"></i> 
                     <strong>SKY Search</strong></a></font>
               <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span></button> 
               
               <div class="collapse navbar-collapse" id="navbarResponsive">
                  <ul class="navbar-nav mr-auto mt-2 mt-lg-0 margin-auto">
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/'/>" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <strong>HOME</strong>
                        </a>
                     </li>
                     <li class="nav-item">

                        <a class="nav-link" href="<c:url value='/specialPrice/main'/>" id="navbarDropdownPortfolio"  aria-haspopup="true" aria-expanded="false">
                                                      <strong>특가 상품</strong>
                        </a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/tripInfo/main'/>" id="navbarDropdownPortfolio" aria-haspopup="true" aria-expanded="false">
                                                       <strong> 여행정보</strong>
                        </a>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        		<strong>About Us</strong>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownPortfolio">
                           <a class="dropdown-item" href="<c:url value='/home/aboutus'/>">about us</a>
                           <a class="dropdown-item" href="<c:url value='/home/faq'/>">F&Q</a>
                           <a class="dropdown-item" href="<c:url value='/home/contact'/>">Contact</a>
                        </div>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        		<strong>My Page</strong>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownPortfolio">
                           <a class="dropdown-item" href="<c:url value='/blog'/>">마이페이지</a>
                           <a class="dropdown-item" href="<c:url value='/blog-single'/>">회원정보수정</a>
                           <a class="dropdown-item" href="<c:url value='/blog-single'/>">비밀번호변경</a>
                           <a class="dropdown-item" href="<c:url value='/blog-single'/>">회원탈퇴</a>
                        </div>
                     </li>
<!--                      <li class="nav-item">
                        <a class="nav-link" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <strong>Manager Page</strong>
                        </a>
                     </li> -->
                  </ul>
                  <div class="my-2 my-lg-0">
                     <ul class="list-inline main-nav-right">
                        <li class="list-inline-item">
                           <a class="btn btn-link btn-sm" href="<c:url value='/home/login'/>">Log In</a>
                        </li>
                        <li class="list-inline-item">
                           <a class="btn btn-success btn-sm" href="<c:url value='/home/signup'/>">Sign Up</a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </nav>
      </header>
      <!-- End Navbar -->