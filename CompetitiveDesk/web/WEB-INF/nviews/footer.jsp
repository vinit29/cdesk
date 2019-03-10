
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.font-weight-bold {
	font-weight: 700 !important;
}

.text-uppercase {
	text-transform: uppercase !important;
}

.secure_soci ul {
	margin: 0px;
	padding: 0px;
	list-style-type: none;
}

.secure_soci  ul li {
	list-style-type: none;
	float: left;
	margin-right: 20px;
}

.secure_soci  ul li.net i {
	background: url('<%=request.getContextPath()%>/new/images/footer.png')
		-238px 0px no-repeat;
	height: 25px;
	width: 13px;
	float: left;
}

.secure_soci  ul li.wallet i {
	background: url('<%=request.getContextPath()%>/new/images/footer.png')
		-192px -31px no-repeat;
	height: 25px;
	width: 16px;
	float: left;
}

.secure_soci  ul li.mCard {
	background: url('<%=request.getContextPath()%>/new/images/footer.png')
		-175px -64px no-repeat;
	height: 22px;
	width: 37px;
	position: relative;
	top: 5px;
}

.secure_soci  ul li.maestro {
	background: url('<%=request.getContextPath()%>/new/images/footer.png')
		-222px -64px no-repeat;
	height: 22px;
	width: 37px;
	position: relative;
	top: 5px;
}

.secure_soci  ul li span {
	float: left;
	margin: 6px 0 0 15px;
}

.secure_soci  ul li b {
	display: block;
	font-weight: 600;
}

.secure_soci  i {
	margin: 4px 0px;
	background: url('<%=request.getContextPath()%>/new/images/footer.png')
		0px 0px no-repeat;
	height: 22px;
	width: 211px;
	float: left;
}
</style>

