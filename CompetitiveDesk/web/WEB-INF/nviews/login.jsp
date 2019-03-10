
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Competitive Desk</title>

<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(initiatUserLogin);
	
	function selectchange(){
		 $("form#RegisterFrm select[name=gender]").removeClass("border-color");
	}
	
	$(function() {
		
	    $('#loginFrm-link').click(function(e) {
			$("#loginFrm").delay(100).fadeIn(100);
	 		$("#RegisterFrm").fadeOut(100);
			$('#RegisterFrm-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#RegisterFrm-link').click(function(e) {
			$("#RegisterFrm").delay(100).fadeIn(100);
	 		$("#loginFrm").fadeOut(100);
			$('#loginFrm-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});

</script>

</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/login.css" />

<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	
	
	
	
<div class="container">

    	<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-login" style="margin-bottom: 100px;">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="loginFrm-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="RegisterFrm-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form class="login-form" id="loginFrm" role="form"
									style="display: block;">



									<div class="form1" id="form-login">


										<input type="hidden" name="backUrl" value="${backurl}" />

										<div class="modal-body">
											<div id="div-login-msg"></div>
											<input id="login_username" class="form-control" type="text"
												placeholder="Email" name="email" required /> <br> <input
												id="login_password" class="form-control" type="password"
												placeholder="Password" name="pwd" required /><br>

										</div>
										

									</div>


									<div class="form-group">
										<div class="row">
										<div class="col-sm-6">
												<input type="button" name="resetBtn" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Reset">
													
											</div>
											<div class="col-sm-6">
												<input type="button" name="loginBtn" id="login-submit"
													tabindex="5" class="form-control btn btn-login"
													value="Log In">
													
											</div>
											
											
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="" tabindex="6"
														class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>




								<form id="RegisterFrm" role="form" style="display: none;">


									<div class="form1" id="form-Register">

										<input type="hidden" name="backUrl" value="${backurl}" />
										<table style="width: auto; margin: 0px 10px 0px 10px;" class="borderspace">
											<tr>
												<td><input type="text" class="form-control"
													placeholder="FirstName" name="firstname" /></td>
												<td style="padding-left: 20px;"></td>
												<td><input type="text" class="form-control"
													placeholder="LastName" name="lastname" /></td>
											</tr>

											<tr>
												<td colspan="3"><input type="text" class="form-control"
													placeholder="Email" name="email" /></td>
											</tr>

											<tr>
												<td colspan="3"><input type="password"
													class="form-control" placeholder="password" name="pwd" /></td>
											</tr>

											<tr>
												<td colspan="3"><input type="password"
													class="form-control" placeholder="Confirm Password"
													name="cpwd" /></td>
											</tr>

											<tr>
												<td colspan="3"><input type="text" class="form-control"
													placeholder="Mobile No e.g 9687XXXXXX" name="mobileno" />
												</td>
											</tr>

											<tr>
												<td colspan="3"><input type="text" class="form-control"
													placeholder="Address" name="address" /></td>
											</tr>

											<tr>
												<td colspan="3"><input type="text" class="form-control"
													placeholder="Pincode" name="pincode" /></td>
											</tr>

											<tr>
												<td colspan="2"><select placeholder="Gender"
													class="form-control" name="gender" onchange="selectchange();">
														<option selected="selected" value="">Select
															Gender</option>
														<option value="M">Male</option>
														<option value="F">Female</option>
														<option value="O">Other</option>
												</select></td>
												<td></td>
											</tr>

											<tr>
												<td colspan="3">
													<div class="form-group">
														<div class="row">
															
															<div class="col-sm-12">
																<input type="button" name="register" id="login-submit"
																	tabindex="5" class="form-control btn btn-register"
																	value="Register">

															</div>


														</div>
													</div>



												</td>
												<td>
											</td>
											</tr>
										</table>
                                    
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
	
	
	
	
	

	<!-- <section class="focus" id="focus"> -->
	<%--<div class="container" style="margin-top: 50px; margin-bottom: 100px;">
		
		<div class="col-xs-1 col-sm-1 col-lg-1"></div>
		 <div class="col-xs-2 col-sm-2 col-lg-2">
			<div class="login-page">

				<div id="slideshow">
					<div>
						<img src="<%=request.getContextPath()%>/images/usertest12.jpg">
					</div>
					<div>
						<img src="<%=request.getContextPath()%>/images/testview12.jpg">
					</div>
				</div>
				</br> </br>
				<div id="info" style="width: 100%; font-size: 12px;">
					
					<p id="jsinfo">
						To create a Competitive Desk Account and access Test-Portal, you need <a target="_blank"
							href="https://support.google.com/accounts/answer/23852?hl=en">JavaScript enabled</a> in your browser. <a class="cta" href=""> Refresh this page
							after you have enabled JavaScript. </a>
					</p>
					
				</div>
			</div> 


		</div>
		
	</div>--%>
	<!-- 	</section> -->


	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>

	<%-- <jsp:include page="mainjs.jsp"></jsp:include> --%>
</body>
</html>