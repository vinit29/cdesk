<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${webDocument.title} | competitivedesk.com</title>
<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
</script>
</head>
<style>
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
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<div class="row">
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>
			<div class="col-lg-7 col-sm-7" style="margin: 0px 0px 0px 0px;">
				<div id="controlDoc">
						${webDocument.content}
                	<nav>
						<ul class="pager">
						<li><a href="${webDocument.previous}">Previous</a></li>
						<li><a href="${webDocument.next}">Next</a></li>
						</ul>
					</nav>
					</div>

			</div>
			<jsp:include page="sidebar.jsp"></jsp:include>
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>
		</div>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>

	<jsp:include page="../mainjs.jsp"></jsp:include>
</body>
</html>