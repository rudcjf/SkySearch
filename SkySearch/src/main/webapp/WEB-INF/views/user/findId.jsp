<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<script>

/* function idMasking(${resultMap.EMAIL}) {
	 
	   var len = ${resultMap.EMAIL}.split('@')[0].length-3 ;  //  AB***@gamil.com
	   return email.replace(new RegExp('.(?=.{0,' + len + '}@)', 'g'), '*');
	 
	} */


</script>
       <!-- 아이디 찾기 결과 -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-4 mx-auto">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h5 class="card-title mb-4">아이디 찾기 결과</h5>
                        <br>
                           <div class="form-group">
                              <label>Member ID : </label>
                              <h5>${resultMap.EMAIL}</h5>
                          <br>
						   </div>
						   <div align="center">
						   	<a class="btn btn-success col-5" role="button" href="<c:url value='/login' />">Login</a>
						   	<a class="btn btn-default col-5" role="button" href="<c:url value='/' />">Home</a>
                           </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Login -->
  