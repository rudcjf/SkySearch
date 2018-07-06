<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

    <!-- Login -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4 mx-auto">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h5 class="card-title mb-4">Find Member ID</h5>
                        <form>
                           <div class="form-group">
                           <p>회원님의 이름과 휴대폰번호를 입력하십시오</p>
                              <label>Name <span class="text-danger">*</span></label>
                              	<input type="text" class="form-control" placeholder="Enter your NAME">
                              <label>Phone Number <span class="text-danger">*</span></label>
                              	<input type="text" class="form-control" placeholder="Enter your Phone Number">
                           </div>
                           <input type="button" class="btn btn-success btn-block" value="아이디 찾기" onclick="idcheck()">
                           <!-- 아이디찾기 버튼을 누르면 DB에서 이름과 번호가 일치하는 회원을 찾아내서 oooo***@ooo.oo 형태로 아이디를 알려주는 팝업창이 뜬다 --> 
                           <br>
                         </form>
                     </div>
                     <!-- 비밀번호찾기 -->
                     <!-- 입력된 회원의 아이디와 이름이 일치하는 회원이 존재함다면 입력한 이메일 인증번호를 보내어 인증번호 입력 시간을 3분 카운트한다.
                                                          회원이 인증번호를 입력하여 일치하면 회원의 비밀번호를 팝업창으로 알려준다  -->
                     <div class="card-body">
                        <h5 class="card-title mb-4">Find Password</h5>
                       <form>
                           <div class="form-group">
                              <p>회원님의 아이디와 이름,<br>인증번호를 받을 이메일 주소를 입력하십시오</p>
                              <label>Member ID<span class="text-danger">*</span></label>
                              	<input type="email" class="form-control" placeholder="Enter your Member ID">
                              <label>Name<span class="text-danger">*</span></label>
                              	<input type="text" class="form-control" placeholder="Enter your NAME">
                              <br>
                              <label>Email Address<span class="text-danger">*</span></label>
                              	<input type="email" class="form-control" placeholder="Enter your Email Address">
                              <p> </p>  
                                <input type="button" class="btn btn-warning btn-block" value="인증번호 받기" onclick="idcheck()">
                           </div>
                           <div class="form-group">
  	                       		<input type="text" class="form-control" placeholder="인증번호 4자리를 입력하세요">
						   		<input type="button" class="btn btn-danger btn-block" value="카운트 3분!!">
                           		<input type="button" class="btn btn-success btn-block" value="비밀번호 찾기" onclick="idcheck()">
                          </div>
                      </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Login -->
  