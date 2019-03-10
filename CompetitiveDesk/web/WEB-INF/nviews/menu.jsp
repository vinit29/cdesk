<%@page import="com.competitivedesk.dao.UserMasterDao"%>
<%@page import="com.application.config.WebAppInitializer"%>
<%@page import="com.application.config.AppConfig"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.competitivedesk.common.util.CommonUtil"%>
<%@page import="com.competitivedesk.entity.UserMaster"%>
<%
    ApplicationContext applicationContext = WebAppInitializer.getApplicationContext();
    CommonUtil commonUtil = applicationContext.getBean(CommonUtil.class);
    UserMaster umasterObj = commonUtil.getUserMaster(request);
%>
<div id="navbar3" class="navbar-collapse collapse">
	<div class="col-xs-3 col-sm-3 col-lg-3" style="margin: 0px 0px 0px 0px;"></div>
	<div class="col-xs-8 col-sm-8 col-lg-8" style="margin: 0px 0px 0px 0px;">
		<ul class="nav navbar-nav navbar-right  responsive-nav main-nav-list">
			<li class="one lis" style="width: auto; text-align: center;"><a class="ass" href="#">Home</a></li>
			<li class="two lis" style="width: auto; text-align: center;"><a class="ass" href="#">About</a></li>
			<li class="three lis" style="width: auto; text-align: center;"><a class="ass" href="#">Contact</a></li>

			<%
			    if (umasterObj != null) {
			%>
			<li class="dropdown" style="width: auto;">
				<ul class="navbar-right" id="cart">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-shopping-cart"></i> <span class="badge">3</span></a>
						<div class="shopping-cart dropdown-menu">
							<div class="shopping-cart-header col-sm-6">
								<i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>

							</div>
							<div class="shopping-cart-total col-sm-6">
								<span class="lighter-text">Total:</span> <span class="main-color-text">$2,229.97</span>
							</div>
							<!--end shopping-cart-header -->
							<div class="clearfix"></div>
							<div>
								<ul class="shopping-cart-items linull">
									<li class="clearfix"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item1.jpg" alt="item1" /> <span class="item-name">Sony
											DSC-RX100M III</span> <span class="item-price">$849.99</span> <span class="item-quantity">Quantity: 01</span></li>

									<li class="clearfix"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item2.jpg" alt="item1" /> <span class="item-name">KS
											Automatic Mechanic...</span> <span class="item-price">$1,249.99</span> <span class="item-quantity">Quantity: 01</span></li>

									<li class="clearfix"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" /> <span class="item-name">Kindle,
											6" Glare-Free To...</span> <span class="item-price">$129.99</span> <span class="item-quantity">Quantity: 01</span></li>
								</ul>
							</div>
							<a href="#" class="button">Checkout</a>
						</div></li>
				</ul>

			</li>
			<%
			    }
			%>
		</ul>


	</div>
	<div class="col-xs-1 col-sm-1 col-lg-1" style="margin: 0px 0px 0px 0px;">
		<%
		    if (umasterObj == null) {
		%>
		<a href="<%=request.getContextPath()%>/auth/signin" class="logout-button loginin-out">LogIn</a>&nbsp;&nbsp;&nbsp;
		<%
		    } else {
		%>
		<div id="settingdown" class="dropdown">
			<img alt="competitivedesk" id="settingMenu" class="pointerIcon dropdown-toggle" data-toggle="dropdown"
				style="width: 20px; height: 20px; margin: 15px 8px 8px 8px; position: relative; left: 10px;" src="<%=request.getContextPath()%>/images/settings2.png" /> <span class="caret"></span>

			
			<ul class="dropdown-menu" style="margin-left: 20px;border-color: #6394F8;border-width: 1px;">
				<li><a href="<%=request.getContextPath()%>/auth/signout">Sign Out</a></li>
				<li><a href="<%=request.getContextPath()%>/test/useraccount">Account</a></li>
			</ul>
		</div>
		<%
		    }
		%>
	</div>
</div>