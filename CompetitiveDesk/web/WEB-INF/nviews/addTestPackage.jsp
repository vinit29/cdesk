
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
	$(document).ready(addTestPackage);
</script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
		<h3>Add Test Packages</h3>
		<form id="addTestPackage">
			<div class="row">
			

				<div class="col-lg-12 col-sm-12" style="margin: 0px 0px 0px 0px;">

					<table>
					    <tr id="que">
							<td>Name :-</td>
							<td><input type="text" name="name" class="form-control" /></td>
							<td></td>
						</tr>
						<tr id="opt">
							<td>Popularity</td>
							<td><input type="text" name="popularity" class="form-control" /></td>
							<td></td>
						</tr>
						<tr id="opt">
							<td>Image</td>
							<td><input type="text" name="imagename" class="form-control" /></td>
							<td></td>
						</tr>

						<tr id="opt">
							<td>Status</td>
							<td><input type="text" name="status" class="form-control"
								placeholder="1 or 2" /></td>
							<td></td>
						</tr>

						<tr id="que">
							<td>Discription :-</td>
							<td><textarea rows="5" cols="20" id="description"
									class="form-control" name="description"></textarea></td>
							<td></td>
						</tr>

					</table>


					<div>
						<input type="button" value="AddTestPackage" name="testpackageadd" />
					</div>
				</div>
			</div>
			<br>
			<hr>
			<div id="mytestpackage-container"></div>

			<script id="myTestPackageFrm-template"
				type="text/x-handlebars-template">
 				
				<table class="table table-striped" id="tbl">
                <thead>
               <tr>
						<th style=""></th>
						<th style="">Test Packages</th>
						<th style=""></th><th style=""></th>
					</tr>
                </thead>
                <tbody>
                {{#each DATA}}
                <tr class="texthover" name="testPackage">
                    <td id="queId"><input type="checkbox" id="chkQueqIdBox" name="chkQueqIdBox" value="{{ this.id }}"/> </td>
                    <td>{{ this.name}}</td>
                  <td>{{ this.popularity}}</td> <td></td>
                </tr>
                {{/each}}
                </tbody>
            </table>
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