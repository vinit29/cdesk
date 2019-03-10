<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Question | competitivedesk.com</title>

<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(function(){
		$(".solutiontrclass").hide();
	});

	function checkanswer(ans){
		$("#" + ans).css("background-color", "#85e085");
		setInterval(function() {
			$("#" + ans).css("background-color", "#FFF");
		}, 5000);
	}
	function viewsolution(id){
		 $("#solutiontr" + id).toggle(250);
	}
	  
</script>
</head>
<style>
body {
	color: #333;
	font-family: "Roboto", Helvetica, Arial, sans-serif;
	font-size: 13px;
	line-height: 1.42857;
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
	line-height: 1.3;
}

.scentered {
	position: absolute;
	top: 12%;
	left: 42%;
	transform: translate(-50%, -50%);
	color: white;
	font-size: 42px;
}
 .solutiontable{
    color: #333;
	font-family: "Roboto", Helvetica, Arial, sans-serif;
	font-size: 15px;
	line-height: 2.429;
 }
 
 .blueHLT{
     color: #0099ff;
 }

/* .container {
    position: relative;
    text-align: center;
    color: white;
} */
</style>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<div class="row" style="min-height: 500px;">
			<div class="col-sm-1"></div>

			<div class="col-sm-10">
				<div id="controlDoc">
					${webDocument.content}
					<%-- 	<nav>
						<ul class="pager">
							<li><a href="${webDocument.previous}">Previous</a></li>
							<li><a href="${webDocument.next}">Next</a></li>
						</ul>
					</nav> --%>
					<c:set var="count" value="0" scope="page" />
					<c:forEach items="${getQuestionMapping}" var="questionObj">
						<c:set var="count" value="${count + 1}" scope="page" />
						<table class="bix-tbl-container" width="100%" cellspacing="0"
							cellpadding="0" border="0">
							<tbody>
								<tr>
									<td rowspan="2" valign="top" align="left" style="width: 30px;"><c:out
											value="${count}" />.&nbsp;</td>
									<td valign="top"><p style="font-size: 16px">${questionObj.question.question}</p></td>
								</tr>
								<tr>
									<td valign="top">
										<table id="tblOption_454" width="100%" cellspacing="0"
											cellpadding="0" border="0">
											<tbody>
												<c:set var="a_count" value="-1" scope="page" />
												<c:set var="alphabet" value="${fn:split('A,B,C,D,E', ',')}"
													scope="page" />
												<c:forEach items="${questionObj.options}" var="optionObj">
													<c:set var="a_count" value="${a_count + 1}" scope="page" />
													<tr>
														<td width="1%"><a id="lnkOptionLink_A_454"> <c:out
																	value="${alphabet[a_count]}" />.
														</a></td>
														<td width="99%" style="margin-left: 20px; float: left;">
															<label id="${optionObj.options.id}">${optionObj.options.value}</label>

														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</td>
								</tr>
								<tr class="solutiontrclass" id="solutiontr${questionObj.answer.questionOptionMapping.options.id}">
								    <td></td>
									<td><br><b style="color: #0073e6;">-: Solution :-</b> <hr>
									<c:set var = "string1" value = "${questionObj.question.solution}"/>
									
									   <p class="solutiontable"><c:out value="${string1}" escapeXml="false"/></p>
									   
									 </td>
								</tr>
								<tr>
									<td></td>
									<td style="float: right; padding-right: 20px;"><a href="javascript: void 0;"
										id="viewans"
										onclick="checkanswer(${questionObj.answer.questionOptionMapping.options.id});"
										style="color: blue;">Check Answer</a></td>
									
									<td style="float: right; padding-right: 20px;"><a href="javascript: void 0;"
										id="viewsolution"
										onclick="viewsolution(${questionObj.answer.questionOptionMapping.options.id});"
										style="color: blue;">View Solution</a></td>
								</tr>
							</tbody>
						</table>
					</c:forEach>
				</div>
			</div>
			<!-- <div class="col-sm-3"></div> -->
			<%-- <jsp:include page="sidebar.jsp"></jsp:include> --%>
			<div class="col-sm-1"></div>
		</div>

	</div>

	<jsp:include page="../footer.jsp"></jsp:include>

	<jsp:include page="../mainjs.jsp"></jsp:include>
</body>
</html>