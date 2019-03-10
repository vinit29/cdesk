
<%@page import="com.competitivedesk.common.cache.CompetitiveCache"%>
<%@page import="com.competitivedesk.entity.ApplicationConstant"%>
<%@page import="com.competitivedesk.entity.PurchaseOrder"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.application.config.WebAppInitializer"%>
<%@page import="com.competitivedesk.entity.UserMaster"%>
<%@page import="com.competitivedesk.common.util.CommonUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- TOP BAR -->

<%
						    int cart =0;
						    ApplicationContext applicationContext = WebAppInitializer.getApplicationContext();
						    CommonUtil commonUtil = applicationContext.getBean(CommonUtil.class);
						    CompetitiveCache compCache = applicationContext.getBean(CompetitiveCache.class);
						    UserMaster umasterObj = commonUtil.getUserMaster(request);
						    String sessionId = commonUtil.getSessionId(request);
						    ApplicationConstant appConstant = compCache.getApplicationConstant(ApplicationConstant.SITE_VERSION);
						    PurchaseOrder purchaseOrder = commonUtil.getPurchaseOrder(sessionId);
						    if(purchaseOrder != null){
						        cart = purchaseOrder.getPurchaseTransactions().size();
						    }
						   
						%>
<div id="main-nav" class="navbar navbar-inverse bs-docs-nav navbar-fixed-top" role="banner">
	<div class="container">
		<div class="navbar-header responsive-logo">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div class="navbar-brand">
			<%
				 if(!appConstant.getValue().equalsIgnoreCase("1")){   
								%> 
				<%-- <a href="<%=request.getContextPath()%>/online-aptitude-test">Competitive Desk</a> --%>
				<a href="<%=request.getContextPath()%>/docs-home">Competitive Desk</a>
				
				<% 
				}else{
				%> 
				<a href="<%=request.getContextPath()%>/study-docs">Competitive Desk</a>
				<% 
				 }
				%>
			</div>
		</div>
		<nav class="navbar-collapse collapse" role="navigation" id="bs-navbar-collapse">
		<%
								 if(!appConstant.getValue().equalsIgnoreCase("1")){   
								 
								 
								%> 
			<c:choose>
				<c:when test="${pageId != 2}">
					<ul class="nav navbar-nav navbar-right responsive-nav main-nav-list">
						
						<li class=""><a href="<%=request.getContextPath()%>/#home">Home</a></li>
						<%-- <li class=""><a href="<%=request.getContextPath()%>/#pricingtable">Pricing</a></li>
						<li class=""><a href="<%=request.getContextPath()%>/#aboutus">About Us</a></li>
						<li class=""><a href="<%=request.getContextPath()%>/#contact">Contact</a></li>
						<li class=""><a href="<%=request.getContextPath()%>/study-docs">Desk Docs</a></li> --%>
						<li class=""><a href="<%=request.getContextPath()%>/all-online-aptitude-test">All Test</a></li>
						<%
						  
						    if (umasterObj == null) {
						%>
						<li class=""><a href="<%=request.getContextPath()%>/auth/signin">Login</a></li>
						<%
						    } else {
						%>
						<li class="dropdown" style="background: transparent;">
						<a href="#" class="dropdown-toggle pointerIcon" data-toggle="dropdown"> <img src="<%=request.getContextPath()%>/images/settings3.png" class="setting-icon"></img></a>
							<ul class="dropdown-menu">
								<li><a href="<%=request.getContextPath()%>/testorder/cart">Cart &nbsp;&nbsp;&nbsp;<span class="badge" id="cartBadgeSize"><%=cart %></span></a></li>
								<li><a href="<%=request.getContextPath()%>/getusertransaction">My Transaction</a></li>
								
								<%
								 if(umasterObj.getUserType().getId() == 1){   
								%> 
								<li class="divider"></li>
								 <li><a href="<%=request.getContextPath()%>/online-test/addquestion">Add Question</a></li>
								<li><a href="<%=request.getContextPath()%>/online-test/addhindiquestion">Add Hindi Question</a></li>
								<li><a href="<%=request.getContextPath()%>/online-test/addtestpackage">1-Add Test Package</a></li>
								<li><a href="<%=request.getContextPath()%>/online-test/addsampletest">2-Add sample test</a></li>
								<li><a href="<%=request.getContextPath()%>/doc/webContentGen">Get DocGen</a></li>
								<li><a href="<%=request.getContextPath()%>/doc/webHtmlContentDocs">Static DocGen</a></li>
								          
								          
								<%} %>
								
								<%
								 if(umasterObj.getUserType().getId() == 9){   
								%> 
								<li class="divider"></li>
								 <li><a href="<%=request.getContextPath()%>/online-test/addquestion">Add Question</a></li>
								 <%} %>
								 
								<li class="divider"></li>
								<li><a href="<%=request.getContextPath()%>/auth/signout">LogOut</a></li>
							</ul>
					   </li>
					   	
					   <%
						    }
						%>
					</ul>
					
				</c:when>
			</c:choose>
			
			 <%
						    }
						%>
		</nav>
		
		<div class="alert alert-info alert-dismissable" id="cartrsuccessnotify" style="position: absolute;z-index: 99;display: none;width: 200px;left: 80%;right: 10px;">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                Item added to cart.
                            </div>
                       
	</div>
</div>


 