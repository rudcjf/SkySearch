<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!-- 아이디, 비밀번호 중복체크 들어가야한다-->
<!-- 회원가입시 이메일 인증 들어가야한다 -->
      <!-- Sign Up -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-5 col-md-5 mx-auto">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h3 class="card-title mb-4">SIGN UP</h3>
                        <form>
                           <div class="form-group">
                              <label>Member ID <span class="text-danger">*</span></label>
                              <input id="EMAIL" name="EMAIL" type="email" class="form-control" placeholder="Base form : mulcam@mulcam.com">
                           	  <br> 
							  <input type="button" class="btn btn-warning btn-block" value="아이디 중복 확인" onclick="idcheck()">
							  <input type="button" class="btn btn-danger btn-block" value="회원 아이디 이메일 인증" onclick="idcheck()">
							  <br> 
                           </div>
                           <div class="form-group">
                              <label>Password <span class="text-danger">*</span></label>
                              <input id="PASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="Enter Password">
                           </div>
                           <div class="form-group">
                              <label>Full Name <span class="text-danger">*</span></label>
                              <input id="NAME" name="NAME" type="text" class="form-control" placeholder="Enter Full Name">
                           </div>
                           <div class="form-group">
                              <label>Mobile Number <span class="text-danger">*</span></label>
                              <input id="PHONE" name="PHONE" type="text" class="form-control" placeholder="010-1234-5678">
                           </div>
                           <!-- 관심지역 -->
                           <div class="form-group" >
                               <label>Interest Location<span class="text-danger">*</span></label> 
     				          <select id="INT_LOCAL" name="INT_LOCAL" class="form-control select2 no-radius" placeholder="관심지역" >
							  <option value="">관심 지역 택1</option>
                              <option value="Japan">일본</option>
                              <option value="Hongkong">홍콩,싱카포르,대만,마카오</option>
                              <option value="China">중국</option>
                              <option value="Asia">아시아</option>
                              <option value="Jeju">국내(제주)</option>
                              <option value="South_pacificocean">남태평양</option>
                              <option value="North_america">북미</option>
                              <option value="South_america">중남미</option>
                              <option value="Europe">유럽</option>
                              <option value="Etc">기타</option>
				           </select> 
                           </div>
                           <P> </P>
                           <div class="form-group">
                              <div class="custom-control custom-checkbox">
                                 <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                 <label class="custom-control-label" for="customControlAutosizing">I agree with all <a href="terms.html">Terms & Conditions</a></label>
                              </div>
                           </div>
                           <button type="submit" class="btn btn-success btn-block">Sign Up</button>
                        </form>
                        <div class="mt-4 text-center login-with-social">
                           <button type="button" class="btn btn-facebook btn-block" onClick="location.href='https://ko-kr.facebook.com/'"><i class="mdi mdi-facebook"></i> Login With Facebook</button>
                           <button type="button" class="btn btn-twitter btn-block" onClick="location.href='https://twitter.com/?lang=ko/'"><i class="mdi mdi-twitter"></i> Login With Twitter</button>
                           <button type="button" class="btn btn-google btn-block" onClick="location.href='https://www.google.com/'"><i class="mdi mdi-google-plus"></i> Login With Google</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Register -->
      
   