
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Aptitude Test - Online test for all competitive
	exams in english and hindi | competitivedesk.com</title>

<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script> --%>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
</script>
</head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/new/css/doc.css" />
<style>
.row-data {
	margin-bottom: -255px;
}
/* On screens that are 992px wide or less, go from four columns to two columns */
@media screen and (max-width: 992px) {
  .row-data {
	margin-bottom: 0px;
   }
}

/* On screens that are 600px wide or less, make the columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .row-data {
	margin-bottom: 0px;
   }
}

.sb-preview {
	margin-bottom: 30px;
}

.sb-preview .card {
	border: 1px solid #ededed;
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .1);
	background: #f5f5f5;
}

.sb-preview .card .sb-preview-img {
	transition: all .2s ease-in-out;
}

.card-img-top {
	opacity: 1;
	display: block;
	width: 100%;
	height: auto;
	transition: .5s ease;
	backface-visibility: hidden;
	border-top-left-radius: calc(.25rem - 1px);
	border-top-right-radius: calc(.25rem - 1px);
}
/* a {
     color: #b84d45;
    text-decoration: none;
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
} */
.sb-preview .card .card-body {
	padding: -1.5rem 1.5rem 0;
}

.sb-preview:hover .card-img-top {
	opacity: 0.2;
}

.sb-preview:hover .card-body {
	opacity: 1;
}

.card-body {
	/*flex: 1 1 auto;
    padding: 1.25rem;*/
	color: #000000;
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}

.sb-preview .card .card-footer {
	padding: .75rem 1.5rem 1.5rem;
	border: 0;
	background: 0 0;
}

.card-footer:last-child {
	border-radius: 0 0 calc(.25rem - 1px) calc(.25rem - 1px);
}

.card-footer {
	padding: .75rem 1.25rem;
	background-color: rgba(0, 0, 0, .03);
	border-top: 1px solid rgba(0, 0, 0, .125);
}

</style>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<div class="row row-data" style="min-height: 500px;" align="center">

			<div class="col-sm-4 col-lg-4 col-md-6 sb-preview text-center">
				<div class="card h-100">
					<a class="sb-preview-img"
						href="<%=request.getContextPath()%>/${fn:toLowerCase(cat1.name)}-docs/${cat1.id}">
						<img class="card-img-top" src="images/category/${cat1.imageUrl}"
						alt="${cat1.imageUrl}">
					</a>
					<div class="card-body">
						<a
							href="<%=request.getContextPath()%>/${fn:toLowerCase(cat1.name)}-docs/${cat1.id}">

							<h4 class="card-title">
								<b>${cat1.name}</b>
							</h4>
							<p class="card-text">Study materials , Video , Sample Papers
								& Examples</p>
						</a>
					</div>
					<!-- <div class="card-footer">
								<a href="/template-overviews/coming-soon"
									class="btn btn-secondary">Preview &amp; Download</a>
							</div> -->
				</div>
			</div>


			<div class="col-sm-4 col-lg-4 col-md-6 sb-preview text-center">
				<div class="card h-100">
					<a class="sb-preview-img"
						href="<%=request.getContextPath()%>/${fn:toLowerCase(cat2.name)}-docs/${cat2.id}">
						<img class="card-img-top" src="images/category/${cat2.imageUrl}"
						alt="${cat2.imageUrl}">
					</a>
					<div class="card-body">
						<a
							href="<%=request.getContextPath()%>/${fn:toLowerCase(cat2.name)}-docs/${cat2.id}">

							<h4 class="card-title">
								<b>${cat2.name}</b>
							</h4>
							<p class="card-text">Study materials , Video , Sample Papers
								& Examples</p>
						</a>
					</div>
					<!-- <div class="card-footer">
								<a href="/template-overviews/coming-soon"
									class="btn btn-secondary">Preview &amp; Download</a>
							</div> -->
				</div>
			</div>

			<div class="col-sm-4 col-lg-4 col-md-6 sb-preview text-center">
				<div class="card h-100">
					<a class="sb-preview-img"
						href="<%=request.getContextPath()%>/${fn:toLowerCase(cat3.name)}-docs/${cat3.id}">
						<img class="card-img-top" src="images/category/${cat3.imageUrl}"
						alt="${cat3.imageUrl}">
					</a>
					<div class="card-body">
						<a
							href="<%=request.getContextPath()%>/${fn:toLowerCase(cat3.name)}-docs/${cat3.id}">

							<h4 class="card-title">
								<b>${cat3.name}</b>
							</h4>
							<p class="card-text">Study materials , Video , Sample Papers
								& Examples</p>
						</a>
					</div>
					<!-- <div class="card-footer">
								<a href="/template-overviews/coming-soon"
									class="btn btn-secondary">Preview &amp; Download</a>
							</div> -->
				</div>
			</div>

		</div>
		<div class="row row-data" style="min-height: 500px;" align="center">
			<div class="col-sm-2 col-lg-2 col-md-6"></div>

			<div class="col-sm-4 col-lg-4 col-md-6 sb-preview text-center">
				<div class="card h-100">
					<a class="sb-preview-img"
						href="<%=request.getContextPath()%>/${fn:toLowerCase(cat4.name)}-docs/${cat4.id}">
						<img class="card-img-top" src="images/category/${cat4.imageUrl}"
						alt="${cat4.imageUrl}">
					</a>
					<div class="card-body">
						<a
							href="<%=request.getContextPath()%>/${fn:toLowerCase(cat4.name)}-docs/${cat4.id}">

							<h4 class="card-title">
								<b>${cat4.name}</b>
							</h4>
							<p class="card-text">Study materials , Video , Sample Papers
								& Examples</p>
						</a>
					</div>
					<!-- <div class="card-footer">
								<a href="/template-overviews/coming-soon"
									class="btn btn-secondary">Preview &amp; Download</a>
							</div> -->
				</div>
			</div>

			<div class="col-sm-4 col-lg-4 col-md-6 sb-preview text-center">
				<div class="card h-100">
					<a class="sb-preview-img"
						href="<%=request.getContextPath()%>/${fn:toLowerCase(cat5.name)}-docs/${cat5.id}">
						<img class="card-img-top" src="images/category/${cat5.imageUrl}"
						alt="${cat5.imageUrl}">
					</a>
					<div class="card-body">
						<a
							href="<%=request.getContextPath()%>/${fn:toLowerCase(cat5.name)}-docs/${cat5.id}">

							<h4 class="card-title">
								<b>${cat5.name}</b>
							</h4>
							<p class="card-text">Study materials , Video , Sample Papers
								& Examples</p>
						</a>
					</div>
					<!-- <div class="card-footer">
								<a href="/template-overviews/coming-soon"
									class="btn btn-secondary">Preview &amp; Download</a>
							</div> -->
				</div>
			</div>

			<div class="col-sm-2 col-lg-2 col-md-6"></div>
			<!-- 		<div class="col-lg-4 col-md-6 sb-preview text-center">
						<div class="card h-100">
							<a class="sb-preview-img" href="/template-overviews/agency">
								alt="Free Bootstrap Agency Theme - Start Bootstrap">
							</a>
							<div class="card-body">
								<h4 class="card-title">Agency</h4>
								<p class="card-text">A one page agency theme.</p>
							</div>
							<div class="card-footer">
								<a href="/template-overviews/agency" class="btn btn-secondary">Preview
									&amp; Download</a>
							</div>
						</div>
					</div> -->

		</div>


	</div>

	
