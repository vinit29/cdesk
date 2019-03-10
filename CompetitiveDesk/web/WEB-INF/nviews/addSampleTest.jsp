
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(addSampleTest);
</script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<h3>Add Sample Test</h3>
		<form id="addSampleTest">
			<div class="row">
				<div class="col-lg-6 col-sm-6" style="margin: 0px 0px 0px 0px;">
					<table>
						<tr id="que">
							<td>TestId :-<input type="hidden" name="id" /></td>
							<td> <div id="myUserTestSampleCtr-container"></div>

			<script id="myUserTestSampleCtr-template"
				type="text/x-handlebars-template">
 				
				<select name="testId" class="form-control">
							      <option value="0">---Select UserTestSample---</option>
                 {{#each DATA}}
                <option value="{{ this.testId }}">{{ this.name}}</option>
                {{/each}}
                 </select>
				</script>
							 <!-- <input type="text" name="testId" class="form-control" /> --><input
								type="button" value="search" name="sampletestsearch" /></td>
							<td></td>
						</tr>
						
						<tr id="que">
					       <td>Test Package:-</td>
					       <td><div id="myTestPackageCtr-container"></div>

			<script id="myTestPackageCtr-template"
				type="text/x-handlebars-template">
 				
				<select name="testpackage" class="form-control">
							      <option value="0">---Select Test Package---</option>
                 {{#each DATA}}
                <option value="{{ this.id }}">{{ this.name}}</option>
                {{/each}}
                 </select>
				</script>
				
					           </td>
					      <td></td>
				       </tr>
						<tr id="que">
							<td>Type :-</td>
							<td><input type="text" name="testType" class="form-control"
								placeholder="1 or 2" /></td>
							<td></td>
						</tr>
						<tr id="que">
							<td>Price Per Unit :-</td>
							<td><input type="text" name="price" class="form-control"/></td>
							<td></td>
						</tr>
						<tr id="que">
							<td>Name :-</td>
							<td><input type="text" name="name" class="form-control" /></td>
							<td></td>
						</tr>

						<tr id="que">
							<td>Duration :-</td>
							<td><input type="text" name="duration" class="form-control" /></td>
							<td></td>
						</tr>
                        
					</table>
				</div>

				<div class="col-lg-6 col-sm-6" style="margin: 0px 0px 0px 0px;">

					<table>
						<tr id="opt">
							<td>Attempt</td>
							<td><input type="text" name="attempt" class="form-control" /></td>
							<td></td>
						</tr>
						<tr id="opt">
							<td>Image</td>
							<td><input type="text" name="imagename" class="form-control" /></td>
							<td></td>
						</tr>

						<tr id="opt">
							<td>Language</td>
							<td><input type="text" name="language" class="form-control"
								placeholder="1 or 2" /></td>
							<td></td>
						</tr>

						<!-- <tr id="que">
							<td>Subject :-</td>
							<td><input type="checkbox" id="subjectSet"
								name="subjectSet" value="1" />Maths <input type="checkbox"
								id="subjectSet" name="subjectSet" value="2" />English <input
								type="checkbox" id="subjectSet" name="subjectSet" value="3" />Reasoning
								<input type="checkbox" id="subjectSet" name="subjectSet"
								value="4" />GK <input type="checkbox" id="subjectSetBox"
								name="subjectSet" value="5" />Computer</td>
							<td></td>
						</tr> -->
						<tr id="que">
							<td>Subject :-</td>
							<td><input type="checkbox" id="subjectSet"
								name="subjectSet" value="1" />Maths <input type="checkbox"
								id="subjectSet" name="subjectSet" value="2" />English <input
								type="checkbox" id="subjectSet" name="subjectSet" value="3" />Reasoning
								<input type="checkbox" id="subjectSet" name="subjectSet"
								value="4" />GK <input type="checkbox" id="subjectSet"
								name="subjectSet" value="5" />Computer</td>
							<td></td>
						</tr>

						<tr id="que">
							<td>Discription :-</td>
							<td><textarea rows="5" cols="20" id="discription"
									class="form-control" name="discription"></textarea></td>
							<td></td>
						</tr>

					</table>


					<div>
						<input type="button" value="AddSampleTest" name="sampletestadd" />
					</div>
				</div>
			</div>
			<br>
			<hr>
			
			
			 <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#MATHS">MATHS</a></li>
    <li><a data-toggle="tab" href="#ENGLISH">ENGLISH</a></li>
    <li><a data-toggle="tab" href="#REASONING">REASONING</a></li>
    <li><a data-toggle="tab" href="#GK">GK</a></li>
     <li><a data-toggle="tab" href="#COMPUTER">COMPUTER</a></li>
  </ul>

 
			<div id="mytestquestion-container">
			
			<!-- <table class="table table-striped" id="tbl">
                <thead>
               <tr>
						<th style=""></th>
						<th style="">Questions</th>
						<th style=""></th>
					</tr>
                </thead>
                <tbody>
                {{#each DATA}}
                <tr class="texthover" name="testQuestion">
                    <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.id }}"/> </td>
                    <td>{{ this.question }}</td>
                  <td>{{ this.categoryid}}</td>
                </tr>
                {{/each}}
                </tbody>
            </table> -->
			
			</div>

			<script id="myTestQuestionFrm-template"
				type="text/x-handlebars-template">
 				
				





<div class="tab-content">
    <div id="MATHS" class="tab-pane fade in active">
     
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.MATHS}}
				<tr class="texthover" name="testQuestion">
					 <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queOptObj.[0].question.id }}"/> </td>
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
                 
                
              {{/each}}
			</table></p>
    </div>
    <div id="ENGLISH" class="tab-pane fade">
    
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.ENGLISH}}
				<tr class="texthover" name="testQuestion">
					 <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queOptObj.[0].question.id }}"/> </td>
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
                 
                
              {{/each}}
			</table></p>
    </div>
    <div id="REASONING" class="tab-pane fade">
    
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.REASONING}}
				<tr class="texthover" name="testQuestion">
					 <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queOptObj.[0].question.id }}"/> </td>
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
                 
                
              {{/each}}
			</table></p>
    </div>
    <div id="GK" class="tab-pane fade">
     
     <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.GK}}
				<tr class="texthover" name="testQuestion">
					 <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queOptObj.[0].question.id }}"/> </td>
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
                 
                
              {{/each}}
			</table></p>
    </div>
     <div id="COMPUTER" class="tab-pane fade">
     
      <p>
			<table border="0" class="table table-striped" id="tbl">
			
              {{#each DATA.COMPUTER}}
				<tr class="texthover" name="testQuestion">
					 <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.queOptObj.[0].question.id }}"/> </td>
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
                 
                
              {{/each}}
			</table></p>
    </div>
  </div>	



				</script>


		</form>


	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<%-- <jsp:include page="mainjs.jsp"></jsp:include> --%>
</body>
</html>