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

<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(addHindiQuestionAndOption);
</script>

</head>
<style>
  .tdclass{
      padding: 10px;
  } 
</style>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
        <h3>Add Hindi question </h3>
		<div id="mytestquestion-container"></div>

		<script id="myTestQuestionFrm-template" type="text/x-handlebars-template">
 			
			<form id="getquestionoption">
				<br>
                   <select name="mainQuesion" onchange="onMainQuesionChange(this.value)">
							<option value="0">---Select Question---</option>
							{{#each DATA}}
							<option value="{{ this.id }}">{{ this.question }}</option>
						   {{/each}}
					</select>
			</form>
		</script>
		<form id="addhindiquestionoption">
			<div id="mytestquestionenglishInfo-container"></div>

			<script id="myTestQuestionEnglishInfo-template" type="text/x-handlebars-template">

			<table>
			
				<tr id="que">
					<td>Question :-</td>
					<td><label name="questionEng">{{ DATA.queOptObj.[0].question.question }}</label></td>
					<td></td>
				</tr>
				<tr id="que">
					<td>Category :-</td>
					<td><label name="categoryEng">{{ DATA.queOptObj.[0].question.category.name }}</label></td>
					<td></td>
				</tr>
 			
           {{#each DATA.queOptObj}}
				<tr id="que">
					<td>Options :-</td>
					<td><label class="optionsEng" name="optEng{{ this.options.id }}">{{ this.options.value }}</td>
					<td></td>
				</tr>
			{{/each}}
			</table>
			 AnswerID : <input type="text" id="answerId" name="answerId" value="{{ DATA.answerObj.questionOptionMapping.options.id }}" />
				<label id="questionEng"> value : -{{ DATA.answerObj.questionOptionMapping.options.value }}</label>			
</script>
			<hr>
			<input type="hidden" id="questionId" name="questionId" />

			<table>
				<tr id="que">
					<td>Question :-</td>
					<td><div class="ui-widget">
							<textarea rows="4" cols="80" id="question" name="question"></textarea>

						</div></td>
					<td></td>
				</tr>
				<tr id="que">
					<td>Category :-</td>
					<td><select name="category">
							<option value="0">---Select Category---</option>
							<option value="1">Maths</option>
							<option value="2">English</option>
							<option value="3">Reasoning</option>
							<option value="4">GK</option>
							<option value="5">Computer</option>
					</select></td>
					<td></td>
				</tr>

			</table>
			<hr>

			<table>
				<tr id="opt">
					<td>Option 1 :-</td>
					<td class="tdclass"><input type="text" name="opt1" /></td>
					<td><input type="checkbox" id="opt1" name="answer" /></td>
				</tr>
				<tr id="opt">
					<td>Option 2 :-</td>
					<td class="tdclass"><input type="text" name="opt2" /></td>
					<td><input type="checkbox" id="opt2" name="answer" /></td>
				</tr>
				<tr id="opt">
					<td>Option 3 :-</td>
					<td class="tdclass"><input type="text" name="opt3" /></td>
					<td><input type="checkbox" id="opt3" name="answer" /></td>
				</tr>
				<tr id="opt">
					<td>Option 4 :-</td>
					<td class="tdclass"><input type="text" name="opt4" /></td>
					<td><input type="checkbox" id="opt4" name="answer" /></td>
				</tr>
				<tr id="opt">
					<td>Option 5 :-</td>
					<td class="tdclass"><input type="text" name="opt5" /></td>
					<td><input type="checkbox" id="opt5" name="answer" /></td>
				</tr>
				<tr id="opt">
					<td>Option 6 :-</td>
					<td class="tdclass"><input type="text" name="opt6" /></td>
					<td><input type="checkbox" id="opt6" name="answer" /></td>
				</tr>
				<tr id="opt">
					<td>None of this :-</td>
					<td class="tdclass"><input type="checkbox" name="none" /></td>
					<td></td>
				</tr>

			</table>
			<div>
				<input type="button" value="AddHindiQuestionOption" name="hindiquestionoption" />
			</div>
		</form>
	</div>
   <jsp:include page="footer.jsp"></jsp:include>
<script
		src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script
		src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<%-- <jsp:include page="mainjs.jsp"></jsp:include> --%>
</body>
</html>