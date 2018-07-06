<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 
  <div id="right-panel" class="right-panel">
  
    <!-- Header-->
       <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0 margin-auto">
                       <li class="nav-item" style="float:right;">
                           <a class="nav-link" href="<c:url value='/'/>" id="navbarDropdownPortfolio" aria-haspopup="true" 
                           aria-expanded="false"> <strong>HOME</strong> </a>
                        </li>
                        <li class="float-left">
                     <a class="nav-link" href="<c:url value='/specialPrice/main'/>" id="navbarDropdownPortfolio" 
                     aria-haspopup="true" aria-expanded="false"> <strong>특가 상품</strong> </a>
                       </li>
                       <li class="float-left">
                           <a class="nav-link" href="<c:url value='/tripInfo/main'/>" id="navbarDropdownPortfolio" 
                           aria-haspopup="true" aria-expanded="false"> <strong>여행 정보</strong> </a> 
                        </li>
                        <li class="nav-item dropdown float-left">
                           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" 
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <strong>About Us</strong> </a>
                             <div class="dropdown-menu" aria-labelledby="navbarDropdownPortfolio">
                               <a class="dropdown-item" href="<c:url value='/aboutUs/aboutus'/>">About us</a>
                               <a class="dropdown-item" href="<c:url value='/aboutUs/faq'/>">F&Q</a>
                               <a class="dropdown-item" href="<c:url value='/aboutUs/contact'/>">Contact</a>
                           </div>
                        </li>
                        <li class=" float-left">
                           <a class="nav-link" href="<c:url value='/mypage/main'/>" id="navbarDropdownPortfolio" 
                           aria-haspopup="true" aria-expanded="false"> <strong>My page</strong> </a>
                        </li>
<!--                          <li class="nav-item">
                           <a class="nav-link" href="#" id="navbarDropdownPortfolio" 
                           aria-haspopup="true" aria-expanded="false"> <strong>Manager Page</strong> </a>
                        </li>  -->
                     </ul>   
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="<c:url value='/resources/img/member.jpg'/>" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>
                                <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>

        </header>
     <!-- /header -->