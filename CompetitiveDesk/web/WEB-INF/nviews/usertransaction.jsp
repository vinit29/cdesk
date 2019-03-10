<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Competitive exam in english and hindi | competitivedesk.com</title>
<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	//$(document).ready(initiatPaymentGateway);
	
</script>
</head>
<style>
.transReport .reportBox {
	background-color: #F0F4F5;
	padding: 15px 15px 26px 5px; 
	margin-top : 15px;
	border-radius: 4px;
	font-size: 12px;
	color: #393939;
	position: relative;
	box-shadow: 0px 1px 1px #d8d8d8;
	-webkit-box-shadow: 0px 1px 1px #d8d8d8;
	cursor: pointer;
	margin-top: 15px;
}

.transReport .reportBox b {
	font-size: 13px;
	font-weight: 600;
	display: inline-block;
}

.transReport .reportBox h2 {
	padding: 12px 0px 8px;
	color: #878787;
}

.transReport .reportBox p {
	display: block;
	color: #878787;
	font-size: 11px;
}

.transReport .reportBox span {
	color: #5d5d5d;
	display: inline-block;
	padding: 0 5px;
	font-weight: 600;
	text-transform: uppercase;
}

.transReport .reportBox b {
	font-size: 13px;
	font-weight: 600;
	display: inline-block;
}

.transReport .reportBox span {
	padding: 0px;
	font-size: 11px;
}

.transReport .reportBox span {
	color: #5d5d5d;
	display: inline-block;
	padding: 0 5px;
	font-weight: 600;
	text-transform: uppercase;
}
</style>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">

		<div class="row" style="min-height: 500px;">
			My Transaction
			<c:forEach items="${purchaseOrderList}" var="order">
			
			<div class="transReport">
			 
				<div class="reportBox transfer">
				  <div class="col-lg-1 col-sm-1">
				             <img alt="image" width="50" height="50" style="margin-top: 14px;" class="img-circle1" src="images/notebook.png" />
				   </div>          
					<div class="col-lg-5 col-sm-5">
						<b><c:set var="totalPrice" value="${0}"/>
						<c:forEach items="${order.purchaseTransactions}" var="transaction">
						        
						         ${transaction.testSample.name}  &nbsp; &nbsp; &nbsp;
						         <c:set var="totalPrice" value="${totalPrice + transaction.totalPrice}" />
						         
						</c:forEach></b>
						<h5>TRANSFERRED TO: XXXXXXXXXXXXX</h5>
						<p>
							ORDER ID:<span>${order.id}</span>
						</p>
					</div>
					<div class="col-lg-5 col-sm-5">
						<b class="amt"><i class="rupyaINR">RS : </i>${totalPrice}</b>
							<c:choose>
								<c:when test="${order.status.id eq '20'}">
									<h5 style="color: #68B32C;">TRANSACTION SUCCESSFUL</h5>
								</c:when>
								<c:when test="${order.status.id eq '21'}">
									<h5 style="color: #ff471a;">TRANSACTION FAILED</h5>
								</c:when>
								<c:otherwise>
									<h5 style="color: #ffad33;">TRANSACTION PENDING</h5>
								</c:otherwise>
							</c:choose>
							
						<span><fmt:formatDate pattern="dd MMMM ,YYYY" value="${order.createdOn}" /></span>
					</div>
					<div class="cir">
						<i></i>
					</div>
					<div class="clr"></div>
					<br>
					<hr>
				</div>
			</div>
			</c:forEach>
		</div>


	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
</body>
</html>