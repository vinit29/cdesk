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
<title>Online Speed test | competitivedesk.com</title>
<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/button.css">
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
 $(document).ready(initiateTestLoaderaccess);
 
 window.onunload = refreshParent;
 function refreshParent() {
     window.opener.location.reload();
 }
</script>
</head>
<style>
.selectSubject {

	background-color: #eee;
	text-decoration: none;
}

</style>
<body>
  
   <div id="liveTestView-container" ></div>
	<%-- <jsp:include page="../header.jsp"></jsp:include> --%>
	<script id="liveTestViewFrm-template" type="text/x-handlebars-template">
	
     <div class="container1" style="margin-top: 0px; margin-bottom: 60px;margin-left :20px;max-width: 1128px;">
		<div class="row" style="border-bottom: 2px solid #e4e4e4; font-weight: bold;">
			<nav>
				<ul id="tblTestSubject" style="margin-bottom: 0px; margin-left: 20px" class="nav navbar-nav navbar-left responsive-nav main-nav-list">
				  {{#each DATA.SUBJECT_LIST}} <li class="selectSubject"><a class="categoryLink" href="#" onclick="setCategory({{ this.id }},'{{../DATA.TEST_NAME}}')">{{ this.name }}</a></li>{{/each}}
				</ul>
			</nav>
		</div>
         <div class="row" style="min-height: 500px;">
			<div class="col-lg-12 col-sm-12" style="margin: 0px 0px 0px 0px;">
				<div class="container-fluid contentScreen">
					<div class="row">

						<div class="col-lg-12 col-sm-12" style="margin: 0px 0px 0px 0px;">
							<div id="loader" style="display: none;"></div>
							<div id="testaccessview" style="display: block;">
								<form id="usertestform">
									<div class="row">
										<div id="tblLanguageBar"></div>
									</div>
									<br>
									<div class="row">
										<div class="col-xs-9 col-md-9 col-sm-9">
                                         {{#if DATA.COMMON_QUESTION_DATA}}
											<div class="col-xs-6 col-md-6 col-sm-6" style="overflow-y: scroll; height: 500px; padding-left: 0px">
												<table style="margin-bottom: 10px">
													<tbody>
														<tr>
															<td>{{DATA.COMMON_QUESTION_DATA.questionInfo}}</td>
															<td></td>
														</tr>
													</tbody>
												</table>

											</div>
											<div class="col-xs-6 col-md-6 col-sm-6">
                                          {{else}}
											<div class="col-xs-12 col-md-12 col-sm-12" style="overflow-y: scroll; height: 500px; padding-left: 0px">
                                         {{/if}}

												<div id="testView" style="font-family: 'Source Sans Pro', sans-serif; font-size: 16px; line-height: 1.45;">
													<div id="englishTestview">
														{{#each DATA.QUESTION_OPTION_MAP}}
                                                        <table style="margin-bottom: 10px">
															<tbody>
																<tr>
																	<td> {{@key}}    </td>
																	<td></td>
																</tr>
															</tbody>
														</table>
														<table>
															<tbody>
																 {{#each this}}
																<tr style="margin-top: 10px">
																	<td></td>
  																	{{#ifCond this.id '==' ../../DATA.ANSWER_ID}}
																			<td><input name="optionid" value="{{this.id}}" type="radio" checked="checked" /></td>
													            	{{/ifCond}}
																	
																	{{#ifCond this.id '!=' ../../DATA.ANSWER_ID}}
																			<td><input name="optionid" value="{{this.id}}" type="radio" /></td>
													            	{{/ifCond}}
																	

																	<td style="padding-left: 10px">{{this.value}}</td>
																</tr>
																  {{/each}}
															</tbody>
														</table>
													{{/each}}
													</div>

                                                    <div id="hindiTestview">
														{{#each DATA.HINDI_QUESTION_OPTION_MAP}}
                                                        <table style="margin-bottom: 10px">
															<tbody>
																<tr>
																	<td> {{@key}}    </td>
																	<td></td>
																</tr>
															</tbody>
														</table>
														<table>
															<tbody>
																 {{#each this}}
																<tr style="margin-top: 10px">
																	<td></td>

																	{{#ifCond this.id '==' ../../DATA.ANSWER_ID}}
																			<td><input name="optionid" value="{{this.id}}" type="radio" checked="checked" /></td>
													            	{{/ifCond}}
																	
																	{{#ifCond this.id '!=' ../../DATA.ANSWER_ID}}
																			<td><input name="optionid" value="{{this.id}}" type="radio" /></td>
													            	{{/ifCond}}
																	
																	<td style="padding-left: 10px">{{this.value}}</td>
																</tr>
																  {{/each}}
															</tbody>
														</table>
													{{/each}}
													</div>
												</div>
											</div>
										</div>
										<div class="col-xs-3 col-md-3" style="overflow-y: scroll; height: 500px; padding-left: 0px">
                                            <div id="selection">
                                                    {{#each DATA.TOTAL_QUESTION_OPTION_MAP}}
                                                       {{#ifCond this.statusId '==' 1}}
                                                        <input class="button_example_white" style="margin-right: 4px" name="opt{{this.queId}}" value="{{@key}}" onclick="getQuestionOnKey({{this.queId}})" type="button" />
														{{/ifCond}}

														{{#ifCond this.statusId '==' 6}}
                                                        <input class="button_example_white" style="margin-right: 4px" name="opt{{this.queId}}" value="{{@key}}" onclick="getQuestionOnKey({{this.queId}})" type="button" />
														{{/ifCond}}

 														{{#ifCond this.statusId '==' 7}}
                                                        <input class="button_example_red" style="margin-right: 4px" name="opt{{this.queId}}" value="{{@key}}" onclick="getQuestionOnKey({{this.queId}})" type="button" />
														{{/ifCond}}

														{{#ifCond this.statusId '==' 8}}
                                                        <input class="button_example_green" style="margin-right: 4px" name="opt{{this.queId}}" value="{{@key}}" onclick="getQuestionOnKey({{this.queId}})" type="button" />
														{{/ifCond}}

														{{#ifCond this.statusId '==' 9}}
                                                        <input class="button_example_blue" style="margin-right: 4px" name="opt{{this.queId}}" value="{{@key}}" onclick="getQuestionOnKey({{this.queId}})" type="button" />
														{{/ifCond}}

														{{#ifCond this.statusId '==' 10}}
                                                        <input class="button_example_orange" style="margin-right: 4px" name="opt{{this.queId}}" value="{{@key}}" onclick="getQuestionOnKey({{this.queId}})" type="button" />
														{{/ifCond}}
											        {{/each}}
                                            </div>
   											
										</div>
									</div>
									<hr>
									<div class="row" style="margin-left :20px;">

										<input name="quekey" id="quekey" value="{{DATA.QUESTION_KEY}}" type="hidden"> <input name="nextkey" id="nextkey" value="{{DATA.QUESTION_NEXT_KEY}}" type="hidden">


										<div id="mainContent" class="row">
											<div class="col-xs-7 col-md-10 col-sm-10" style="padding-top: 0px; padding-left: 0px">
												<div id="actionButton" class="problem">
													<input class="btn btn-primary btn-md btnm" name="markreview" id="markreview" value="Mark Review" onclick="markReview({{DATA.QUESTION_KEY}})"
														style="margin-right: 4px; margin-top: 10px; align: center;" type="button"><input class="btn btn-primary btn-md btns" name="savenext"
														id="savenext" value="Save &amp; Next" onclick="saveNext({{DATA.QUESTION_KEY}})" style="margin-right: 4px; margin-top: 10px; align: center;" type="button"><input
														class="btn btn-primary btn-md btnc" name="clear" id="clear" value="Clear" onclick="clearResponse()"
														style="margin-right: 4px; margin-top: 10px; align: center;" type="button">
												</div>
											</div>
											<div class="col-xs-5 col-md-2 col-sm-2" style="padding-top: 0px; padding-left: 0px">

												<a class="btn btn-primary btn-md btnss" id="actionSubmitBtn" style="margin-right: 4px; margin-top: 10px; align: center;"
													href="#" onclick="submitUserTest('testresult/CDTI{{DATA.TEST_ID}}');">Submit</a>

											</div>
											<!-- <input type="button" name="submitTest" id="submitTest" class="button_example_action" value="Submit Test"><%=request.getContextPath()%>/online-aptitude-test-in-english-and-hindi/testresult/CDTI{{DATA.TEST_ID}}</input> -->
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

 
      </div>
	</script>
<%--	
	 {{#ifCond this.id "==" ../DATA.CURRENT_CATEGORY}}
					    <li class="selectSubject"><a class="categoryLink" href="#" onclick="setCategory({{ this.id }},'{{../DATA.TEST_NAME}}')">{{ this.name }}</a></li>
					{{else}}
                       <li><a class="categoryLink" href="#" onclick="setCategory({{ this.id }},'{{../DATA.TEST_NAME}}')">{{ this.name }}</a></li>
                    {{/ifCond}} 
<div class="container" style="margin-top: 0px; margin-bottom: 60px;">
		<div class="row" style="border-bottom: 2px solid #e4e4e4; font-weight: bold;">
			<nav>
				<ul id="tblTestSubject" style="margin-bottom: 0px; margin-left: 20px" class="nav navbar-nav navbar-left responsive-nav main-nav-list">
					
					<li class="selectSubject"><a class="categoryLink" href="#" onclick="setCategory(3,'Coding Decoding-2')">RESONING</a></li>
					
				</ul>
			</nav>
		</div>
		<div class="row" style="min-height: 500px;">
			<div class="col-lg-12 col-sm-12" style="margin: 0px 0px 0px 0px;">
				<div class="container-fluid contentScreen">
					<div class="row">

						<div class="col-lg-12 col-sm-12" style="margin: 0px 0px 0px 0px;">
							<div id="loader" style="display: none;"></div>
							<div id="testaccessview" style="display: block;">
								<form id="usertestform">
									<div class="row">
										<div id="tblLanguageBar"></div>
									</div>
									<br>
									<div class="row">
										<div class="col-xs-9 col-md-9 col-sm-9">
											<div class="col-xs-6 col-md-6 col-sm-6" style="overflow-y: scroll; height: 450px; padding-left: 0px">
												<table style="margin-bottom: 10px">
													<tbody>
														<tr>
															<td>Sheela walks from A to B which is 2 km. away, turns right at 90° and walks for 3 km. to point C, turns right at 90° and walks to D
																which is 8 km. away, turns 90° right and goes 3 km. to point K. Then, once again she turns right, 90° and walks 4 km. to point F. How far
																is it from A to F ?</td>
															<td></td>
														</tr>
													</tbody>
												</table>

											</div>
											<div class="col-xs-6 col-md-6 col-sm-6">
												<div id="testView" style="font-family: 'Source Sans Pro', sans-serif; font-size: 16px; line-height: 1.45;">
													<div id="englishTestview">
														<table style="margin-bottom: 10px">
															<tbody>
																<tr>
																	<td>Sheela walks from A to B which is 2 km. away, turns right at 90° and walks for 3 km. to point C, turns right at 90° and walks to
																		D which is 8 km. away, turns 90° right and goes 3 km. to point K. Then, once again she turns right, 90° and walks 4 km. to point F. How
																		far is it from A to F ?</td>
																	<td></td>
																</tr>
															</tbody>
														</table>
														<table>
															<tbody>
																<tr style="margin-top: 10px">
																	<td></td>
																	<td><input name="optionid" value="297" type="radio"></td>
																	<td style="padding-left: 10px">2 km.</td>
																</tr>
																<tr style="margin-top: 10px">
																	<td></td>
																	<td><input name="optionid" value="298" type="radio"></td>
																	<td style="padding-left: 10px">4 km.</td>
																</tr>
																<tr style="margin-top: 10px">
																	<td></td>
																	<td><input name="optionid" value="299" type="radio"></td>
																	<td style="padding-left: 10px">6 km.</td>
																</tr>
																<tr style="margin-top: 10px">
																	<td></td>
																	<td><input name="optionid" value="300" type="radio"></td>
																	<td style="padding-left: 10px">8 km.</td>
																</tr>
																<tr style="margin-top: 10px">
																	<td></td>
																	<td><input name="optionid" value="5" type="radio"></td>
																	<td style="padding-left: 10px">None of these</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="col-xs-3 col-md-3" style="overflow-y: scroll; height: 450px; padding-left: 0px">
											<div id="selection">
												<input class="button_example_grey" style="margin-right: 4px" name="opt71" value="1" onclick="getQuestionOnKey(this.value)" disabled="disabled"
													type="button"><input class="button_example_white" style="margin-right: 4px" name="opt72" value="2"
													onclick="getQuestionOnKey(this.value)" type="button"><input class="button_example_white" style="margin-right: 4px" name="opt73"
													value="3" onclick="getQuestionOnKey(this.value)" type="button"><input class="button_example_white" style="margin-right: 4px"
													name="opt74" value="4" onclick="getQuestionOnKey(this.value)" type="button"><input class="button_example_white"
													style="margin-right: 4px" name="opt75" value="5" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt76" value="6" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt77" value="7" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt78" value="8" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt79" value="9" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt80" value="10" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt81" value="11" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt82" value="12" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt83" value="13" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt84" value="14" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt85" value="15" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt86" value="16" onclick="getQuestionOnKey(this.value)" type="button"><input
													class="button_example_white" style="margin-right: 4px" name="opt87" value="17" onclick="getQuestionOnKey(this.value)" type="button">
											</div>
										</div>
									</div>
									<hr>
									<div class="row">

										<input name="quekey" id="quekey" value="71" type="hidden"> <input name="nextkey" id="nextkey" value="72" type="hidden">


										<div id="mainContent" class="row">
											<div class="col-xs-7 col-md-10 col-sm-10" style="padding-top: 0px; padding-left: 0px">
												<div id="actionButton" class="problem">
													<input class="btn btn-primary btn-md btnm" name="markreview" id="markreview" value="Mark Review" onclick="markReview(71)"
														style="margin-right: 4px; margin-top: 10px; align: center;" type="button"><input class="btn btn-primary btn-md btns" name="savenext"
														id="savenext" value="Save &amp; Next" onclick="saveNext(71)" style="margin-right: 4px; margin-top: 10px; align: center;" type="button"><input
														class="btn btn-primary btn-md btnc" name="clear" id="clear" value="Clear" onclick="clearResponse()"
														style="margin-right: 4px; margin-top: 10px; align: center;" type="button">
												</div>
											</div>
											<div class="col-xs-5 col-md-2 col-sm-2" style="padding-top: 0px; padding-left: 0px">

												<a class="btn btn-primary btn-md btnss" style="margin-right: 4px; margin-top: 10px; align: center;"
													href="/CompetitiveDesk/online-aptitude-test-in-english-and-hindi/testresult/CDTI55">Submit</a>

											</div>
											<!-- <input type="button" name="submitTest" id="submitTest" class="button_example_action" value="Submit Test"></input> -->
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>   --%>

<%-- 	<jsp:include page="../footer.jsp"></jsp:include> --%>
<%-- 	<script
		src="<%=request.getContextPath()%>/new/js/jquery.knob.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/wow.min.js"></script> --%>
<%-- 	<script
		src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script> --%>
	<%-- <script
		src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script> --%>
	<%-- <script
		src="<%=request.getContextPath()%>/new/js/smoothscroll.js"></script> --%>
	<%-- <script
		src="<%=request.getContextPath()%>/new/js/jquery.vegas.min.js"></script> --%>


	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>

	<%-- <jsp:include page="../mainjs.jsp"></jsp:include>  --%>
</body>
</html>