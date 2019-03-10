<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${TESTINFO.name} exam in english and hindi | competitivedesk.com</title>
<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(initiatUserTest);
	
	 
</script>
</head>
<style>
</style>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">

		<div class="row" style="min-height:500px;">
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>
			<div class="col-lg-10 col-sm-10" style="margin: 0px 0px 0px 0px;">
				<form id="sortlinkform">
					<div id="sortlink" style="padding-bottom: 10px">
						<a style="text-decoration: none; margin-left: 50px;" href="<%=request.getContextPath()%>/all-online-aptitude-test">Home&nbsp;&nbsp;> </a> <a
							style="text-decoration: none;" class="anchorActive" href="#">&nbsp;&nbsp;${TESTINFO.name}&nbsp;&nbsp;></a>
					</div>
				</form>


				<div class="col-lg-3 col-sm-3" id="leftcontainer">
					<img src="<%=request.getContextPath()%>/images/${TESTINFO.imagename}" width="100%" style="padding: 12px 5px 5px 10px;" alt="${TESTINFO.name}"
						title="${TESTINFO.name}" />
				</div>

				<div id="centercontainer" class="col-lg-9 col-sm-9" style="padding: 0px 5px 0px 15px;">
					<div>
						<div class="row">
							<div class="col-lg-9 col-sm-9">
								<h3 style="margin-top: 20px;">
									<c:out value="${TESTINFO.name}" />
								</h3>
							</div>

							<div class="col-lg-3 col-sm-3">
							 <c:choose>
							 <c:when test="${isPaid}">
							    <a href="#" onclick="startUserTest(<c:out value="${TESTINFO.testId}" />,<c:out value="${TESTINFO.type}" />);" class="btn btn-primary custom-button green-btn"
									style="margin: 10px 10px 0px 0px;">Start Test</a>
							 </c:when>
							 <c:otherwise>
							    <a href="#" onclick="addToCart(<c:out value="${TESTINFO.testId}" />,'testorder/cart');" class="btn btn-primary custom-button green-btn"
									style="margin: 10px 10px 0px 0px;">Purchase Test</a>
							 </c:otherwise>
							 </c:choose>
							
								
							</div>
						</div>
             			<br>
						<div class="row">
							<!-- <h4 class="quick">Quick Overview:</h4> -->
							<div class="text">
								<p class="ng-binding">
									<c:out value="${TESTINFO.name}" />
									<c:out value="${TESTINFO.discription}" />
								</p>
								<p>For rough calculations , it is recommended you have a pen and paper to hand.</p>
								<p>For every question you will be given 5 potential answers, only one answer is correct.</p>
								<p>It is best to take test in an environment where you will not be disturbed.</p>

								<c:set var="testtype" scope="session" value="${TESTINFO.type}" />

								<c:choose>
									<c:when test="${testtype == '2'}">
										<p>Please select language before you start your test.</p>
										<input type="radio" name="language" id="language" value="en" />   English<br>
										<input type="radio" name="language" id="language" value="hn" />   Hindi  
 						            </c:when>
									<c:otherwise>
										<p>Begin your test now.</p>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>











				</div>

			</div>
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>

		</div>


	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>

	<jsp:include page="../mainjs.jsp"></jsp:include>
</body>
</html>