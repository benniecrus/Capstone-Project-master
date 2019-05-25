<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- Head BEGIN -->
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="favicon.ico">
<!-- Fonts START -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Pathway+Gothic+One|PT+Sans+Narrow:400+700|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<!-- Fonts END -->
<!-- Global styles BEGIN -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Global styles END -->
<!-- Page level plugin styles BEGIN -->
<link href="assets/pages/css/animate.css" rel="stylesheet">
<link href="assets/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<!-- Page level plugin styles END -->
<!-- Theme styles BEGIN -->
<link href="assets/pages/css/components.css" rel="stylesheet">
<link href="assets/pages/css/slider.css" rel="stylesheet">
<link href="assets/onepage/css/style.css" rel="stylesheet">
<link href="assets/onepage/css/style-responsive.css" rel="stylesheet">
<link href="assets/onepage/css/themes/red.css" rel="stylesheet"
	id="style-color">
<link href="assets/onepage/css/custom.css" rel="stylesheet">
<link href="assets/plugins/star-rating/css/star-rating.min.css"
	media="all" rel="stylesheet" type="text/css" />
<!-- Theme styles END -->
<style>
#view {
	text-align: center;
}

#menu {
	display: flex;
	justify-content: center;
	font-size: 25px;
	text-align: center;
	padding-top: 25px;
}

#menu li {
	float: left;
	color: #43a2ec;
}

.nav>li {
	position: relative;
	display: block;
	margin-left: 100px;
}

.coursePopular {
	
}

.nav>li>a:focus, .nav>li>a:hover {
	text-decoration: none;
	background-color: white;
}

.well {
	margin-bottom: 0px;
}

