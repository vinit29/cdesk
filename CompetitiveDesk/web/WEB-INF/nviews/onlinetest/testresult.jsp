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
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js.download"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	//(document).ready(initiateTestResultLoader);
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
					<div class="resultFrm" id="result">
						<table style="text-align: left; width: 100%">
							<tr>
								<td
									style="color: green; font-size: large; text-align: left; width: 90%; padding-left: 20px">You
									have successfully given the Test !</td>
								<td align="center" style="width: 10%">
								
								<a href="#" class="btn btn-primary custom-button green-btn" href="<%=request.getContextPath()%>/all-online-aptitude-test"
									style="margin: 10px 10px 0px 0px;">New Test</a>
								</td>
							</tr>

						</table>

						<hr>
						<br>
						<!--   {{#with DATA}} -->
						<table style="text-align: left;">
							<tr>
								<td style="padding: 6px 6px 6px 6px; color: #0073e6;"><b>Name
										:-</b></td>
								<td style="padding: 6px 6px 6px 6px;">${userMaster.firstName} &nbsp;${userMaster.lastName}</td>
								<td style="padding: 6px 6px 6px 6px; width: 30%"></td>
							
								<td style="padding: 6px 6px 6px 6px; color: #0073e6;"><b>Test
										ID :-</b></td>
								<td style="padding: 6px 6px 6px 6px;">CDT${userTest.id}</td>
								<td style="padding: 6px 6px 6px 6px; width: 30%"></td>
							</tr>
							<tr>
								<td style="padding: 6px 6px 6px 6px; color: #0073e6;"><b>Time taken
										:-</b></td>
								<td style="padding: 6px 6px 6px 6px;">${time}</td>
								<td style="padding: 6px 6px 6px 6px; width: 30%"></td>
							
								<td style="padding: 6px 6px 6px 6px; color: #0073e6;"><b>Test Duration
										:-</b></td>
								<td style="padding: 6px 6px 6px 6px;">${duration}</td>
								<td style="padding: 6px 6px 6px 6px; width: 30%"></td>
							</tr>
							<tr>
								<td style="padding: 6px 6px 6px 6px; color: #0073e6;"></td>
								<td style="padding: 6px 6px 6px 6px;"></td>
								<td style="padding: 6px 6px 6px 6px; width: 30%"></td>
							</tr>
						</table>
						<br>
						<div class="row">
						<div class="col-lg-6 col-sm-6"></div>
						<div class="col-lg-6 col-sm-6" style="text-align: right;padding-right: 20px;">
						  <a href="<%=request.getContextPath()%>/${seoname}/testsummary/CDTI${userTest.id}" style="color: green; font-size: 12px;">TEST SUMMARY</a>
						</div>
						</div>
					<table border="1" class="tblsty"
						style="width: 100%; text-align: center;">
						<tr class="tblsty">
							<td class="tblsty"></td>
							<td class="tblsty"><b style="color: #0073e6; ">Total Question</b></td>
							<td class="tblsty"><b style="color: #0073e6; ">Attempt</b></td>
							<td class="tblsty"><b style="color: #0073e6; ">Not Attempt</b></td>
							<td class="tblsty"><b style="color: #0073e6; ">Correct</b></td>
							<td class="tblsty"><b style="color: #0073e6; ">Wrong</b></td>
							<td class="tblsty"><b style="color: #0073e6; ">Marked Review</b></td>
							<td class="tblsty"><b style="color: #0073e6; ">Score</b></td>
						</tr>
						  <c:forEach items="${testResult}" var="testResult">
		                       
		       					 <tr class="tblsty">
									 <c:if test="${testResult.key eq '1'}">
	                                     <td class="tblsty">Maths</td>
									</c:if>
									 <c:if test="${testResult.key eq '2'}">
	                                     <td class="tblsty">English</td>
									</c:if>
									<c:if test="${testResult.key eq '3'}">
	                                     <td class="tblsty">Reasoning</td>
									</c:if>
									 <c:if test="${testResult.key eq '4'}">
	                                     <td class="tblsty">GK</td>
									</c:if>
									 <c:if test="${testResult.key eq '5'}">
	                                     <td class="tblsty">Computer</td>
									</c:if>
									<td class="tblsty">${testResult.value.total}</td>
									<td class="tblsty">${testResult.value.attempt}</td>
									<td class="tblsty">${testResult.value.notAttempt}</td>
									<td class="tblsty">${testResult.value.correct}</td>
									<td class="tblsty">${testResult.value.inCorrect}</td>
									<td class="tblsty">${testResult.value.markedReview}</td>
									<td class="tblsty">${testResult.value.score}</td>
								</tr>
    						</c:forEach>
						



					</table>
					<br>
						
					</div>

			</div>
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>

		</div>


	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>

	 <script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
</body>
</html>