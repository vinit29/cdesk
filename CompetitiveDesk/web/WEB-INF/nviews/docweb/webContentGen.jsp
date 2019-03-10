<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.application.config.WebAppInitializer"%>
<%@page import="com.competitivedesk.entity.UserMaster"%>
<%@page import="com.competitivedesk.common.util.CommonUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	$(document).ready(generateControllerHtml);
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
</style>

<body>
	<%
		int cart = 0;
		ApplicationContext applicationContext = WebAppInitializer
				.getApplicationContext();
		CommonUtil commonUtil = applicationContext
				.getBean(CommonUtil.class);
		UserMaster umasterObj = commonUtil.getUserMaster(request);
	%>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<div class="row" style="min-height: 500px;">
			<div class="col-sm-2">
				<div id="controlClass">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Controls</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row"><a href="#" id="anchor" name="anchor">anchor</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="paragraph" name="paragraph">Paragraph</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="nbsps" name="nbsps">@nbsp;</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="input-text"
									name="input-text">input-text</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="horizontal"
									name="horizontal">hr</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="table" name="table">table</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="head2" name="head2">h2</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="head3" name="head3">h3</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="head4" name="head4">h4</a></th>
							</tr>
							<tr>
								<th scope="row"><a href="#" id="head5" name="head5">h5</a></th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="col-sm-9">

				<form id="controlFrm">
					<div class="row">

						<div class="col-xs-6">
							<b> Category Type :-</b><br>
							<select name="category" id="category" class="form-control" onchange="getDataOnCategory(this.value);"
								style="width: auto;">
								<option value="0">--- Select ---</option>
								<option value="1">Maths</option>
								<option value="2">English</option>
								<option value="3">Reasoning</option>
								<option value="4">GK</option>
								<option value="5">Computer</option>
							</select>
						</div>

						<div class="col-xs-6">
							<div id="mydocsubcategory-container"></div>
						</div>

					</div>
					<div class="row">
						<div class="col-xs-3">
							<label for="usr">Doc Id:</label>
							<div id="mydocs-container"></div>
							<!-- <input type="text" class="form-control" id="docid" name="docid" /> -->
						</div>

						<div class="col-xs-3">
							<label for="usr">Title:</label> <input type="text"
								class="form-control" id="docTitle" name="docTitle" />
						</div>

						<div class="col-xs-3">
							<label for="usr">Next link:</label> <input type="text"
								class="form-control" id="docNext" name="docNext" />
						</div>


						<div class="col-xs-3">
							<label for="usr">Previous Link:</label> <input type="text"
								class="form-control" id="docPrev" name="docPrev" />
						</div>

						<div class="col-xs-3">
							<label for="usr">Other:</label>
							<textarea type="text" class="form-control" id="docOther"
								name="docOther"></textarea>
						</div>
					</div>

					<input type="button" name="submitbtn" value="Appand" /> <input
						type="button" name="insertbtn" value="Save" /> <input
						type="button" name="getWebContentbtn" value="Search" />

					<div id="controlDoc" class="el">
						<br>

					</div>
					<br> <br>
					<!-- <div id="controlText">
						<textarea rows="10" cols="90" name="pgraphtext"></textarea>
					</div> -->
					<hr>

					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#MATHS">MATHS</a></li>
						<li><a data-toggle="tab" href="#ENGLISH">ENGLISH</a></li>
						<li><a data-toggle="tab" href="#REASONING">REASONING</a></li>
						<li><a data-toggle="tab" href="#GK">GK</a></li>
						<li><a data-toggle="tab" href="#COMPUTER">COMPUTER</a></li>
					</ul>

                    
					<div id="questionbysubcategory-container"></div>

					<script id="questionbysubcategory-template"
						type="text/x-handlebars-template">
 	<div class="tab-content">
    <div id="MATHS" class="tab-pane fade in active">
     
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.MATHS}}
				<tr>
					<td><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queObj.id }}" /></td>
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                 [{{this.queOptObj.[0].question.testRef}}] {{{@key}}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                 [{{this.queOptObj.[0].question.testRef}}] {{{@key}}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{{ this.options.value }}} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{{ this.answerObj.questionOptionMapping.options.value }}}</label>	]</td>
                </tr>
                 
               
              {{/each}}
			</table></p>
    </div>
    <div id="ENGLISH" class="tab-pane fade">
    
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.ENGLISH}}
				<tr>
					<td><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queObj.id }}" /></td>
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                  {{{@key}}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                  {{{@key}}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{{ this.options.value }}} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{{ this.answerObj.questionOptionMapping.options.value }}}</label>	]</td>
                </tr>
                 
              
              {{/each}}
			</table></p>
    </div>
    <div id="REASONING" class="tab-pane fade">
    
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.REASONING}}
				<tr>
					<td><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queObj.id }}" /></td>
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                  {{{@key}}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                  {{{@key}}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{{ this.options.value }}} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{{ this.answerObj.questionOptionMapping.options.value }}}</label>	]</td>
                </tr>
                 
               
              {{/each}}
			</table></p>
    </div>
    <div id="GK" class="tab-pane fade">
     
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.GK}}
				<tr>
					<td><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queObj.id }}" /></td>
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                  {{{@key}}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                  {{{@key}}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{{ this.options.value }}} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{{ this.answerObj.questionOptionMapping.options.value }}}</label>	]</td>
                </tr>
                 
              
              {{/each}}
			</table></p>
    </div>
     <div id="COMPUTER" class="tab-pane fade">
     
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.COMPUTER}}
				<tr>
					<td><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queObj.id }}" /></td>
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                  {{{@key}}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                  {{{@key}}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{{ this.options.value }}} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{{ this.answerObj.questionOptionMapping.options.value }}}</label>	]</td>
                </tr>
                 
               
              {{/each}}
			</table></p>
    </div>
  </div>	
				
				</script>

				</form>
			</div>
			<div class="col-sm-1"></div>
		</div>

	</div>

	<jsp:include page="../footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script id="mydocsubcategory-template"
		type="text/x-handlebars-template">
 			
			
				<b>Question Category Type :-</b><br>
                   <select name="q_cat" id="q_cat"  class="form-control" onchange="onSelectSubCategory(this.value);">
							<option value="0">---Select Category Type---</option>
							{{#each DATA}}
							<option value="{{ this.id }}">{{ this.name }}</option>
						   {{/each}}
					</select>
			
		</script>

	<script id="mydocs-template" type="text/x-handlebars-template">
 			
			
				
                   <select  id="docid" name="docid"  class="form-control" onchange="onSelectGetDocument(this.value);">
							<option value="0">---Select Document---</option>
							{{#each DATA}}
							<option value="{{ this.docId }}">{{ this.title }}</option>
						   {{/each}}
					</select>
			
		</script>
	<%-- <jsp:include page="../mainjs.jsp"></jsp:include> --%>
</body>
</html>