</style>
</head>
<!--DOC: menu-always-on-top class to the body element to set menu on top -->
<body class="menu-always-on-top" style="background-color: white;">
	<!-- Header -->
	<%@include file="common/Header.jsp"%>
	<!-- Header END -->
	<!-- Promo block BEGIN -->
	<div class="promo-block" id="promo-block">
		<div id="carousel-example-generic"
			class="carousel slide carousel-slider" style="margin-top: 60px;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<!-- First slide -->
				<div class="item carousel-item-one active">
					<div class="center-block">
						<div class="center-block-wrap">
							<div class="center-block-body">
								<h2 class="margin-bottom-20 animate-delay carousel-title-v1"
									data-animation="animated fadeInDown">
									Chào Mừng Bạn Đến <span class="color-red">We Teach</span>
								</h2>
								
							</div>
						</div>
					</div>
				</div>
				<!-- Second slide -->
				<div class="item carousel-item-two">
					<h2 class="carousel-position-one animate-delay carousel-title-v1"
						data-animation="animated fadeInDown">
						Extremely <span class="color-red">Responsive</span> design
					</h2>
					<img
						class="carousel-position-two hidden-sm hidden-xs animate-delay"
						src="assets/onepage/img/slider/Slide2_iphone_left.png"
						alt="Iphone" data-animation="animated fadeInUp"> <img
						class="carousel-position-three hidden-sm hidden-xs animate-delay"
						src="assets/onepage/img/slider/Slide2_iphone_right.png"
						alt="Iphone" data-animation="animated fadeInUp">
				</div>
				<!-- Third slide -->
				<div class="item carousel-item-three">
					<div class="center-block">
						<div class="center-block-wrap">
							<div class="center-block-body">
								<h3 class="margin-bottom-20 animate-delay carousel-title-v2"
									data-animation="animated fadeInDown">
									The clearest way into the Universe <br /> is through a forest
									wilderness.
								</h3>
								<span class="carousel-subtitle-v1">We Teach</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <i class="fa fa-angle-left"
				aria-hidden="true"></i>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <i class="fa fa-angle-right"
				aria-hidden="true"></i>
			</a>
		</div>
	</div>
	<!-- Promo block END -->
	<div id="menu" class="well">
		<ul class="nav" style="margin-left: -8%">
			<li class="active"><span style="color:#fb0404;" class="glyphicon glyphicon-fire"></span><a
				data-toggle="tab" href="#mostPopular">Được Quan Tâm Nhất</a></li>
			<li><span style="color:#f1d512;" class="glyphicon glyphicon-star"></span><a
				data-toggle="tab" href="#highRate">Đánh Giá Cao Nhất</a></li>
			<li><span class="glyphicon glyphicon-time"></span><a
				data-toggle="tab" href="#new">Mới Nhất</a></li>
		</ul>
	</div>
	<div class="tab-content">
		<div id="mostPopular" class="tab-pane fade in active">
			<!-- COURSE BEGIN -->
			<div class="about-block content content-center" id="about">
				<div class="container information generic">
					<h2 id="fittext2" class="title-start">Được Quan Tâm Nhất</h2>
					
					<s:iterator value="top3View">
						<div class="item col-md-3">
							<div class="blok-read-sm">
								<a
									href="courseDetail?courseId=<s:property value="courseId"/>
                    "
									class="hover-image"> <img
									src="<s:url action="course/displayCourseImage"> 
                    <s:param name="courseid">
                      <s:property value="courseId"/>
                    </s:param>
                    </s:url>"
									alt="image"> 
								</a>
								<div class="info-text visible-md visible-lg">
									<span class="left-text"> <s:property value="fee" />đ
									</span> <span class="right-text"> <s:property
											value="level.levelName" />
									</span>
								</div>
								<div class="content-block">
									<span class="point-caption bg-blue-point"></span> <span
										class="bottom-line bg-blue-point"></span>
										<h4 class="tit">
										 	<s:property value="title" />
										</h4>
										<p>
											<s:property value="trainer.users.fullName" />
										</p>
										<p >
											<input id="input" value='<s:property value="rate" />'
												data-size="xs" class="rating rating-loading">
	
										</p>

									<div class="like-wrap">
										<a href="#"><i class="fa fa-eye"></i></a> <span> <s:property
												value="totalView" />
										</span> <a href="#"><i class="fa fa-comment col-green"></i></a> <span>
											<s:property value="totalComment" />
										</span>
									</div>
								</div>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
			<!-- COURSE END -->
		</div>
		<div id="highRate" class="tab-pane fade">
			<div class="about-block content content-center" id="about">
				<div class="container information generic">
					<h2 id="fittext2" class="title-start">Đánh Giá Cao Nhất</h2>
					
					<s:iterator value="topRateCourse">
						<div class="item col-md-3">
							<div class="blok-read-sm">
								<a
									href="courseDetail?courseId=<s:property value="courseId"/>
                    "
									class="hover-image"> <img
									src="<s:url action="course/displayCourseImage"> 
                    <s:param name="courseid">
                      <s:property value="courseId"/>
                    </s:param>
                    </s:url>"
									alt="image"> 
								</a>
								<div class="info-text visible-md visible-lg">
									<span class="left-text"> <s:property value="fee" />đ
									</span> <span class="right-text"> <s:property
											value="level.levelName" />
									</span>
								</div>
								<div class="content-block">
									<span class="point-caption bg-blue-point"></span> <span
										class="bottom-line bg-blue-point"></span>
											<h4>
										 	<s:property value="title" />
										</h4>
										<p>
											<s:property value="trainer.users.fullName" />
										</p>
									<div class="rating">
										<input id="input" value='<s:property value="rate" />'
											data-size="xs" class="rating rating-loading">
									</div>
									<div class="like-wrap">
										<a href="#"><i class="fa fa-eye"></i></a> <span> <s:property
												value="totalView" />
										</span> <a href="#"><i class="fa fa-comment col-green"></i></a> <span>
											<s:property value="totalComment" />
										</span>
									</div>
								</div>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
			<!-- COURSE END -->
		</div>
		<div id="new" class="tab-pane fade">
			<div class="about-block content content-center" id="about">
				<div class="container information generic">
					<h2 id="fittext2" class="title-start">Mới Nhất</h2>
					
					<s:iterator value="top3New">
						<div class="item col-md-3">
							<div class="blok-read-sm">
								<a
									href="courseDetail?courseId=<s:property value="courseId"/>
                    "
									class="hover-image"> <img
									src="<s:url action="course/displayCourseImage"> 
                    <s:param name="courseid">
                      <s:property value="courseId"/>
                    </s:param>
                    </s:url>"
									alt="image"> 
								</a>
								<div class="info-text visible-md visible-lg">
									<span class="left-text"> <s:property value="fee" />đ
									</span> <span class="right-text"> <s:property
											value="level.levelName" />
									</span>
								</div>
								<div class="content-block">
									<span class="point-caption bg-blue-point"></span> <span
										class="bottom-line bg-blue-point"></span>
											<h4>
										 	<s:property value="title" />
										</h4>
										<p>
											<s:property value="trainer.users.fullName" />
										</p>
									<div class="rating">
										<input id="input" value='<s:property value="rate" />'
											data-size="xs" class="rating rating-loading">
									</div>
									<div class="like-wrap">
										<a href="#"><i class="fa fa-eye"></i></a> <span> <s:property
												value="totalView" />
										</span> <a href="#"><i class="fa fa-comment col-green"></i></a> <span>
											<s:property value="totalComment" />
										</span>
									</div>
								</div>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
			<!-- COURSE END -->
		</div>
	</div>
	<div class="team-block content content-center margin-bottom-40"
		id="trainer">
		<div class="container">
			<h2>Người Dạy</h2>

			<div class="row">
				<s:iterator value="trainers">
					<div class="col-md-4">
					<div class="blok-read-sm1">
						<a
							href="publicTrainerProfile?trainerid=<s:property value="trainerId"/>
                ">
							<img
							src="<s:url action="ImageAction" >
                <s:param name="userid">
                  <s:property value="users.userId"/>
                </s:param>
                </s:url>"
							alt="Marcus Doe" class="img-responsive">
						</a>
						<h3>
							<a
								href="publicTrainerProfile?trainerid=<s:property value="trainerId"/>
                  ">
								<s:property value="users.fullName" />
							</a>
						</h3>
						<em> <s:property value="field.fieldName" />
						</em>
						<h5>Đánh Giá</h5>
						<div class="rating">
							<input id="input" value='<s:property value="rate" />'
								data-size="xs" class="rating rating-loading">
						</div>
						<h5>
							Tổng Khóa Học:
							<s:property value="totalCourse" />
						</h5>
						<p>
							<s:property value="users.biography" />
						</p>
						
					</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
	<div class="testimonials-block content content-center" id="sol">
		<div class="container">
			<h2>
				<strong>We Teach</strong>
			</h2>
			<h4>Chào mừng bạn đến với WeTeach</h4>
			<div class="carousel slide" data-ride="carousel"
				id="testimonials-block">
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<!-- Carousel items -->
					<div class="active item">
						<blockquote>
							<p>This is the most awesome, full featured, easy,
								costomizeble theme. Itâ€™s extremely responsive and very helpful
								to all suggestions.</p>
						</blockquote>
						<span class="testimonials-name">Mark Doe</span>
					</div>
					<!-- Carousel items -->
					<div class="item">
						<blockquote>
							<p>Raw denim you probably haven't heard of them jean shorts
								Austin. Nesciunt tofu stumptown aliqua, retro synth master
								cleanse.</p>
						</blockquote>
						<span class="testimonials-name">Joe Smith</span>
					</div>
					<!-- Carousel items -->
					<div class="item">
						<blockquote>
							<p>Williamsburg carles vegan helvetica. Cosby sweater eu banh
								mi, qui irure terry richardson ex squid Aliquip placeat salvia
								cillum iphone.</p>
						</blockquote>
						<span class="testimonials-name">Linda Adams</span>
					</div>
				</div>
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#testimonials-block" data-slide-to="0"
						class="active"></li>
					<li data-target="#testimonials-block" data-slide-to="1"></li>
					<li data-target="#testimonials-block" data-slide-to="2"></li>
				</ol>
			</div>
		</div>
	</div>
	<%@include file="common/footer.jsp"%>
	<!-- BEGIN FOOTER -->

	<!-- END FOOTER -->
	<a href="#promo-block" class="go2top scroll"><i
		class="fa fa-arrow-up"></i></a>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>
    <![endif]-->
	<!-- Load JavaScripts at the bottom, because it will reduce page load time -->
	<!-- Core plugins BEGIN (For ALL pages) -->
	<script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- Core plugins END (For ALL pages) -->
	<!-- Core plugins BEGIN (required only for current page) -->
	<script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<!-- rating -->
	<script src="assets/plugins/star-rating/js/star-rating.js"
		type="text/javascript"></script>
	<!-- pop up -->
	<script src="assets/plugins/jquery.easing.js"></script>
	<script src="assets/plugins/jquery.parallax.js"></script>
	<script src="assets/plugins/jquery.scrollTo.min.js"></script>
	<script src="assets/onepage/scripts/jquery.nav.js"></script>
	<!-- Core plugins END (required only for current page) -->
	<!-- Global js BEGIN -->
	<script src="assets/onepage/scripts/layout.js" type="text/javascript"></script>
	<script src="assets/pages/scripts/bs-carousel.js"
		type="text/javascript"></script>
	<script>
		jQuery(document).ready(function() {
			Layout.init();
		});
	</script>
	<!-- Global js END -->
</body>
</html>