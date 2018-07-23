<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 404 Page -->
<section class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 mx-auto text-center">
				<h1>
					<img class="img-fluid"
						src="<c:url value='/resources/img/404.png'/>" alt="404">
				</h1>
				<h1>Sorry! Page not found.</h1>
				<p class="land">Unfortunately the page you are looking for has
					been moved or deleted.</p>
				<div class="mt-5">
					<a href="<c:url value='/'/>" class="btn btn-success btn-lg"><i
						class="mdi mdi-home"></i> GO TO HOME PAGE</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End 404 Page -->