<c:choose>
	<c:when test="${pageId == 2}">
		<footer class="navbar-fixed-bottom">
	</c:when>
	<c:otherwise>
		<c:choose>
			<%-- <c:when test="${pageId != 5}">
				<div class="bgColor centered">
					<div class="row" style="padding-top: 50px;">

						<div class="col-lg-1 col-sm-1"></div>
						<div class="col-lg-3 col-sm-3 focus-box red wow" style="visibility: visible;">

							<h5 class="red-border-bottom">100% ASSURANCE</h5>
							<p class="trustPera">You have our 100% assurance for secure transaction every time you purchase with us. Purchase Speed-Test from anywhere.</p>
						</div>


						<div class="col-lg-4 col-sm-4 focus-box green wow" style="visibility: visible;">

							<h5 class="green-border-bottom">TRUST</h5>
							<p class="trustPera">We trust you and value your money, We issue refunds with a no questions asked guarantee, that's our promise!</p>
						</div>

						<div class="col-lg-3 col-sm-3 focus-box blue wow" style="visibility: visible;">

							<h5 class="blue-border-bottom">PAYMENT OPTIONS</h5>
							<p class="trustPera">Pay easily in few clicks. Choose from secure payment options such as Credit/Debit Card, Net Banking and Cash Card</p>
						</div>
						<div class="col-lg-1 col-sm-1 boxInfo"></div>
					</div>
				</div>
			</c:when> --%>

			<c:when test="${pageId != 5 && (pageId == 6 || pageId == 7)}">

				<div class="bgColor centered">
					<div class="row">
						<div class="container text-center text-md-left mt-5">
							<div class="row mt-3">
								<!--First column-->
								<c:choose>
									<c:when test="${pageId == 6}">
										<div
											class="col-md-3 col-lg-4 col-xl-3 mb-4 focus-box green wow"
											style="visibility: visible;">

											<h5 class="red-border-bottom">Useful links</h5>
                                            <p>
												<a id="maths" href="<%=request.getContextPath()%>/maths-docs/1">Maths</a>
											</p>
                                             <p>
												<a id="english" href="<%=request.getContextPath()%>/english-docs/2">English</a>
											</p>
											<p>
												<a id="reasoning" href="<%=request.getContextPath()%>/reasoning-docs/3">Reasoning</a>
											</p>
											<p>
												<a id="gk" href="<%=request.getContextPath()%>/gk-docs/4">General Knowledge</a>
											</p>
											<p>
												<a id="computer" href="<%=request.getContextPath()%>/computer-docs/5">Computer</a>
											</p>
											
											
										</div>
									</c:when>
									<c:otherwise>
									      <div
											class="col-md-3 col-lg-4 col-xl-3 mb-4 focus-box green wow"
											style="visibility: visible;">

											<h5 class="red-border-bottom">Useful links</h5>


											<p>
												<a id="footer-link-faq" href="/faq/">Frequently Asked
													Questions</a>
											</p>
											<p>
												<a id="footer-link-browsers" href="/browsers-and-devices/">Browsers
													and devices</a>
											</p>
											<p>
												<a id="footer-link-license" href="/license/">License</a>
											</p>
											<p>
												<a id="footer-link-changelog" href="/changelog/">ChangeLog</a>
											</p>
											<p>
												<a id="footer-link-policy" href="/privacy-policy/">Privacy
													Policy</a>
											</p>
											<p>
												<a id="footer-link-refund" href="/return-refund-policy/">Return/Refund
													policy</a>
											</p>
											<p>
												<a id="footer-link-students" href="/mdb-academy/">Students
													and universities</a>
											</p>
										</div>
									</c:otherwise>
								</c:choose>

								<!--/.First column-->
								
								<!--Second column-->

								<div class="col-md-3 col-lg-4 col-xl-3 mb-4 focus-box blue wow"
									style="visibility: visible;">

									<h5 class="red-border-bottom">Related Test</h5>
									<p>
										<a id="footer-link-jquery"
											href="/material-design-for-bootstrap/">MDB jQuery</a>
									</p>
									<p>
										<a id="footer-link-angular" href="/angular/">MDB Angular</a>
									</p>
									<p>
										<a id="footer-link-react" href="/react/">MDB React</a>
									</p>
									<p>
										<a id="footer-link-vue" href="/vue/">MDB Vue</a>
									</p>
									<p>
										<a id="footer-link-brandflow" href="/automated-app-start/">MDB
											BrandFlow</a>
									</p>
									<p>
										<a id="footer-link-freebies" href="/freebies/">Free
											templates</a>
									</p>
									<p>
										<a id="footer-link-templates" href="/templates/">Premium
											templates</a>
									</p>
								</div>
								<!--/.Second column-->
								<!--Third column-->

								<div class="col-md-3 col-lg-4 col-xl-3 mb-4 focus-box red wow"
									style="visibility: visible;">

									<h5 class="red-border-bottom">Other Test</h5>
									<p>
										<a id="footer-link-tutBootstrap" href="/bootstrap-tutorial/">Bootstrap
											&amp; web design</a>
									</p>
									<p>
										<a id="footer-link-tutWordpress" href="/wordpress-tutorial/">WordPress</a>
									</p>
									<p>
										<a id="footer-link-tutAngular"
											href="/angular/angular-tutorial/">Angular</a>
									</p>
									<p>
										<a id="footer-link-tutAutomation" href="/automated-app-start/">Automation</a>
									</p>
									<p>
										<a id="footer-link-tutWebpush" href="/web-push-start/">Web
											Push Notifications</a>
									</p>
									<p>
										<a id="footer-link-tutGulp" href="/bootstrap-gulp-tutorial/">Gulp
											&amp; customization</a>
									</p>
									<p>
										<a id="footer-link-tutWebpack"
											href="/mdbootstrap-webpack-tutorial">Webpack</a>
									</p>

								</div>
								<!--/.Third column-->
								<!-- Fourth column
								<div class="col-md-3 col-lg-4 col-xl-3 mb-4 focus-box green wow"
									style="visibility: visible;">

									<h5 class="red-border-bottom">Company</h5>

									<p>
										<i class="fa fa-envelope mr-3"></i> contact@mdbootstrap.com
									</p>

									<p>
										<a id="footer-link-team" href="/our-team/"> <i
											class="fa fa-users mr-3"></i> Our team
										</a>
									</p>
									<p>
										<a id="footer-link-company" href="/contact/"> <i
											class="fa fa-bullhorn mr-3"></i> Company data
										</a>
									</p>
									<p>
										<a id="footer-link-formedia" href="/mdbootstrap-press-pack/">
											<i class="fa fa-bullhorn mr-3"></i> For media
										</a>
									</p>
								</div>
								Fourth column -->
							</div>
						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${pageId != 5}">
						<div class="bgColor centered" style="background: #fff;">
							<div class="row" style="padding-top: 50px;">

								<div class="col-lg-1 col-sm-1"></div>



								<div class="col-lg-5 col-sm-5 focus-box green wow"
									style="visibility: visible;">



									<h5 class="red-border-bottom">About CompetitiveDesk.com</h5>
									<p style="text-align: left;">
										<b>CompetitiveDesk.com</b> is for Goverment & Private sector
										Job seekers. All examples are simple and easy to understand
										with some important tricks. <br> <br>All Test are
										created to enhance the calculation and reasoning skills.
										Multi-language support for Test.<br>
								</div>

								<div class="col-lg-4 col-sm-4 focus-box blue wow"
									style="visibility: visible; padding-left: 75px;">

									<h5 class="blue-border-bottom">Author</h5>
									<p class="trustPera">
									<div class="media" style="margin-top: 0px;">
										<div class="media-left">
											<img src="<%=request.getContextPath()%>/new/images/11.jpg"
												class="media-object" style="width: 60px">
										</div>
										<div class="media-body" style="text-align: left;">
											Mr. Vinit Patel
											<p>Supervisor Instructor - COMPUTER</p>
											<b>CompetitiveDesk.com</b> is created, written , and
											maintained by Vinit Patel.
											</p>
										</div>
									</div>
									</p>
								</div>
								<div class="col-lg-1 col-sm-1 boxInfo"></div>
							</div>
						</div>
					</c:when>
				</c:choose>
			</c:otherwise>



		</c:choose>
		<footer>
	</c:otherwise>
