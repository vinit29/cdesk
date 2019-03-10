
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Vinit Patel">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Competitive Desk</title>

<jsp:include page="maincss.jsp"></jsp:include>
<jsp:include page="analitics.jsp"></jsp:include>
<link rel="stylesheet" href="<%=request.getContextPath()%>/new/csss/jquery.vegas.min.css" />
<script src="<%=request.getContextPath()%>/new/js/jquery.min.js"></script>
</head>

<style>
 h1,h2,h3,h4,h5,h6 {
    margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

h1,h2 {
	font-family: 'Montserrat', 'sans-serif';
	font-weight: 700;
	text-transform: uppercase;
}
h1 {
	font-size: 55px;
}
h2 {
	font-size: 45px !important;
	line-height: 55px;
}
h3 {
	font-size: 24px;
}
h4 {
	font-size: 18px;
}
h5 {
	font-size: 17px;
}
h6 {
	font-size: 16px;
} 

</style>

<body>
	<img class="vegas-background" src="<%=request.getContextPath()%>/new/images/bground123.jpg"
		style="position: fixed; left: -11.75px; top: 0px; width: 1360.5px; height: 869px; bottom: auto; right: auto;" />

	<header id="home" class="header">
		<jsp:include page="header.jsp"></jsp:include>


		<div class="container">
			<h1 class="intro">Quality services for Institutes and Individuals</h1>
			<div class="buttons inpage-scroll">
				<a href="#pricingtable" class="btn btn-primary custom-button green-btn">Our Packages</a>
			</div>
			<div class="row bottom-message-section">
				<div class="col-lg-4 col-sm-4">
					<div class="short-text">
						<i class="icon icon-fontawesome-webfont-358"></i> Fixed price for packages
					</div>
				</div>
				<div class="col-lg-4 col-sm-4">
					<div class="short-text">
						<i class="icon-fontawesome-webfont-286"></i> Quality product in time
					</div>
				</div>
				<div class="col-lg-4 col-sm-4">
					<div class="short-text">
						<i class="icon-fontawesome-webfont-347"></i> Satisfaction guranteed
					</div>
				</div>
			</div>
		</div>
	</header>
	<section class="focus" id="focus">
		<div class="container">
			<div class="section-header">
				<h2 class="dark-text">Our Focus</h2>
				<h6>We design &amp; develop qaulity products to help Individuals &amp; medium level business.</h6>
			</div>
			<div class="row centered">

				<!-- FIRST FOCUS BOXES -->
				<div class="col-lg-4 col-sm-4 focus-box red wow">
					<div style="margin-bottom: 15px;">
						<i class="pixeden pd-icon-monitor"><img src="<%=request.getContextPath()%>/new/images/doc.png" /></i>
						<!-- FOCUS ICON-->
					</div>
					<h5 class="red-border-bottom">Desk Docs</h5>
					<!-- FOCUS HEADING -->
					<p>
						<!-- FOCUS DESCRIPTION -->
						All Examples are easy to understand with important tricks to solve question easily and to increase your speed to solve lengthy and tricky questions.
					</p>
				</div>
				<!-- / END FIRST FOCUS BOX. Other boxes has same format -->

				<div class="col-lg-4 col-sm-4 focus-box green wow">
					<div style="margin-bottom: 15px;">
						<i class="pixeden pd-icon-monitor"><img src="<%=request.getContextPath()%>/new/images/test.png" /></i>
					</div>
					<h5 class="green-border-bottom">Online Test</h5>
					<p>With Dual Language support , online test become easier for all . Every test are important and question are prepared based on the exam point of
						view.</p>
				</div>

				<div class="col-lg-4 col-sm-4 focus-box blue wow">
					<div style="margin-bottom: 15px;">
						<i class="pixeden pd-icon-monitor"><img src="<%=request.getContextPath()%>/new/images/checklist.png" /></i>
					</div>
					<h5 class="blue-border-bottom">Enhance skills</h5>
					<p>With Dual Language support , online test become easier for all . Every test are important and question are prepared based on the exam point of
						view.</p>
				</div>
			</div>

		</div>
	</section>


	<section class="packages" id="pricingtable">
		<div class="container">

			<div class="section-header">
				<h2 class="white-text">Packages</h2>
				<h6 class="white-text">We have 4 friendly packages for you. Check all the packages and choose the right one for you.</h6>
			</div>

			<div class="row centered">
				<div class="col-lg-3 col-sm-3">
					<div class="package wow   ">
						<div class="package-header green-bg">
							<h5>Basic</h5>
						</div>
						<div class="price dark-bg">
							<div class="price-container">
								<h4>
									<span class="dollar-sign">Rs</span>20
								</h4>
								<span class="price-meta"> / Test </span>
							</div>
						</div>
						<ul>
							<li><i class="icon-check"></i>Single Test</li>
							<li><i class="icon-check"></i>In English - Hindi</li>
							<li><i class="icon-check"></i>2 hr.</li>
							<li><i class="icon-check"></i>On-Time Result</li>
							<li><i class="icon-check"></i>Result with Soultions</li>
						</ul>
						<a href="#" class="btn btn-primary custom-button green-btn"> Sign Up </a>
					</div>
				</div>

				<div class="col-lg-3 col-sm-3">
					<div class="package wow   ">
						<div class="package-header blue-bg">
							<h5>Standard</h5>
						</div>
						<div class="price dark-bg">
							<div class="price-container">
								<h4>
									<span class="dollar-sign">Rs</span>50
								</h4>
								<span class="price-meta"></span>
							</div>
						</div>
						<ul>
							<li><i class="icon-check"></i>3 Test</li>
							<li><i class="icon-check"></i>In English - Hindi</li>
							<li><i class="icon-check"></i>2 hr.</li>
							<li><i class="icon-check"></i>On-Time Result</li>
							<li><i class="icon-check"></i>Result with Soultions</li>
						</ul>
						<a href="#" class="btn btn-primary custom-button blue-btn"> Sign Up </a>
					</div>
				</div>

				<div class="col-lg-3 col-sm-3">
					<div class="best-value">
						<div class="package wow fadeInUp  ">
							<div class="package-header red-bg">
								<h4>Premium</h4>
								<div class="meta-text">Best Value</div>
							</div>
							<div class="price dark-bg">
								<h4>
									<span class="dollar-sign">Rs</span>100
								</h4>
								<span class="price-meta"></span>
							</div>
							<ul>
								<li><i class="icon-check"></i>8 Test</li>
								<li><i class="icon-check"></i>In English - Hindi</li>
								<li><i class="icon-check"></i>2 hr.</li>
								<li><i class="icon-check"></i>On-Time Result</li>
								<li><i class="icon-check"></i>Result with Soultions</li>
							</ul>
							<a href="#" class="btn btn-primary custom-button red-btn"> Sign Up </a>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-sm-3">
					<div class="package wow fadeInRight  ">
						<div class="package-header yellow-bg">
							<h5>Ultimate</h5>
						</div>
						<div class="price dark-bg">
							<h4>
								<span class="dollar-sign">Rs</span>200
							</h4>
							<span class="price-meta"></span>
						</div>
						<ul>
							<li><i class="icon-check"></i>25 Test</li>
							<li><i class="icon-check"></i>In English - Hindi</li>
							<li><i class="icon-check"></i>2 hr.</li>
							<li><i class="icon-check"></i>On-Time Result</li>
							<li><i class="icon-check"></i>Result with Soultions</li>
						</ul>
						<a href="#" class="btn btn-primary custom-button yellow-btn"> Sign Up </a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="features" id="aboutus">
		<div class="container">

			<div class="section-header">

				<h2 class="black-text">About US</h2>

				<h6 class="black-text">We design &amp; develop qaulity products to help small &amp; medium level business.</h6>
			</div>

			<div class="row">

				<div class="col-lg-6 col-md-6 wow">

					<p class="wow" data-wow-offset="30">
						CompetitiveDesk.com is for Goverment & Private sector Job seekers. All examples are simple and easy to understand with some important tricks.<br>
						<br>All Test are created to enhance the calculation and reasoning skills. Multi-language support for Test. <br> <br>CompetitiveDesk.com
						is created, written , and maintained by Vinit Patel.
					</p>
				</div>

				<div class="col-md-6 col-sm-6 wow">
					<!-- FEATURE -->
					<div class="feature">
						<div class="feature-icon">
							<i class="icon-params"></i>
						</div>
						<h5>Easy to Customize</h5>
						<p>Test can be customize with the timing and language.</p>
					</div>

					<div class="feature">
						<div class="feature-icon">
							<i class="icon-handle-streamline-vector"></i>
						</div>
						<h5>Online Strategy</h5>
						<p>User can make payment & give test anywhere.</p>
					</div>

					<div class="feature">
						<div class="feature-icon">
							<i class="icon-speech-streamline-talk-user"></i>
						</div>
						<h5>Awesome Support</h5>
						<p>Contact us or leave a message for any queries - 24 X 7 support</p>
					</div>


				</div>

			</div>

		</div>

	</section>

	<section class="contact-us" id="contact">
		<div class="container">

			<!-- CONTACT FORM-->
			<div class="row">
				<div class="col-lg-6 col-sm-6">

					<form role="form" class="review-form" id="review-form">
						<div class="wow">
							<div class="col-lg-12 col-sm-12" style="height: 320px; background-color: #F7F7F7; margin: 0px 10px 10px 10px;">
								<marquee direction="up" style="height: 298px; margin-top: 10px; margin-bottom: 10px;">
									<!-- Left-aligned media object -->
									<div class="media">
										<div class="media-left">
											<img src="<%=request.getContextPath()%>/new/images/10.jpg" class="media-object" style="width: 60px">
										</div>
										<div class="media-body">
											<h4 class="media-heading">Left-aligned</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
									</div>
									<hr>

									<!-- Right-aligned media object -->
									<div class="media">
										<div class="media-body">
											<h4 class="media-heading">Right-aligned</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
										<div class="media-right">
											<img src="<%=request.getContextPath()%>/new/images/12.jpg" class="media-object" style="width: 60px">
										</div>
									</div>


									<!-- Left-aligned media object -->
									<div class="media">
										<div class="media-left">
											<img src="<%=request.getContextPath()%>/new/images/11.jpg" class="media-object" style="width: 60px">
										</div>
										<div class="media-body">
											<h4 class="media-heading">Left-aligned</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
									</div>
									<hr>

									<!-- Right-aligned media object -->
									<div class="media">
										<div class="media-body">
											<h4 class="media-heading">Right-aligned</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
										<div class="media-right">
											<img src="<%=request.getContextPath()%>/new/images/10.jpg" class="media-object" style="width: 60px">
										</div>
									</div>

									<!-- Left-aligned media object -->
									<div class="media">
										<div class="media-left">
											<img src="<%=request.getContextPath()%>/new/images/12.jpg" class="media-object" style="width: 60px">
										</div>
										<div class="media-body">
											<h4 class="media-heading">Left-aligned</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
									</div>
									<hr>

									<!-- Right-aligned media object -->
									<div class="media">
										<div class="media-body">
											<h4 class="media-heading">Right-aligned</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										</div>
										<div class="media-right">
											<img src="<%=request.getContextPath()%>/new/images/10.jpg" class="media-object" style="width: 60px">
										</div>
									</div>

								</marquee>
							</div>

						</div>
					</form>

				</div>

				<div class="col-lg-6 col-sm-6">
					<form role="form" class="contact-form" id="contact-form">
						<div class="wow">
							<div class="col-lg-8 col-sm-8">
								<input type="text" name="name" placeholder="Your Name" class="form-control input-box" id="name">
							</div>
							<div class="col-lg-12 col-sm-12">
								<input type="email" name="email" placeholder="Your Email" class="form-control input-box" id="email">
							</div>
							<div class="col-lg-12 col-sm-12">
								<input type="text" name="subject" placeholder="Subject" class="form-control input-box" id="subject">
							</div>
						</div>

						<div class="col-md-12 wow">
							<textarea name="message" class="form-control textarea-box" placeholder="Your Message" id="message"></textarea>
						</div>
						<!-- IF MAIL SENT SUCCESSFULLY -->
						<h4 class="success pull-left white-text">Your message has been sent successfully.</h4>

						<!-- IF MAIL SENDING UNSUCCESSFULL -->
						<h4 class="error pull-left white-text">E-mail must be valid and message must be longer than 1 character.</h4>
						<button class="btn btn-primary custom-button blue-btn wow" id="submit" data-wow-offset="30" data-wow-duration="1.5s" data-wow-delay="0.15s"
							type="submit">Send Message</button>
					</form>
				</div>
			</div>
			<!-- / END CONTACT FORM-->
		</div>
		<!-- / END CONTAINER -->
	</section>
	<!-- / END CONTACT US SECTION-->

	<jsp:include page="footer.jsp"></jsp:include>

	<jsp:include page="mainjs.jsp"></jsp:include>
</body>
</html>