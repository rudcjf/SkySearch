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
                        <h5 class="card-title mb-4">Find ID or Password</h5>
                        <form>
                           <div class="form-group">
                              <label>Email address <span class="text-danger">*</span></label>
                              <input type="email" class="form-control" placeholder="Enter your Email address">
                           </div>
                           <button type="submit" class="btn btn-success btn-block">RESET PASSWORD</button>
                        </form>
                         </div>
                     <div class="card-body">
                        <h5 class="card-title mb-4">Find Password</h5>

                        <form>
                           <div class="form-group">
                              <label>Password <span class="text-danger">*</span></label>
                              <input type="email" class="form-control" placeholder="Enter your Email address">
                           </div>
                           <button type="submit" class="btn btn-success btn-block">RESET PASSWORD</button>
                        </form>
                     </div>
                     <div class="mt-4 text-center">
                           Don't have an account? <a href="<c:url value='/home/signup'/>">Sign Up</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Login -->
  