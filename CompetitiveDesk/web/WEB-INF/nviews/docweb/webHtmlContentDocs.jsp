
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready();
</script>
</head>
<style>
body {
    color: #333;
    font-family: "Roboto",Helvetica,Arial,sans-serif;
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
</style>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<div class="row" style="min-height:500px;">
			<div class="col-sm-1"></div>

			<div class="col-sm-7">
					<div id="controlDoc">
								<div class="blog-post">
						<h1>How to find square of any 2 digit
							numbers.</h1>
						<p class="blog-post-meta">
							September 25, 2016 by <a href="#">Vinit</a>
						</p>
						<h3>STEP :1</h3>

						<h4>
							Understand and memorize below <i style="color: #0073e6;">Base
								table </i> .
						</h4>

						<table border="0" width="100%" style="text-align: center;"
							class="table table-bordered">
							<tbody>
							<tr style="font-weight: bold;">
									<td colspan="2">For 2 Digit No</td>
									<td colspan="2">For 3 Digit No</td>
								</tr>
								<tr style="font-weight: bold;">
									<td>50</td>
									<td>100</td>
									<td>150</td>
									<td>200</td>

								</tr>
								<tr>
									<td>50 x 50 = 2500</td>
									<td>100 x 100 = 10000</td>
									<td>150 x 150 = 22500</td>
									<td>200 x 200 = 40000</td>
								</tr>
								<tr style="font-weight: bold;">
									<td>Base = 25</td>
									<td>Base = 100</td>
									<td>Base = 225</td>
									<td>Base = 400</td>
								</tr>
							</tbody>
						</table>


						<hr>
						<p style="font-size: 15px;">
							We get <b>Base</b> value by removing last two digits from the
							result.<br>
							<br> e.g&nbsp;&nbsp;&nbsp; 50 x 50 = 2500.<br> &nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; so, <b>Base is 25</b>.

						</p>
						<!-- <blockquote>
							<p>
								Curabitur blandit tempus porttitor. <strong>Nullam quis
									risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id
								nibh ultricies vehicula ut id elit.
							</p>
						</blockquote> -->
						<br>
						<h3>STEP :2</h3>

						<h4>That's it. Now get any two digit No.</h4>
						<h3>
							&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (56)<sup>2</sup> = ?
						</h3>
						<p style="font-size: 15px;">
							Now check the base table and identify the closest number to - 56<br>
							In our case 50 is near to 56.
						</p>

						<br>
						<h4>Subtract the given number from the Base</h4>
						<h3>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 56 - 50 = 6.</h3>

						<br>
						<h4>Make a square of the difference,so</h4>
						<h3>
							&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (6)<sup>2</sup> =
							36&nbsp;&nbsp;&nbsp; ....................................... (1)
						</h3>
						<br>
						<h3>STEP :3</h3>

						<p>Now <b>addition & subtraction</b> is based on the no for which we need to find square.<br>
						<br>
						In our case 56 is higher then 50 , so <h4><b>addition</b> of Base and difference</h4><br> </p>

						<h3>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25 + 6 =
							31&nbsp;&nbsp;&nbsp; ....................................... (2)</h3>
							
					<br>
						e.g. If number is 46 which is lower then 50 , so <b>subtraction</b> of Base and difference<br> </p>		
						<br>
						<h3>STEP :4</h3>

						<p style="font-size: 15px;">
							We have two results . Just merge both of them.<br> 2<sup>nd</sup>
							result and 1<sup>st</sup> result
						</p>

						<h3>
							&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;So, your answer of (56)<sup>2</sup>
							= 3136
						</h3>
						<hr>
					</div>

					<nav>
					<ul class="pager">
						<li><a href="#">Previous</a></li>
						<li><a href="#">Next</a></li>
					</ul>
					</nav>
					</div>
			</div>
			<!-- <div class="col-sm-2"></div> -->
			<jsp:include page="sidebar.jsp"></jsp:include>
			<div class="col-sm-1"></div>
		</div>

	</div>

	<jsp:include page="../footer.jsp"></jsp:include>

	<jsp:include page="../mainjs.jsp"></jsp:include>
</body>
</html>