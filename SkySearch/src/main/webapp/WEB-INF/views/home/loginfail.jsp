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
                        <h3 class="card-title mb-4">Login</h3>
                    	 <P><font color="red">로그인을 다시 시도해 보세요</font></P>
                        <form role="form" action="<c:url value='/member/check'/>" method="POST">
                          <fieldset>
                           <div class="form-group">
                              <label for="username">Member ID <span class="text-danger">*</span></label>
                              <input type="text" name="email" class="form-control" placeholder="Base form : mulcam@mulcam.com">
                           </div>
                           <div class="form-group">
                              <label for="password">Password <span class="text-danger">*</span></label>
                              <input type="password" name="password" class="form-control" placeholder="Password">
                           </div>
                           <div class="form-group">
                              <div class="custom-control custom-checkbox">
                                 <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                 <label class="custom-control-label" for="customControlAutosizing">Remember Me</label>
                              </div>
                           </div>
                           <div align="center">
                           <button type="submit" class="btn btn-success btn-block">LOGIN</button>
                           <a class="btn btn-default btn-block" role="button" href="<c:url value='/' />">Cancel</a>
                            </div>
                          <br>
                           </fieldset>
                        </form>
                        <div class="mt-4 text-center login-with-social">
                          <button type="button" class="btn btn-facebook btn-block" onClick="location.href='https://ko-kr.facebook.com/'"><i class="mdi mdi-facebook"></i> Login With Facebook</button>
                           <button type="button" class="btn btn-twitter btn-block" onClick="location.href='https://twitter.com/?lang=ko/'"><i class="mdi mdi-twitter"></i> Login With Twitter</button>
                           <button type="button" class="btn btn-google btn-block" onClick="location.href='https://www.google.com/'"><i class="mdi mdi-google-plus"></i> Login With Google</button>
                        </div>
                        <div class="mt-4 text-center">
                           <a href="<c:url value='/home/forget'/>">Forget your ID or Password?</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Login -->
      
    