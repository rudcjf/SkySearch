<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- 회원가입 버튼 누르면 메인화면으로 전환 -->
<script>
	$(function() {
		$("#ForwareList").click(function() {
			$("form").submit(function(e) {
				$(this).attr("action", "<c:url value='/' />");
				return;
			});
		});
	});
</script>
<!-- 관심지역 다중 클릭 체크박스 -->
<script>
	var fn_setFormTagCheckbox = function(url, id, params) {
		$
				.ajax({
					type : "POST",
					url : url,
					data : params,
					cache : false,
					success : function(data) {

						var formTag = "";
						$
								.each(
										data,
										function(i, item) {
											formTag += "<label class='checkbox-inline'>";
											formTag += '<input type=checkbox name="LOCAL_SEQ" value="'+item.LOCAL_SEQ+'">'
													+ item.LOCAL_NAME;
											formTag += '</label> ';
										});
						$('#' + id).html(formTag);

					},
					error : function(xhr, status, exception) {
						alert("Failure \n (" + status + ")");
						return false;
					}
				});
	}

	$(document).ready(function() {
		fn_setFormTagCheckbox("<c:url value='/ws/localList' />", "localDIV");

	});
</script>

<!-- 아이디 중복 체크 -->
<!-- <script type="text/javascript">
	var count = 0;
	function idcheck() {
	 var text = $("#EMAIL").val();
	 var regexp = /[0-9a-zA-Z]/; // 숫자,영문,특수문자
	 // var regexp = /[0-9]/; // 숫자만
	 // var regexp = /[a-zA-Z]/; // 영문만

	 for (var i = 0; i < text.length; i++) {
	 if (text.charAt(i) != " " && regexp.test(text.charAt(i)) == false) {
	 alert("한글이나 특수문자는 입력불가능 합니다."); 
	 return false;
	 }
	 }
	 overlapCheck();
	 } 

	function idcheck() {
		var param = "EMAIL" + ":" + $("#EMAIL").val();
		if ($("#EMAIL").val() == '' || $("#EMAIL").val() == null) {
			alert("아이디를 입력하세요");
			return false;
		}
		$.ajax({

			url : "<c:url value='/ws/idcheck'/>",
			type : "POST",
			data : {
				'EMAIL' : $("#EMAIL").val()
			},
			//cache : false,
			//async : false,
			dataType : "text",

			success : function(data) {
				if (data == "") {
					count = 1;
					alert("사용 가능한 아이디입니다.")
				} else {
					alert("아이디가 중복이 됩니다. 다시 입력 해주세요");
					return false;
				}
			},

			error : function(request, status, error) {
				if (request.status != '0') {
					alert("code : " + request.status + "\r\nmessage : "
							+ request.reponseText + "\r\nerror : " + error);
				}
			}
		});
	} 
</script>-->

<!-- 아이디, 비밀번호 중복체크 들어가야한다-->
      <!-- Sign Up -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-5 col-md-5 mx-auto">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h3 class="card-title mb-4">SIGN UP</h3>
                        <form  method="POST" action="<c:url value='/member/merge'/>">
                         <input type="hidden" name="forwardView" value="/member/read" /> 
                           <div class="form-group">
                              <label>Member ID <span class="text-danger">*</span></label>
                             	 <input id="EMAIL" name="EMAIL" type="email" class="form-control" placeholder="Base form : mulcam@mulcam.com">
								 <p> </p>
								 <input type="button" class="btn btn-warning btn-block" value="아이디 중복 확인" onclick="idcheck()"> 
				           </div>
                           <div class="form-group">
                              <label>Password <span class="text-danger">*</span></label>
                              <input id="PASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요">
                           </div>
<!-- 						   <div class="form-group">
                              <label>Password Reconfirm <span class="text-danger">*</span></label>
                              <input id="RePASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="비밀번호를 다시 입력하세요">
                           </div> -->
                           <div class="form-group">
                              <label>Full Name <span class="text-danger">*</span></label>
                              <input id="NAME" name="NAME" type="text" class="form-control" placeholder="Base form : 박보검">
                           </div>
                           <div class="form-group">
                              <label>Mobile Number <span class="text-danger">*</span></label>
                              <input id="PHONE" name="PHONE" type="text" class="form-control" placeholder="010-1234-5678">
                           </div>
                           <!-- 관심지역 -->
                           <div class="form-group">
                        	<input type="hidden" name="LOCAL_SEQ" value="dummy_id">
								<label> INTEREST LOCATION : </label>
								<div id=localDIV></div>
							</div>
                          <div class="form-group">
                              <div class="custom-control custom-checkbox">
                                 <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                 <label class="custom-control-label" for="customControlAutosizing">I agree with all <a href="terms.html">Terms & Conditions</a></label>
                              </div>
                           </div>
                          
	                           <button type="submit" class="btn btn-success btn-block ">Sign Up</button>
	                           <button type="reset" class="btn btn-default btn-block">Reset</button>
                      
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
      
   