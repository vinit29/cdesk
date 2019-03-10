

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/demo.css"> --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/header-second-bar.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/cart.css" />
<%-- <link type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap.css" rel="stylesheet"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script> --%>
<style>
.pointerIcon:HOVER {
	cursor: pointer;
}
</style>

<meta name="description" content="Give online test for all apptitude exam across India in Hindi and English with competitivedesk.com !">

<style>
a.logout-button {
	font-size: 13px;
	font-weight: bold;
	float: right;
	height: 40px;
	padding-top: 6px;
	line-height: 40px;
}

a.loginin-out {
	color: #ffffff;
	text-decoration: none;
}

.bluebar {
	background-color: #0073e6;
	box-shadow: 0 1px 1px #ccc;
	box-sizing: border-box;
	color: #ffffff;
	padding-top: 15px;
	padding-bottom: 0px;
}

.fullheader {
	width: 100%;
}

.navbar-brand img {
	max-height: 100%;
	height: 100%;
	width: auto;
	margin: 0 auto;
}

.navbar-brand {
	max-width: 50%;
}

.lis {
	text-align: center;
}

.lis:hover {
	text-align: center;
	border-bottom: 3px solid tomato;
}

.liborderactive {
	text-align: center;
	border-bottom: 3px solid tomato;
}

.answerBar {
	background-color: #cce6ff;
	border-left: 6px solid #0073E6;
	margin-bottom: 16px !important;
	margin-top: 16px !important;
	padding: 0.01em 16px;
}

.questionBar {
	background-color: #FFFFCC;
	border-left: 6px solid #ffff66;
	margin-bottom: 16px !important;
	margin-top: 16px !important;
	padding: 0.01em 16px;
}
</style>

<script>
	$(document).ready(function() {
		/* $('.one').addClass('liborderactive'); */
		$('.nav .ass').click(function() {
			/*   $(this).closest('ul.uls').find('ul.lis').removeClass('liborderactive'); */// Disable/Remove this line if you want to keep green whatever the user has selected/clicked
			$("li.liborderactive").removeClass("liborderactive");
			$(this).parent('li.lis').addClass('liborderactive');
		});
		
		
/* 		$('#navbar3 .col-sm-1 #settingdown #settingMenu').hover(function() {
			  $(this).find('#settingdown .dropdown-menu').stop(true, true).delay(200).fadeIn(500);
			}, function() {
			  $(this).find('#settingdown .dropdown-menu').stop(true, true).delay(200).fadeOut(500);
			}); */
	});
</script>

<nav class="navbar navbar-inverse navbar-static-top bluebar">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=request.getContextPath()%>/online-aptitude-test"> <img
				src="<%=request.getContextPath()%>/images/competitivelogo.png" alt="Competitive Desk" style="width: 185px; height: 45px;" />
			</a>
		</div>

 
	 	<c:choose>
			<c:when test="${pageId != 2}">
				<jsp:include page="menu.jsp"></jsp:include>
			</c:when>
		</c:choose> 
	</div>


</nav>
