<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css" href="<c:url value='/resources/css/mainmc.css'/>" rel="stylesheet" />

	<div class="breadcrumbs">
		<div class="col-sm-4">
			<div class="page-header float-left">
				<div class="page-title">
					<h1>Member Edit</h1>
				</div>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="page-header float-right">
				<div class="page-title">
					<ol class="breadcrumb text-right">
					</ol>
				</div>
			</div>
		</div>
	</div>
      <!-- 회원정보수정 -->
      <!-- 회원리스트로부터 회원 시퀀스에 해당하는 회원 정보를 가져와서 (read)에서 수정(edit), 회원번호, 아이디, 이름, 비밀번호는 변경 안된다 -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6 mx-auto">
                  <form role="form" method="POST"	action="<c:url value='/manage/member/merge' />">
                  <input type="hidden" name="forwardView" value="/manage/member/list" />
                     <div class="card padding-card">
                        <div class="card-body">
                           <h4 class="card-title mb-4">회원정보 수정</h4>
                           <p>회원 정보를 입력하세요</p>
                           <div class="form-group">
                              <label>Member NO. :</label>
                              <input type="text" class="form-control" name="MEMBER_SEQ" value="${resultMap.MEMBER_SEQ}" readonly>
                           </div>
                           <div class="form-group">
                              <label>Member ID :</label>
                              <input type="email" class="form-control" name="EMAIL" value="${resultMap.EMAIL}">
                           </div>
                           <div class="form-group">
                              <label>Name :</label>
                              <input type="text" class="form-control" name="NAME" value="${resultMap.NAME}">
                           </div>
                           <div class="form-group">
                              <label>PASSWORD :</label>
                              <input type="password" class="form-control" name="PASSWORD" value="${resultMap.PASSWORD}">
                           </div>
                           <div class="form-group">
                              <label>Phone :</label>
                              <input type="text" class="form-control" name="PHONE" value="${resultMap.PHONE}">
                           </div>
                           <div class="form-group">
                              <label>INTEREST LOCATION :</label>
	                           <div class="row">
	                              <div class="form-group col-md-6">
		                              <select class="form-control custom-select" id="INT_LOCAL" name="INT_LOCAL" value="${resultMap.INT_LOCAL}">
		                              	<option value="">Location 1</option>
		                              	<option value="Japan">일본</option>
		                              	<option value="Hongkong">홍콩,싱가포르,대만,마카오</option>
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
	                              <div class="form-group col-md-6">
	                                 <select class="form-control custom-select" id="INT_LOCAL" name="INT_LOCAL">
		                              	<option value="">Location 2</option>
		                              	<option value="Japan">일본</option>
		                              	<option value="Hongkong">홍콩,싱가포르,대만,마카오</option>
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
	                           </div>
                           </div>
                           <br>
                           <div align="center">
								<button type="submit" class="btn btn-success">EDIT</button>
		                        <button type="reset" class="btn btn-default">RESET</button>
                           </div>
                      </div>
                     </div>
                 </form>
               </div>
            </div>
         </div>
      </section>
      <!-- End 회원정보수정 -->
      
