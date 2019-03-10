
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Aptitude Test - Online test for all competitive exams in english and hindi | competitivedesk.com</title>

<jsp:include page="../maincss.jsp"></jsp:include>
<jsp:include page="../analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	$(document).ready(initiatUserTestMain);
</script>
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/testmainview.css" />
<style>

</style>
<body>

	<jsp:include page="../header.jsp"></jsp:include>
    
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">

                            
		<div class="row" style="min-height:500px;">
			<div class="loader"></div>


			     <form id="testmenumain" style="width:100%;margin-left:auto;margin-right:auto;display: inline-block;">
				<script id="myTestFrm-template" type="text/x-handlebars-template">
	      {{#each DATA}}
				<div class="col-lg-2 col-sm-2 boxData">
					<div class="wow">
						<div>
							<img src="<%=request.getContextPath()%>/images/{{ this.imagename }}"  alt="{{ this.name }}" title="{{ this.name }}"
								style="width: 100%; margin-bottom: 5px;" />
						</div>
						<div class="caption">
							<h4 class="testinfohead" style="margin-left: 5px;">{{ this.name }}</h4>

							<div class="row" style="margin: 2px 2px 2px 2px;">
						        <div class="col-lg-6 col-sm-6 boxInfo">{{#each this.language }}
                                    {{ this.name }} ,
                                 {{/each}}</div>
                                <div class="col-lg-6 col-sm-6 boxInfo">{{ this.duration }} </div>

							</div>
							
							<div class="row" style="margin: 2px 2px 2px 2px;">
						   <div class="col-lg-6 col-sm-6 boxInfo">{{ this.attempt }} Attempts</div>
                           <div class="col-lg-6 col-sm-6 boxInfo">2 day ago.</div>
							</div>
							
							<div class="row" style="margin: 2px 2px 2px 2px;">
								<div class="col-lg-5 col-sm-5 boxInfo">
									<a href="<%=request.getContextPath()%>/online-test/{{this.seoname}}/CDTI{{ this.testId }}U2" class="btn green-btn boxbtn">More</a>
								</div>
                                <div class="col-lg-1 col-sm-1 boxInfo"></div>
								{{#if this.isPurchased}}
                                 <div class="col-lg-6 col-sm-6 boxInfo">
                                   <a href="#" onclick="startUserTest({{ this.testId }}",{{ this.type }});" class="btn blue-btn boxbtn" style="margin: 10px 10px 0px 0px;">Start Test</a>
									
								</div>
								{{else}}
								
								<div class="col-lg-6 col-sm-6 boxInfo">
									<a href="#" class="btn blue-btn boxbtn" onclick="addToCart({{ this.testId }},'all-online-aptitude-test')">Add 2 Cart</a>
								</div>
								{{/if}}
					        </div>
						</div>
					</div>
				</div>
                 {{/each}}
	</script>

			</form>
	
		</div>
      

	</div>

	<jsp:include page="../footer.jsp"></jsp:include>

	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>

</body>
</html>