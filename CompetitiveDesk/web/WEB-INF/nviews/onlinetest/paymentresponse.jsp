<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(initiatPaymentGatewayResponse);
</script>
</head>
<style>
#itemDiscription {
	line-height: 18px;
	height: 36px;
	overflow: hidden;
}
</style>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">

		<div class="row" style="min-height: 500px;">

			<div class="col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				
						<c:choose>
							<c:when test="${purchaseOrder.status.id eq 20}">
							<div class="panel panel-success">
								<div class="panel-heading">
								<div class="text">
									<h2>Yea !</h2>
									<h4>
										Your Transaction of &nbsp;&nbsp;<b>Rs. ${purchaseOrder.payment.amount}</b>&nbsp;&nbsp;Successfully Done.
									</h4>
								</div>
							</c:when>
							<c:when test="${purchaseOrder.status.id eq 21}">
							<div class="panel panel-danger">
									<div class="panel-heading">
								<div class="text">
									<h2>Ooops !</h2>
									<h4>
										Your Transaction of &nbsp;&nbsp;<b>Rs. ${purchaseOrder.payment.amount}</b>&nbsp;&nbsp;Is Failed.
									</h4>
								</div>
							</c:when>
							<c:otherwise>
							<div class="panel panel-warning">
									<div class="panel-heading">
								<div class="text">
									<h2>Wait a Moment !</h2>
									<h4>
										Your Transaction of &nbsp;&nbsp;<b>Rs. ${purchaseOrder.payment.amount}</b>&nbsp;&nbsp;Is In Process.
									</h4>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<address>
									<strong>${orderUser.firstName} &nbsp;${orderUser.lastName}</strong> <br> ${orderUser.address} <br> ${orderUser.pincode} <br>
									<abbr title="Phone">M:</abbr> ${orderUser.mobile}
								</address>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 text-right">
								<p>
									<em>Date: &nbsp;&nbsp;<fmt:formatDate pattern="dd MMMM ,YYYY" value="${purchaseOrder.createdOn}" /></em>
								</p>
								<p>
									<em><span>Order ID:</span> ${purchaseOrder.id} (${fn:length(purchaseOrder.purchaseTransactions)} item)</em>
								</p>
							</div>
						</div>

						<div class="row">
							<div class="text-left">
								<h3 style="margin-left: 15px;">Order Summary</h3>
							</div>

							<table class="table table-hover">
								<thead>
									<tr>
										<th>Test</th>

										<th class="text-center"></th>
										<th class="text-center">Price</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${purchaseOrder.purchaseTransactions}" varStatus="index" var="cur">
										<tr>
											<td class="col-md-7"><em>${cur.testSample.userTestSample.name}</em></td>
											<td class="col-md-2" style="text-align: center"></td>

											<td class="col-md-3 text-center">Rs. ${cur.totalPrice}</td>
										</tr>
									</c:forEach>

									<tr>
										<td> </td>

										<td class="text-right"><h4>
												<strong>Total: </strong>
											</h4></td>
										<td class="text-center text-danger"><h4>Rs. ${purchaseOrder.payment.amount}</h4></td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<c:choose>
							
							<c:when test="${purchaseOrder.status.id eq 2}">
							
								<div class="text" style="color: #a94442;font-size: 10px;">
									
										 &nbsp;&nbsp;<b> ${purchaseOrder.message}</b> .
									
								</div>
							</c:when>
							
						</c:choose>
					</div>
				</div>


			</div>
		</div>

	</div>

	<jsp:include page="../footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
</body>
</html>