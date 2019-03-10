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
<title>Competitive exam in english and hindi | competitivedesk.com</title>
<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(initiatPaymentGateway);

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

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">

		<div class="row" style="min-height: 500px;">
			<div id="page-wrapper">

				<div class="row wrapper border-bottom white-bg page-heading">
				   <div class="col-lg-1"></div>
					<div class="col-lg-10">
						<ol class="breadcrumb" style="background:none;">
							<li><a href="<%=request.getContextPath()%>/">Home</a></li>
							<li><a href="<%=request.getContextPath()%>/all-online-aptitude-test">All Test</a></li>
							<li class="active"><strong>Test cart</strong></li>
						</ol>
					</div>
					<div class="col-lg-1"></div>
				</div>

				<div class="wrapper wrapper-content fadeInRight">
				   <c:choose>
				      <c:when test="${error}">
				      <div class="row">
					    <div class="col-md-1"></div>
						<div class="col-md-10">

							<div class="ibox">
								<div class="ibox-title">
									<span class="pull-right">(<strong>0</strong>) items
									</span>
									<h5> <c:out value="${msg}"></c:out></h5>
								</div>
							</div>
						</div>
						 <div class="col-md-1"></div>
						</div>		
				         
				      </c:when>
				      <c:otherwise>
				         <div class="row">
					    <div class="col-md-1"></div>
						<div class="col-md-10">
							<form id="cartfrm">
							 <input type="hidden" name="items" value="${fn:length(purchaseOrder.purchaseTransactions)}" />
							<input type="hidden" name="pgid" value="${pgid.value}" />
							
							<div class="ibox">
								<div class="ibox-title">
									<span class="pull-right">(<strong>${fn:length(purchaseOrder.purchaseTransactions)}</strong>) items
									</span>
									<h5>Items in your cart</h5>
								</div>
								<div class="ibox-content">

									<div class="table-responsive">
										<table class="table shoping-cart-table">
										<tbody>
											  <c:forEach items="${purchaseOrder.purchaseTransactions}" var="purchaseTrans">
											
												<tr>
													<td width="90">
														<div class="cart-product-imitation">
														<img alt="${purchaseTrans.testSample.userTestSample.name}" src="<%=request.getContextPath()%>/images/${purchaseTrans.testSample.userTestSample.imagename}" width="150px" height="100px" />
														</div>
													</td>
													<td class="desc">
														<h3>
															<a href="<%=request.getContextPath()%>/online-test/${purchaseTrans.testSample.userTestSample.seoname}/CDTI${purchaseTrans.testSample.id}U2" class="text-navy"> ${purchaseTrans.testSample.userTestSample.name} </a>
														</h3>
														<p class="small"> ${purchaseTrans.testSample.userTestSample.duration} &nbsp;&nbsp;, <c:forEach items="${purchaseTrans.testSample.userTestSample.subjectMap}" var="subjectMap"><c:out value="${subjectMap.name}"></c:out>&nbsp;&nbsp; </c:forEach>  </p>
														<hr style="margin-top: 2px;margin-bottom: 2px;">
														<dl class="small m-b-none">
															<dt>Description</dt>
															<dd><p id="itemDiscription">${purchaseTrans.testSample.userTestSample.discription}</p><a href="#" id="dismore">More</a></dd>
												        </dl>
														

														<div class="m-t-sm">
															<a href="#" class="text-muted" onclick="removeFromCart(${purchaseTrans.testSample.id})"><i class="fa fa-trash"></i>
																Remove item</a>
														</div>
													</td>

													<td></td>
													
													<td>
														<h4>Rs. ${purchaseTrans.testSample.pricePerUnit} <s class="small text-muted">Rs.30</s></h4>
													</td>
												</tr>
												</c:forEach>
												<tr>
													<td width="90">
														<div class="cart-product-imitation"></div>
													</td>
													<td class="desc">
														<h3>
															<a href="#" class="text-navy"> </a>
														</h3>
														<p class="small">  </p>
														<dl class="small m-b-none">
															<dt></dt>
															<dd></dd>
														</dl>

														<div class="m-t-sm">
															
														</div>
													</td>

													<td></td>
													
													<td>
														<h4>Rs. ${payableAmount}</h4>
													</td>
												</tr>
											</tbody>
											
										</table>
									</div>

								</div>
								
								
								<div class="ibox-content">
									<input type="button" class="btn btn-primary pull-right" name="checkOutbtn" value="Checkout" />
										
									
									<!-- <button class="btn btn-white">
										<i class="fa fa-arrow-left"></i> Continue shopping
									</button> -->

								</div>
							</div>
                           </form>
						</div>
						<div class="col-md-1">

							<!-- <div class="ibox">
								<div class="ibox-title">
									<h5>Cart Summary</h5>
								</div>
								<div class="ibox-content">
									<span> Total </span>
									<h2 class="font-bold">$390,00</h2>

									<hr>
									<span class="text-muted small"> *For United States, France and Germany applicable sales tax will be applied </span>
									<div class="m-t-sm">
										<div class="btn-group">
											<a href="#" class="btn btn-primary btn-sm"><i class="fa fa-shopping-cart"></i> Checkout</a> <a href="#" class="btn btn-white btn-sm"> Cancel</a>
										</div>
									</div>
								</div>
							</div> -->

						<!-- 	<div class="ibox">
								<div class="ibox-title">
									<h5>Support</h5>
								</div>
								<div class="ibox-content text-center">



									<h3>
										<i class="fa fa-phone"></i> +43 100 783 001
									</h3>
									<span class="small"> Please contact with us if you have any questions. We are avalible 24h. </span>


								</div>
							</div> -->

						<!-- 	<div class="ibox">
								<div class="ibox-content">

									<p class="font-bold">Other products you may be interested</p>

									<hr>
									<div>
										<a href="#" class="product-name"> Product 1</a>
										<div class="small m-t-xs">Many desktop publishing packages and web page editors now.</div>
										<div class="m-t text-righ">

											<a href="#" class="btn btn-xs btn-outline btn-primary">Info <i class="fa fa-long-arrow-right"></i>
											</a>
										</div>
									</div>
									<hr>
									<div>
										<a href="#" class="product-name"> Product 2</a>
										<div class="small m-t-xs">Many desktop publishing packages and web page editors now.</div>
										<div class="m-t text-righ">

											<a href="#" class="btn btn-xs btn-outline btn-primary">Info <i class="fa fa-long-arrow-right"></i>
											</a>
										</div>
									</div>

								</div>
							</div> -->

						</div>
					</div>
				      </c:otherwise>
				   </c:choose>
				     
					
				</div>

			</div>

		</div>


	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
</body>
</html>