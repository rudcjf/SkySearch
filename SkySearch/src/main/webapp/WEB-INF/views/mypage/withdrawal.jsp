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
                        <a class="nav-link" href="<c:url value='/mypage/main'/>">My Page</a>
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
      
      <!-- User Profile -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 col-md-8 mx-auto">
                  <form>
                     <div class="card padding-card">
                        <div class="card-body">
                           <h5 class="card-title mb-4">Personal Details</h5>
                           <div class="form-group">
                              <label>First Name <span class="text-danger">*</span></label>
                              <input type="text" class="form-control" placeholder="Enter First Name">
                           </div>
                           <div class="form-group">
                              <label>Last Name <span class="text-danger">*</span></label>
                              <input type="text" class="form-control" placeholder="Enter Last Name">
                           </div>
                           <div class="form-group">
                              <label>Email Address <span class="text-danger">*</span></label>
                              <input type="email" class="form-control" placeholder="Enter Email Address">
                           </div>
                           <div class="form-group">
                              <label>Phone <span class="text-danger">*</span></label>
                              <input type="text" class="form-control" placeholder="Enter Phone">
                           </div>
                           <div class="form-group">
                              <label>Location <span class="text-danger">*</span></label>
                              <input type="text" class="form-control" placeholder="Enter Locations">
                           </div>
                           <div class="form-group">
                              <label>About Me <span class="text-danger">*</span></label>
                              <textarea rows="10" cols="100" class="form-control"></textarea>
                           </div>
                        </div>
                     </div>
                     <div class="card padding-card">
                        <div class="card-body">
                           <h5 class="card-title mb-4">Change Password</h5>
                           <div class="form-group">
                              <label>Password <span class="text-danger">*</span></label>
                              <input type="password" class="form-control" placeholder="">
                           </div>
                           <div class="form-group">
                              <label>Confirm Password <span class="text-danger">*</span></label>
                              <input type="password" class="form-control" placeholder="">
                           </div>
                        </div>
                     </div>
                     <button type="submit" class="btn btn-success">SAVE EDITS</button>
                  </form>
               </div>
            </div>
         </div>
      </section>
      <!-- End User Profile -->
      
