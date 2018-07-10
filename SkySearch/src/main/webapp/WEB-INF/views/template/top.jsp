<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Navbar -->
   <header>
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
           <div class="container">
               <a class="navbar-brand text-success logo" href="<c:url value='/'/>" style="font-size:30px;">
                   <i class="mdi mdi-airplane-takeoff" style=""></i> <strong>SKY Search</strong></a>
                     <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span></button> 
                  <div class="collapse navbar-collapse" id="navbarResponsive">
                   <ul class="navbar-nav mr-auto mt-2 mt-lg-0 margin-auto">
                       <li class="nav-item">
                           <a class="nav-link" href="<c:url value='/'/>" id="navbarDropdownPortfolio" aria-haspopup="true" 
                           aria-expanded="false"> <strong>HOME</strong> </a>
                        </li>
                        <li class="nav-item">
                     <a class="nav-link" href="<c:url value='/specialPrice/main'/>" id="navbarDropdownPortfolio" 
                     aria-haspopup="true" aria-expanded="false"> <strong>항공권 특가</strong> </a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link" href="<c:url value='/tripInfo/main'/>" id="navbarDropdownPortfolio" 
                           aria-haspopup="true" aria-expanded="false"> <strong>여행 정보</strong> </a> 
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="<c:url value='/mypage/read'/>" id="navbarDropdownPortfolio" 
                           aria-haspopup="true" aria-expanded="false"> <strong>My page</strong> </a>
                        </li>
                          <li class="nav-item">
                           <a class="nav-link" href="<c:url value='/manage/main/index'/>" id="navbarDropdownPortfolio" 
                           aria-haspopup="true" aria-expanded="false"> <strong>Manage</strong> </a>
                           <a class="nav-link" href="#" style="display: none">${resultMap.EMAIL}</a>
                        </li> 
                     </ul>   
                   
                     <div class="my-2 my-lg-0">
                       <ul class="list-inline main-nav-right" style="margin-top:10px;">
                            <li class="list-inline-item">
                              <form action="/action_page.php" >
                             	 <input type="text" class="form-control" placeholder="국가명, 도시명 검색..." style="height:34px;">
                              </form>
                             </li>
                           <li class="list-inline-item">
                                <a class="btn btn-success btn-sm" href="<c:url value='/login'/>"><i class="mdi mdi-login"></i> Log In</a>
                              </li>
                           <li class="list-inline-item">
                                 <a class="btn btn-success btn-sm" href="<c:url value='/home/signup'/>"><i class="mdi mdi-account-settings"></i> Sign Up</a>
                              </li>
                        </ul>
                     </div>
                  </div>
            </div>
         </nav>
     </header>
<!-- End Navbar -->