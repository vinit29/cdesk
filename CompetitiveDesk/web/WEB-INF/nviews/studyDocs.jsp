
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Aptitude Test - Online test for all competitive exams in english and hindi | competitivedesk.com</title>

<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bankerdesk.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/handlebars.js"></script> --%>
<script type="text/javascript">
	var baseUrl = "<%=request.getContextPath()%>";
	
	$( document ).ready(function() {
		$('.list-group-item').on('click', function() {
		    $('.glyphicon', this)
		      .toggleClass('glyphicon-chevron-right')
		      .toggleClass('glyphicon-chevron-down');
		  });
	});
	  
</script>
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/new/css/doc.css" />
<style>
.just-padding {
    padding: 15px;
}

.list-group.list-group-root {
    padding: 0;
    overflow: hidden;
}

.list-group.list-group-root .list-group {
    margin-bottom: 0;
}

.list-group.list-group-root .list-group-item {
    border-radius: 0;
    border-width: 1px 0 0 0;
}

.list-group.list-group-root > .list-group-item:first-child {
    border-top-width: 0;
}

.list-group.list-group-root > .list-group > .list-group-item {
    padding-left: 30px;
}

.list-group.list-group-root > .list-group > .list-group > .list-group-item {
    padding-left: 45px;
}

.list-group-item .glyphicon {
    margin-right: 5px;
}
</style>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-top: 110px; margin-bottom: 60px;">
	<form id="sortlinkform">
					<div id="sortlink" style="padding-bottom: 10px">
						<a style="text-decoration: none; margin-left: 50px;" href="<%=request.getContextPath()%>/">Home&nbsp;&nbsp;> </a> <a
							style="text-decoration: none;" class="anchorActive" href="#">&nbsp;&nbsp;${PGID}&nbsp;&nbsp;></a>
					</div>
				</form>
	
		<div class="row" style="min-height: 500px;">
			<div class="just-padding">
			<%-- 
			    <div class="list-group list-group-root well">
			            <a href="<%=request.getContextPath()%>/maths-trick/how-to-find-square-of-any-2-digit-numbers/1" class="list-group-item" target="_blank"><b>Square of any 2 digit numbers</b></a> 
			   
						<a href="<%=request.getContextPath()%>/maths-trick/how-to-solve-profit-and-loss-problems-using-shortcut-tricks-(type-1)/2" class="list-group-item" target="_blank"><b>Profit and Loss</b></a> 
				
				</div>
  --%>
              <div class="list-group list-group-root well">
                            <div class="list-group-item">
                                
                                <h2 style="font-weight: 100;font-size: 24px;color: #3399FF">Welcome in Competitive Desk Forum</h2>
                                <span>All Examples are easy to understand with important tricks to solve question easily and to increase your speed to solve lengthy and tricky questions..</span>
                            </div>
                        </div>
       
              <div class="list-group list-group-root well">
			            <c:forEach items="${doclist}" var="docs">
			            <c:set var="docstring" value="${docs.key}"/>
								
						<a href="#item-1-${fn:replace(docstring,' ','-')}" class="list-group-item" data-toggle="collapse"> <i class="glyphicon glyphicon-chevron-right"></i>${docs.key}<span style="float: right;color: #3399FF">Total posts: ${fn:length(docs.value)}</span>
						</a>
						
						
						<div class="list-group collapse" id="item-1-${fn:replace(docstring,' ','-')}">
						    <c:forEach items="${docs.value}" var="subdocs">
						     <c:set var="subdocstring" value="${subdocs.title}"/>
						 
						     <div class="forum-item active">
                                <div class="row" style="position: relative;margin-bottom: -1px;background-color: #fff;border: 0px solid #ddd;">
                                    <div class="col-md-2 col-sm-2">
                                     <div style="float: right;margin-top: 5px;margin-bottom: 5px;">
                                      <img alt="${purchaseTrans.testSample.userTestSample.name}" src="<%=request.getContextPath()%>/images/ibps_clerk.jpg" width="100px" height="50px" />
                                     </div>
                                    </div>
                                    <div class="col-md-9 col-sm-9" style="width:75%;position: relative;padding: 10px 15px;margin-bottom: -1px;background-color: #fff;border: 0px solid #ddd;text-align: left;padding-left: 8px;">
                                       <a href="<%=request.getContextPath()%>/${trick}-trick/${fn:replace(subdocstring,' ','-')}" target="_blank" style="font-size: 16px;">${subdocs.title}</a>
                                       
                                       <%-- <a href="<%=request.getContextPath()%>/maths-trick/${fn:replace(subdocstring,' ','-')}/${subdocs.docId}" target="_blank" style="font-size: 16px;">${subdocs.title}</a>
 --%>                                        <div class="forum-sub-title" style="font-size: 10px;color: #888888;"> <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${subdocs.updatedOn}" /></div>
                                    </div>
                                    
                                   
                                    <div class="col-md-1 col-sm-1 forum-info" style="padding: 10px 15px;">
                                        <span class="views-number" >
                                            ${subdocs.views}  <small>Views</small>
                                        </span>
                                       
                                    </div>
                                  
                                </div>
                            </div>
						   
							</c:forEach>
						</div>
						</c:forEach>
				</div>
     

			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/jquery.nav.js"></script>
	<script src="<%=request.getContextPath()%>/new/js/bootstrap.min.js"></script>
	<%-- <jsp:include page="mainjs.jsp"></jsp:include> --%>
</body>
</html>