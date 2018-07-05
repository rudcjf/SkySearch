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
                     <p class="mb-0 text-white"><a class="text-white" href="#">My Page</a>  /  <span class="text-success">회원정보 수정</span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End Inner Header -->
  
   <!--  mypage tab -->      
      <section class="tab-view">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <ul class="nav justify-content-center">
                     <li class="nav-item">
                        <a class="nav-link " href="<c:url value='/mypage/main'/>">내 정보</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link active text-success" href="<c:url value='/mypage/edit'/>">회원정보 수정</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/pw_edit'/>">비밀번호 변경</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/mypage/withdrawal'/>">회원 탈퇴</a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </section>
     <!--  END mypage tab --> 
        
      <!-- 회원정보수정 -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6 mx-auto">
                  <form role="form" method="POST"	action="<c:url value='/member/merge' />">
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
                              <input type="email" class="form-control" name="EMAIL" value="${resultMap.EMAIL}" readonly>
                           </div>
                           <div class="form-group">
                              <label>Name :</label>
                              <input type="text" class="form-control" name="NAME" value="${resultMap.NAME}" readonly>
                           </div>
                           <div class="form-group">
                              <label>PASSWORD :</label>
                              <input type="password" class="form-control" name="PASSWORD" value="${resultMap.PASSWORD}" readonly>
                           </div>
                           <div class="form-group">
                              <label>Phone :</label>
                              <input type="text" class="form-control" name="PHONE" value="${resultMap.PHONE}">
                           </div>
                           <div class="form-group">
                              <label>INTEREST LOCATION :</label>
                              <select class="form-control select2 no-radius" name="INT_LOCAL" value="${resultMap.INT_LOCAL}" placeholder="관심지역" >
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
                       </div>
                     </div>
                   	 <div align="right">
						<button type="submit" class="btn btn-success">EDIT</button>
                        <button type="reset" class="btn btn-default">RESET</button>
                     </div>
                 </form>
               </div>
            </div>
         </div>
      </section>
      <!-- End 회원정보수정 -->
      
