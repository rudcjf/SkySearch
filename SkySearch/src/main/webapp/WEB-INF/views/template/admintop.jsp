<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 
  <div id="right-panel" class="right-panel">
  
    <!-- Header-->
       <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left" ></a>
                    <div class="header-left" style="float:left; vertical-align: middle;" >
                         <a class="nav-link" href="<c:url value='/'/>" style="float:left;"> <strong>HOME</strong> </a> <a class="nav-link"
						href="<c:url value='/specialPrice/main'/>" style="float: left;">
						<strong>특가 상품</strong>
					</a> <a class="nav-link" href="<c:url value='/tripInfo/main'/>"  style="float:left;"> <strong>여행 정보</strong> </a> 
                         
                           <a class="nav-link" href="<c:url value='/mypage/main'/>"  style="float:left;"> <strong>My page</strong> </a>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="<c:url value='/resources/img/member.jpg'/>" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                             <a class="nav-link" href="<c:url value='/aboutUs/aboutus'/>"><i class="fa fa- user"></i>About Us</a>
                             <a class="nav-link" href="<c:url value='/aboutUs/faq'/>"><i class="fa fa- user"></i>F&Q</a>
                             <a class="nav-link" href="<c:url value='/aboutUs/contact'/>"><i class="fa fa- user"></i>Contact</a>
                             <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>

        </header>
     <!-- /header -->