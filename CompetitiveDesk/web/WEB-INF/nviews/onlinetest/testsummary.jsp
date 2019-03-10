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
<title>exam in english and hindi | competitivedesk.com</title>
<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js.download"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	//(document).ready(initiateTestSummaryLoader);
</script>
<style type="text/css">
 table td #answer-status-right {
	background: url('<%=request.getContextPath()%>/new/images/right-round.png')  no-repeat;
	height: 24px;
    width: 24px;
	position: relative;
	top: 5px;
	
}

table td #answer-status-wrong {
    background: url('<%=request.getContextPath()%>/new/images/cancel-square.png') no-repeat;
    height: 24px;
    width: 24px;
    position: relative;
    top: 5px;
   
}

.que_text{
  line-height: 25px;
  font-size: 15px;
}

.selectSubject {
	background-color: #eee;
	text-decoration: none;
	margin-right: 5px;
	padding: 2px 5px 2px 5px;
}

</style>

</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
       <input type="hidden" id="firstCategory" name="firstCategory" value="<c:out value='${categoryId}'></c:out>" />
		<div class="row" style="min-height: 500px;">
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>
			<div class="col-lg-10 col-sm-10" style="margin: 0px 0px 0px 0px;">
				<div class="resultFrm" id="result">

					<div class="row">
						<nav>
							<ul id="tblTestSubject"
								style="margin-bottom: 0px; margin-left: 20px"
								class="nav navbar-nav navbar-left responsive-nav main-nav-list">
								 <c:forEach items="${testCategory}" var="category">
								<li class="selectSubject"><a class="categoryLink" href="#"
									onclick="viewCategorySummary('${category.id}')">${category.name}</a></li>
									</c:forEach>
							</ul>
						</nav>
						<div class="col-md-12">
						
							<div class="ibox">

                         <c:forEach items="${testSummary}" var="summary">
								<div class="ibox-content" id="testCate${summary.value.categoryId}">
									<div class="table-responsive">
										<table class="table shoping-cart-table">
											<tbody>
												<tr>
													<td class="desc" style="border-top: none;border-bottom: 1px solid #ddd;">
														<h4>
															<span class="que_text">${summary.value.Question.question}</span>
														</h4>
														<p>
														   <span style="color: #1288b9;">Ans. : </span>&nbsp; &nbsp;&nbsp;&nbsp;${summary.value.OptionAnswer.value}
														</p>
														<!-- <p class="small">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its
															layout. The point of using Lorem Ipsum is</p>
														<dl class="small m-b-none">
															<dt>Description lists</dt>
															<dd>A description list is perfect for defining terms.</dd>
														</dl>

														<div class="m-t-sm">
															<a href="#" class="text-muted"><i class="fa fa-gift"></i> Add gift package</a> | <a href="#" class="text-muted"><i class="fa fa-trash"></i>
																Remove item</a>
														</div> -->
													</td>
													<c:choose>
													  <c:when test="${summary.value.isTrue eq '1'}">
													  <td width="50"  style="border-top: none;border-bottom: 1px solid #ddd;"><img id="answer-status-right" src="" width="20px" height="20px" style="margin-top: 25px;" /></td>
													  </c:when>
													  <c:when test="${summary.value.isTrue eq '0'}">
													  <td width="50"  style="border-top: none;border-bottom: 1px solid #ddd;"><img id="answer-status-wrong" src="" width="20px" height="20px" style="margin-top: 25px;" /></td>
													  </c:when>
													  <c:otherwise>
													     <td  style="border-top: none;border-bottom: 1px solid #ddd;font-size: 10px;text-align: right;">NOT ATTEMPT</td>
													  </c:otherwise>
													</c:choose>
													
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</c:forEach>

						


							</div>

						</div>
					</div>








				</div>

			</div>
			<div class="col-lg-1 col-sm-1" style="margin: 0px 0px 0px 0px;"></div>

		</div>


	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
    <script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script type="text/javascript">
	
	$(".ibox #testCate1").hide();
	$(".ibox #testCate2").hide();
	$(".ibox #testCate3").hide();
	$(".ibox #testCate4").hide();
	$(".ibox #testCate5").hide();
	var firstCategory = $("#firstCategory").val();
	$(".ibox #testCate"+ firstCategory).show();
	
	</script>
</body>
</html>