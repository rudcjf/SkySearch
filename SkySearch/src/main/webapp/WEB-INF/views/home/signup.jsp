<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- 비밀번호 재확인, 필수입력사항 확인 -->
<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.11.0.min.js' />"></script>

<!-- 회원정보의 member 테이블 insert와, int_local 테이블 insert가 함께 되야 한다 -->
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
<!-- 비밀번호 재확인 -->
<script>
 $(function(){
  $('#PASSWORD').keyup(function(){
   $('font[name=check]').text('');
  }); //#user_pass.keyup

  $('#RePASSWORD').keyup(function(){
   if($('#PASSWORD').val()!=$('#RePASSWORD').val()){
    $('font[name=check]').text('');
    $('font[name=check]').html("비밀번호 불일치");
   }else{
    $('font[name=check]').text('');
    $('font[name=check]').html("비밀번호 일치");
   }
  }); //#chpass.keyup
 });
</script>

<script>
 $(function(){
  //id="btn" 클릭시
  $("#btn").click(function(){
   //id="EMAIL"이 공백일경우
   if($('#EMAIL').val()==""){
    //얼럿으로처리
    alert("회원 아이디를 입력해주세요");
    //id="EMAIL"인 곳으로 커서를 이동
    $('#EMAIL').focus();
    return;
   }
   if($('#PASSWORD').val()==""){
    alert("비밀 번호를 입력해주세요");
    $('#PASSWORD').focus();
    return;
   }
   if($('#NAME').val()==""){
	    alert("이름을 입력해주세요");
	    $('#NAME').focus();
	    return;
    }
   if($('#PHONE').val()==""){
	    alert("휴대전화 번호를 입력해주세요");
	    $('#PHONE').focus();
	    return;
	   }
  //둘다 입력이 되었을경우 버튼 클릭시.
  });
 });
</script>

      <!-- Sign Up -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-5 col-md-5 mx-auto">
                  <div class="card padding-card">
                     <div class="card-body">
                        <h3 class="card-title mb-4">SIGN UP</h3>
                        <p><span class="text-danger">*</span>는 필수 입력사항 입니다</p>
                        <form  method="POST" action="<c:url value='/member/merge'/>">
                         <input type="hidden" name="forwardView" value="/member/read" /> 
                           <div class="form-group">
                              <label>Member ID <span class="text-danger">*</span></label>
                             	 <input id="EMAIL" name="EMAIL" type="email" class="form-control" placeholder="Base form : mulcam@mulcam.com">
								 <p> </p>
								 <input type="button" class="btn btn-warning col-5" value="아이디 중복 확인" onclick="idcheck()"> 
				           </div>
                           <div class="form-group">
                              <label>Password <span class="text-danger">*</span></label>
                              <input id="PASSWORD" name="PASSWORD" type="password" class="form-control" placeholder="6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요">
                           </div>
						   <div class="form-group">
                              <label>Password Reconfirm <span class="text-danger">*</span>  <font name="check" size="2" color="red"></font></label>
                              <input id="RePASSWORD" name="RePASSWORD" type="password" class="form-control" placeholder="비밀번호를 다시 입력하세요">
                           </div> 
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
                        	<!-- <input type="hidden" name="LOCAL_SEQ" value="dummy_id"> -->
								<label> INTEREST LOCATION : </label>
								<div id=localDIV></div>
							</div>
                          <div class="form-group">
                              <div class="custom-control custom-checkbox">
                                 <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                 <label class="custom-control-label" for="customControlAutosizing">I agree with all <a href="terms.html">Terms & Conditions</a></label>
                              </div>
                           </div>
                          <div align="center">
	                           <button type="submit" id="btn" class="btn btn-success col-5 ">Sign Up</button>
	                           <button type="reset" class="btn btn-default col-5">Reset</button>
                      </div>
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
      
   