<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%-- <link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>" rel="stylesheet" /> --%>
<!-- 회원시퀀스에 해당하는 정보 read 에서 관심지역 가져오기  -->
<script type="text/javascript">
var fn_setLocalID = function(url, id, params) {
    $.ajax({
             type : "POST",
             url : url,
             data : {
                'MEMBER_SEQ' : params
             },
             cache : false,
             success : function(data) {
                var formTag = "";
                formTag += "<p class='form-control-static' name='LOCAL_SEQ'>";
                $.each(data, function(i, item) {
                   formTag += item.LOCAL_SEQ + "<br>";
                });
                formTag += '</p> ';
                $('#' + id).html(formTag);
             },
             error : function(xhr, status, exception) {
                alert("Failure \n (" + status + ")");
                return false;
             }
          });
 }
$(document).ready(function() {
	fn_setLocalID("<c:url value='/ws/memberList' />", "IntlocalDIV","${resultMap.MEMBER_SEQ}");
});
</script>

      <!-- Inner Header -->
      <section class="section-padding bg-dark inner-header1">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">My Page</h1>
                  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><a class="text-white" href="#">My Page</a>  /  <span class="text-success">내 정보</span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Inner Header -->
 
 <!-- mypage tab -->     
      <section class="tab-view">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <ul class="nav justify-content-center">
                   <c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/member/read?EMAIL=${principalName}'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/member/edit?EMAIL=${principalName}'/>">회원정보 수정</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/member/pwedit?EMAIL=${principalName}'/>">비밀번호 변경</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/member/disable?EMAIL=${principalName}'/>">회원 탈퇴</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
 <!-- END mypage tab -->   
     
      <!-- member Profile -->
      <!-- 회원 리스트로부터 회원 시퀀스에 해당하는 회원의 정보를 read 나타낸다 -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6 mx-auto">
                 <div class="card padding-card"> 
	                 <form role="form" method="POST" action="<c:url value='/member/read' />">
	                  <div class="card-body">
		                  <h3 class="mb-0 mt-4">Member ID : ${resultMap.EMAIL} </h3>
		                  <p> </p>
		                  <h5 class="text-success mb-3">Member SEQ : ${resultMap.MEMBER_SEQ}</h5>
             
		                  <div class="row mt-5">
		                     <div class="col-lg-6 col-md-6">
		                        <p><strong class="text-dark">NAME :</strong> ${resultMap.NAME}</p>
		                        <p><strong class="text-dark">PASSWORD :</strong> ${resultMap.PASSWORD}</p>
		                     <%--   <p><strong class="text-dark">GRADE :</strong>  ${resultMap.GRADE} ></p>--%>
		                        <p><strong class="text-dark">PHONE :</strong> ${resultMap.PHONE}</p>
		                        <p><strong class="text-dark">INTEREST LOCATION :</strong> <div id="IntlocalDIV"></div></p>
		                     </div>
		                  </div>
                  	  </div>
                 	</form> 
                 	
                 	
           	<c:set var="principalName" value="${pageContext.request.userPrincipal.name}" /> 
            <input type="hidden" name="MEMBER_SEQ" value="${principalName}">
                 	
                 	
                 	 
                 </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End member Profile -->
      
