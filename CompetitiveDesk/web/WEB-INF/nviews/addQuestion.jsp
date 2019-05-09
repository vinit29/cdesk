
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<!-- <script src="//cdn.ckeditor.com/4.9.2/full/ckeditor.js"></script> -->
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-autocomplete-ui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/autocomplete.css" />
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(addQuestionAndOption);
	
	$('#addquestionoption input[type=text]').each(function(){
		$(this).val('');
	});
	$('#addquestionoption input[type=checkbox]').each(function(){
		$(this).removeAttr('checked');
	});
</script>
<script type="text/javascript">
	$(function() {
		var availableTags = [ "ActionScript", "AppleScript", "Asp", "BASIC",
				"C", "C++", "Clojure", "COBOL", "ColdFusion", "Erlang",
				"Fortran", "Groovy", "Haskell", "Java", "JavaScript", "Lisp",
				"Perl", "PHP", "12", "Python", "11234", "1633", "Ruby",
				"Scala", "Scheme" ];
		$("#question").autocomplete({
			source : availableTags
		});
	});
</script>
</head>
<style>
  .tdclass{
      padding: 10px;
  } 
</style>
<body>
	<%
						    int cart =0;
						    ApplicationContext applicationContext = WebAppInitializer.getApplicationContext();
						    CommonUtil commonUtil = applicationContext.getBean(CommonUtil.class);
						    UserMaster umasterObj = commonUtil.getUserMaster(request);
						   
						    
						%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
	   <h3>Add Question </h3>
		<form id="addquestionoption">
			
			<div class="row">
				<div class="col-lg-6 col-sm-6" style="margin: 0px 0px 0px 0px;">
                        <input type="hidden" name="q_id" id="q_id" />
					<table>
					     <tr id="que">
							<td>
							
									<div id="myheading-container"></div>

		<script id="myheading-template" type="text/x-handlebars-template">
 			
			
				<b>Question Heading :-</b><br>
                   <select name="heading" id="heading">
							<option value="0">---Select Heading---</option>
							{{#each DATA}}
							<option value="{{ this.id }}">{{ this.heading }}</option>
						   {{/each}}
					</select>
			
		</script>
							               
								</td>
								<td style="width: 20px;"></td>
						   
						</tr>
					    <tr id="que">
							<td>
							
									<div id="mydocsubcategory-container"></div>

		<script id="mydocsubcategory-template" type="text/x-handlebars-template">
 			
			
				<b>Question Category Type :-</b><br>
                   <select name="q_cat" id="q_cat">
							<option value="0">---Select Category Type---</option>
							{{#each DATA}}
							<option value="{{ this.id }}">{{ this.name }}</option>
						   {{/each}}
					</select>
			
		</script>
							               
								</td>
								<td style="width: 20px;"></td>
						   
						</tr>
					     
					
						<tr id="que">
							<td><b>Category :-</b><br> <select name="category" id="category"  class="form-control" >
												<option value="1">Maths</option>
												<option value="2">English</option>
												<option value="3">Reasoning</option>
												<option value="4">GK</option>
												<option value="5">Computer</option>
							                 </select>
							               
								</td>
								<td style="width: 20px;"></td>
						</tr>
						<tr>		
						      <td><b>Question Test From :-</b><br> <input type="text"
								name="testRef"  id="testRef" class="form-control" placeholder="Ref book(MH-M-1-6)" />
							</td>
							</tr>
							<tr>
							
							<td><!-- <b>Status(OK : <b>1</b> / NotOk <b>0</b>) :-</b><br> --> <input type="hidden" name="status" id="status"
								class="form-control" value="2" placeholder="1-0" /></td>
							
						</tr>
						<tr id="que">
							<td colspan="5"><b>Question :-</b><br>
								<div class="ui-widget">
									<textarea rows="5" cols="40" id="question" name="question"
										class="form-control"></textarea>
									<!-- <input type="text" id="question" name="question" class="form-control" /> -->
									<!-- <input type="text" id="questionhindi" name="questionhindi"> -->
								</div>
								<hr></td>
								
								

						</tr>
						
						<tr id="que">
							<td colspan="5"><b>Common Info  :-</b><br>
								<div>
									<textarea rows="5" cols="40" id="commonInfo" name="commonInfo"
										class="form-control"></textarea>
									<!-- <input type="text" id="question" name="question" class="form-control" /> -->
									<!-- <input type="text" id="questionhindi" name="questionhindi"> -->
								</div>
								</td><td></td>
<td colspan="5"><b>Solution :-</b><br>
								<div class="ui-widget">
									<textarea rows="5" cols="40" id="solution" name="solution"
										class="form-control"></textarea>
							
								</div>
								</td>
						</tr>
						
						
						
					</table>
				</div>
				
				<div class="col-lg-6 col-sm-6" style="margin: 0px 0px 0px 0px;">
				
			 <table>
				
				<tr id="opt">
					<td></td>
					<td>Options</td>
					<td>Correct Answer</td>
				</tr>
				<tr id="opt">
					<td>Option 1 :-</td>
					<td class="tdclass"><input type="text" name="opt1" id="INopt1"  class="form-control"/>
					    <!-- <input type="hidden" name="hdnINopt1" id="hdnINopt1"/> -->
					 </td>
					<td><input type="checkbox" id="opt1" name="answer"/><br></td>
				</tr>
				<tr id="opt">
					<td>Option 2 :-</td>
					<td class="tdclass"><input type="text" name="opt2" id="INopt2"  class="form-control"/>
					 <!-- <input type="hidden" name="hdnINopt2" id="hdnINopt2"/> -->
					 </td>
					<td><input type="checkbox" id="opt2" name="answer" /><br></td>
				</tr>
				<tr id="opt">
					<td>Option 3 :-</td>
					<td class="tdclass"><input type="text" name="opt3" id="INopt3" class="form-control" /> 
					<!-- <input type="hidden" name="hdnINopt3" id="hdnINopt3"/> -->
					 </td>
					<td><input type="checkbox" id="opt3" name="answer" /><br></td>
				</tr>
				<tr id="opt">
					<td>Option 4 :-</td>
					<td class="tdclass"><input type="text" name="opt4" id="INopt4" class="form-control" /> 
					<!-- <input type="hidden" name="hdnINopt4" id="hdnINopt4"/> -->
					 </td>
					<td><input type="checkbox" id="opt4" name="answer" /><br></td>
				</tr>
				<tr id="opt" name="OP5">
					<td>Option 5 :-</td>
					<td class="tdclass"><input type="text" name="opt5" id="INopt5"  class="form-control"/> 
					<!-- <input type="hidden" name="hdnINopt5" id="hdnINopt5"/> -->
					 </td>
					<td><input type="checkbox" id="opt5" name="answer" /><br></td>
				</tr>
				
				<tr id="opt">
					<td>None of this :-</td>
					<td class="tdclass"><select name="none" id="IN_none"  class="form-control" >
												<option value="0">Select</option>
												<option value="1">None Of This</option>
												<option value="5">Option 5</option>
												
							                 </select>
					
					<!-- <input type="checkbox" name="none" id="IN_none" class="form-control" />  -->
					<!-- <input type="hidden" name="hdnIN_none" id="hdnIN_none"/> -->
					 </td>
					<td><input type="checkbox" id="none" name="answer" /><br></td>
				</tr>
				<!-- <tr id="btn">
					<td></td>
					<td></td>
					<td><input type="button" value="ADD" name="optionadd"  class="form-control"/></td>
				</tr> -->
				<!-- <tr id="opt">
				<td>Option :-</td>
				<td><input type="text" name="option" /></td>
				<td><input type="button" value="ADD" name="optionadd" /></td>
			</tr> -->
			</table>
				</div>
			</div>
			
			
<!-- <table>
<tr>
						<textarea rows="5" cols="40" id="editor1" name="editor1"
										class="form-control"></textarea>
<script>
			CKEDITOR.replace( 'editor1' );
		</script>
</tr>
</table> -->




		
			<div>
				<input type="button" value="ADDQuestionOption" name="questionoption" class="form-control" style="width: 150px;"/><br>
			</div>
			<hr>
			
			 <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#MATHS">MATHS</a></li>
    <li><a data-toggle="tab" href="#ENGLISH">ENGLISH</a></li>
    <li><a data-toggle="tab" href="#REASONING">REASONING</a></li>
    <li><a data-toggle="tab" href="#GK">GK</a></li>
     <li><a data-toggle="tab" href="#COMPUTER">COMPUTER</a></li>
  </ul>

 
			<div id="question-option-container"></div>

		<script id="question-option-template" type="text/x-handlebars-template">
 	<div class="tab-content">
    <div id="MATHS" class="tab-pane fade in active">
     
      <p>
			<table border="0">
			
              {{#each DATA.MATHS}}
				<tr>
					
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                 [{{this.queOptObj.[0].question.testRef}}] {{{@key}}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}}[{{this.queOptObj.[0].question.testRef}}] {{{@key}}}{{/replace}}{{/replace}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{{ this.options.value }}} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{{ this.answerObj.questionOptionMapping.options.value }}}</label>	]</td>
                </tr>
                 <tr>
                <td>
                   {{this.queOptObj.[0].question.solution}}
                </td>
				</tr>
                <tr>
                   <td><input type="button" id="editQuestion" name="{{ this.queObj.id }}" value="Edit"  onclick="onQuestionEditBtnClick({{ this.queObj.id }});" />
                   
                 <%
					 if(umasterObj.getUserType().getId() == 1){   
								%> 
                {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                 <input type="button" id="liveQuestion" name="{{ this.queObj.id }}" value="ok"  onclick="onQuestionOkBtnClick({{ this.queObj.id }});" />
                   {{/ifCond}}
                  <input type="button" id="deleteQuestion" name="{{ this.queObj.id }}" value="Delete"  onclick="onQuestionDeleteBtnClick({{ this.queObj.id }});" /><br><hr></td>
                <%
                   }
                   %>

                </tr>
              {{/each}}
			</table></p>
    </div>
    <div id="ENGLISH" class="tab-pane fade">
    
      <p>
			<table border="0">
			
              {{#each DATA.ENGLISH}}
				<tr>
					
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{ this.options.value }} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{ this.answerObj.questionOptionMapping.options.value }}</label>	]</td>
                </tr>
                   <tr>
                <td>
                   {{this.queOptObj.[0].question.solution}}
                </td>
				</tr>
                <tr>
                   <td><input type="button" id="editQuestion" name="{{ this.queObj.id }}" value="Edit"  onclick="onQuestionEditBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   <%if(umasterObj.getUserType().getId() == 1)  
                   {
                     %>
                {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                 <td><input type="button" id="liveQuestion" name="{{ this.queObj.id }}" value="ok"  onclick="onQuestionOkBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   {{/ifCond}}
                  <td><input type="button" id="deleteQuestion" name="{{ this.queObj.id }}" value="Delete"  onclick="onQuestionDeleteBtnClick({{ this.queObj.id }});" /><br><hr></td>
                <%
                   }
                   %>

                </tr>
              {{/each}}
			</table></p>
    </div>
    <div id="REASONING" class="tab-pane fade">
    
      <p>
			<table border="0">
			
              {{#each DATA.REASONING}}
				<tr>
					
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{ this.options.value }} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{ this.answerObj.questionOptionMapping.options.value }}</label>	]</td>
                </tr>
                   <tr>
                <td>
                   {{this.queOptObj.[0].question.solution}}
                </td>
				</tr>
                <tr>
                   <td><input type="button" id="editQuestion" name="{{ this.queObj.id }}" value="Edit"  onclick="onQuestionEditBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   <%if(umasterObj.getUserType().getId() == 1)  
                   {
                     %>
                {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                 <td><input type="button" id="liveQuestion" name="{{ this.queObj.id }}" value="ok"  onclick="onQuestionOkBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   {{/ifCond}}
                  <td><input type="button" id="deleteQuestion" name="{{ this.queObj.id }}" value="Delete"  onclick="onQuestionDeleteBtnClick({{ this.queObj.id }});" /><br><hr></td>
                <%
                   }
                   %>

                </tr>
              {{/each}}
			</table></p>
    </div>
    <div id="GK" class="tab-pane fade">
     
      <p>
			<table border="0">
			
              {{#each DATA.GK}}
				<tr>
					
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{ this.options.value }} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{ this.answerObj.questionOptionMapping.options.value }}</label>	]</td>
                </tr>
                   <tr>
                <td>
                   {{this.queOptObj.[0].question.solution}}
                </td>
				</tr>
                <tr>
                   <td><input type="button" id="editQuestion" name="{{ this.queObj.id }}" value="Edit"  onclick="onQuestionEditBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   <%if(umasterObj.getUserType().getId() == 1)  
                   {
                     %>
                {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                 <td><input type="button" id="liveQuestion" name="{{ this.queObj.id }}" value="ok"  onclick="onQuestionOkBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   {{/ifCond}}
                  <td><input type="button" id="deleteQuestion" name="{{ this.queObj.id }}" value="Delete"  onclick="onQuestionDeleteBtnClick({{ this.queObj.id }});" /><br><hr></td>
                <%
                   }
                   %>

                </tr>
              {{/each}}
			</table></p>
    </div>
     <div id="COMPUTER" class="tab-pane fade">
     
      <p>
			<table border="0">
			
              {{#each DATA.COMPUTER}}
				<tr>
					
                  {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                    <td style="color: red;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
                  {{#ifCond this.queOptObj.[0].question.status.id '==' 1}}
                    <td style="color: blue;">
                 {{#replace "/n" "</br>"}}   {{#replace " " "&nbsp;&nbsp;&nbsp;"}} {{@key}}{{/replace}}{{/replace}}
               {{/ifCond}} 
					 <b>Options :-</b> &nbsp;&nbsp
           				  {{#each this.queOptObj}}
                                
				    			{{ this.options.value }} &nbsp;&nbsp, &nbsp;&nbsp
			 			 {{/each}}
	
                   [ AnswerID : {{ this.answerObj.questionOptionMapping.options.id }} &nbsp;&nbsp;
                   
					<label id="questionEng"> Answer : -{{ this.answerObj.questionOptionMapping.options.value }}</label>	]</td>
                </tr>
                   <tr>
                <td>
                   {{this.queOptObj.[0].question.solution}}
                </td>
				</tr>
                <tr>
                   <td><input type="button" id="editQuestion" name="{{ this.queObj.id }}" value="Edit"  onclick="onQuestionEditBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   <%if(umasterObj.getUserType().getId() == 1)  
                   {
                     %>
                {{#ifCond this.queOptObj.[0].question.status.id '!=' 1}}
                 <td><input type="button" id="liveQuestion" name="{{ this.queObj.id }}" value="ok"  onclick="onQuestionOkBtnClick({{ this.queObj.id }});" /><br><hr></td>
                   {{/ifCond}}
                  <td><input type="button" id="deleteQuestion" name="{{ this.queObj.id }}" value="Delete"  onclick="onQuestionDeleteBtnClick({{ this.queObj.id }});" /><br><hr></td>
                <%
                   }
                   %>

                </tr>
              {{/each}}
			</table></p>
    </div>
  </div>	
				
				</script>

		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript">
	$("tr[name=OP5]").hide();
	</script>
<script
		src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
<%-- 	<jsp:include page="mainjs.jsp"></jsp:include> --%>
</body>
</html>