<section class="focus" id="focus" style="background: #ececee;padding: 0px;">
		<div class="container">
			<div class="section-header" style="padding-bottom: 28px;">
				<h2 class="dark-text red-border-bottom">Our Focus</h2>
				<h6>We design &amp; develop qaulity products to help Individuals &amp; medium level business.</h6>
			</div>
			<div class="row centered">

				<!-- FIRST FOCUS BOXES -->
				<div class="col-lg-4 col-sm-4 focus-box red wow">
					<div style="margin-bottom: 15px;">
						<i class="pixeden pd-icon-monitor"><img src="<%=request.getContextPath()%>/new/images/doc.png" /></i>
						<!-- FOCUS ICON-->
					</div>
					<h5 class="red-border-bottom">Desk Docs</h5>
					<!-- FOCUS HEADING -->
					<p>
						<!-- FOCUS DESCRIPTION -->
						All Examples are easy to understand with important tricks to solve question easily and to increase your speed to solve lengthy and tricky questions.
					</p>
				</div>
				<!-- / END FIRST FOCUS BOX. Other boxes has same format -->

				<div class="col-lg-4 col-sm-4 focus-box green wow">
					<div style="margin-bottom: 15px;">
						<i class="pixeden pd-icon-monitor"><img src="<%=request.getContextPath()%>/new/images/test.png" /></i>
					</div>
					<h5 class="green-border-bottom">Online Test</h5>
					<p>With Dual Language support , online test become easier for all . Every test are important and question are prepared based on the exam point of
						view.</p>
				</div>

				<div class="col-lg-4 col-sm-4 focus-box blue wow">
					<div style="margin-bottom: 15px;">
						<i class="pixeden pd-icon-monitor"><img src="<%=request.getContextPath()%>/new/images/checklist.png" /></i>
					</div>
					<h5 class="blue-border-bottom">Enhance skills</h5>
					<p>With Dual Language support , online test become easier for all . Every test are important and question are prepared based on the exam point of
						view.</p>
				</div>
			</div>

		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
</body>
</html>