</c:choose>

<div class="container">
	<div class="col-lg-5 col-md-5 company-details">

		<!-- <div class="secure_soci">
			<div class="col-lg-12 col-md-12">
				<ul>
					<li class="net"><i></i><span>NET BANKING</span></li>
					<li class="wallet"><i></i><span>YOUR WALLET</span></li>
					<li class="mCard"></li>
					<li class="maestro"></li>
				</ul>
			</div>
		</div> -->
		<!-- <div class="icon-top red-text">
				<i class="icon-fontawesome-webfont-302"></i>
			</div>
			Shri Rang Sadhna Soc. Saribujarang Amalsad -->
	</div>

	<div class="col-lg-4 col-md-4 company-details">
		contact@competitivedesk.com <br> +9687011947
	</div>

	<!-- SOCIAL ICON AND COPYRIGHT -->
	<div class="col-lg-3 col-sm-3 copyright">
		<ul class="social" style="margin-bottom: 0px;">
			<li><a href="##"><i class="icon-facebook"></i></a></li>
			<li><a href="##"><i class="icon-twitter-alt"></i></a></li>
			<li><a href="##"><i class="icon-linkedin"></i></a></li>
			<li><a href="##"><i class="icon-behance"></i></a></li>
			<li><a href="##"><i class="icon-dribbble"></i></a></li>
		</ul>
		© 2016 Competitive Desk
	</div>
</div>
<!-- / END CONTAINER -->
</footer>