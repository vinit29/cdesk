
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Speed test</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.latest.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-autocomplete-ui.min.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	/* var msec = 00;
	var sec = 00;
	var min = 00; */
	//document.getElementById("testaccessview").style.display = "none";
	$(document).ready(initiateTestLoaderaccess);
</script>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/demo.css"> --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/button.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/header-second-bar.css"> --%>
<style type="text/css">
.problem {
	text-align: center;
}

.enclose {
	/* background-color:#FFF; */
	border-radius: 8px;
	position: fixed;
	bottom: -4px;
	padding: 12px;
}

#loader {
	position: absolute;
	left: 50%;
	top: 50%;
	z-index: 1;
	border: 5px solid #fff;
	border-radius: 50%;
	border-top: 5px solid #0073e6;
	width: 40px;
	height: 40px;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite;
	margin: -75px 0 0 -75px;
}

#actionButton button {
	margin-top: 10px;
	align: center;
}

#testaccessview {
	display: none;
}
</style>
<jsp:include page="../analitics.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../docheader.jsp"></jsp:include>
	<!-- <div id="testNameData"></div> -->

	<br>

	<div class="container-fluid contentScreen">
		<div class="row">
			<div class="col-sm-1" style="margin: 0px 0px 0px 0px;"></div>
			<div class="col-sm-10" style="margin: 0px 0px 0px 0px;">
			<div id="loader"></div>
				<div id="testaccessview">
					<form id="usertestform">
						<div class="row">
							<div id="tblLanguageBar"></div>
							
						</div>
						<br>
						<div class="row">
							<div class="col-xs-9 col-md-9">
								<div id="testView" style="font-family: 'Source Sans Pro', sans-serif; font-size: 16px; line-height: 1.45;"></div>
							</div>
							<div class="col-xs-3 col-md-3" style="overflow-y: scroll; height: 500px; padding-left: 0px">
								<div id="selection">
									<c:forEach items="${TOTAL_QUESTION_OPTION_MAP}" var="buttonCal">

										<input type="button" style="width: 50px; margin-right: 2px" name="opt${buttonCal}" value="${buttonCal}" onclick="getQuestionOnKey(this.value)"></input>
									</c:forEach>
								</div>
							</div>
						</div>
						<br>
						<br>
						<div class="row">

							<input type="hidden" name="quekey" id="quekey" value=""></input> <input type="hidden" name="nextkey" id="nextkey" value=""></input>
							
							<form id="submitUsertestform">
								<div id="mainContent" class="container">
								<div class="col-xs-10 col-md-7" style="padding-top: 48px;padding-left: 0px">
									<div id="actionButton" class="problem"></div>
								</div>
								<div class="col-xs-2 col-md-4" style="padding-top: 58px;padding-left: 0px">
									<a class="btn btn-primary btn-md btnss" href="<%=request.getContextPath()%>/online-aptitude-test-in-english-and-hindi/testresult/CDTI${TEST_ID}">Submit</a>
								</div>
									<!-- <input type="button" name="submitTest" id="submitTest" class="button_example_action" value="Submit Test"></input> -->
								</div>
							</form>
						</div>
					</form>
				</div>
			</div>
			<div class="col-sm-1" style="margin: 0px 0px 0px 0px;"></div>
		</div>


	</div>

	<%-- <div class="container-fluid">
		<div class="row">
			<div class="col-sm-2" style="margin: 0px 0px 0px 0px;"></div>
			<div class="col-sm-8" style="margin: 0px 0px 0px 0px; width: 850px">

				<div id="tblLanguageBar">
					<!-- <table style="float: right;margin-right: 10px;">
					  <tr><td><select id="languageSelect"><option value="en">  English  </option><option value="hn">  Hindi  </option></select><td></tr>
					</table> -->
				</div>
				<div id="loader"></div>
				<div id="testaccessview">
					<form id="usertestform">
						<div id="leftArea" style="float: left; width: 70%; padding: 10px 20px 10px 20px;">
							<div id="testView"></div>
						</div>
						<div id="rightArea" style="float: right; width: 25%; padding: 10px 0px 10px 0px;">
							<br>
							<div id="selection">
								<c:forEach items="${TOTAL_QUESTION_OPTION_MAP}" var="buttonCal">

									<input type="button" style="width: 50px; margin-right: 2px" name="opt${buttonCal}" value="${buttonCal}" onclick="getQuestionOnKey(this.value)"></input>
								</c:forEach>
							</div>
						</div>


						</br>



						<div id="actionButton" class="enclose problem"></div>

						<input type="hidden" name="quekey" id="quekey" value=""></input> <input type="hidden" name="nextkey" id="nextkey" value=""></input>


					</form>
					<br> <br>
					<form id="submitUsertestform">
						<div id="mainContent" class="enclose" style="float: right; left: 70%">
							<a class="button_example_action" href="<%=request.getContextPath()%>/online-aptitude-test-in-english-and-hindi/testresult/CDTI${TEST_ID}"
								style="float: right;" class="btmClass">Submit</a>
							<!-- <input type="button" name="submitTest" id="submitTest" class="button_example_action" value="Submit Test"></input> -->
						</div>
					</form>
				</div>
				<br> <br>

			</div>
			<div class="col-sm-2" style="margin: 0px 0px 0px 0px;"></div>

		</div>
		<br>
	</div> --%>
	<br>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>