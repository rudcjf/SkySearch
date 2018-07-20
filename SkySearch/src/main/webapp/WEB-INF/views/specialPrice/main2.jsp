<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<link type="text/css"
	href="<c:url value='/resources/vendor/bootstrap/css/specialmj.css'/>"
	rel="stylesheet" />

<!-- SLIDER -->
<section class="osahan-slider">
<div id="osahanslider" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#osahanslider" data-slide-to="0" class="active"></li>
		<li data-target="#osahanslider" data-slide-to="1"></li>
		<li data-target="#osahanslider" data-slide-to="2"></li> 
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="carousel-item active"
			style="background-image: url('<c:url value='/resources/img/slider/main.jpg'/>')">
		</div>
		<div class="carousel-item"
			style="background-image: url('<c:url value='/resources/img/slider/main1.png'/>')">
		</div>
		<%-- <div class="carousel-item"
			style="background-image: url('<c:url value='/resources/img/slider/main1.png'/>')">
		</div>  --%>
	</div>
	<a class="carousel-control-prev" href="#osahanslider" role="button"
		data-slide="prev"> <span class="carousel-control-prev-icon"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#osahanslider" role="button"
		data-slide="next"> <span class="carousel-control-next-icon"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>
</section>
<!-- END SLIDER -->

<!-- 특가 LIST -->
<section class="section-padding">
	<div class="container">
		<div class="row">
			<div class="section-title text-center mb-5">
				<h4>진행중인 특가</h4>
			</div>
			<div class="col-lg-12 col-md-12">
				<c:forEach items="${resultList}" var="resultList" varStatus="loop">
					<c:forEach items="${resultList}" var="resultData" varStatus="loop">
					<div class="col-lg-12 col-md-12">
                        <div class="card card-list card-list-view">
                           <a href="${resultData.url}">
                              <div class="row no-gutters">
                                 <div class="col-lg-3 col-md-3">					 
                                   <!--  <span class="badge badge-success">For Sale</span> -->
                                    <img class="card-img-top" src="${resultData.img}" alt="${resultData.alt}">
                                 </div>
                                 <div class="col-lg-9 col-md-9">
                                    <div class="card-body">
                                       <h5 class="card-title">${resultData.title}</h5>
                                       <h6 class="card-subtitle mb-2 text-muted">${resultData.period}</h6>
                                      <!--  <h2 class="text-success mb-0 mt-3">
                                          $130,000 <small>/month</small>
                                       </h2> -->
                                    </div>
                                    <div class="card-footer">
                                       <span><strong>${resultData.flight} </strong></span>
                                      <!--  <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>2</strong></span>
                                       <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>587 sq ft</strong></span> -->
                                    </div>
                                 </div>
                              </div>
                           </a>
                        </div>
                     </div>
					</c:forEach>
				</c:forEach>
			</div>
		</div>
	</div>
</section>

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b5175cdcb0ffdc9"></script>
<!-- END 특가 LIST -->
