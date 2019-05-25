<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!--<![endif]-->
<!-- Head BEGIN -->
<head>
<meta charset="utf-8">
<title>We Teach</title>
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
<link href="assets/plugins/star-rating/css/star-rating.min.css"
	media="all" rel="stylesheet" type="text/css" />
<link href="assets/onepage/css/custom.css" rel="stylesheet">
 <link href="assets/plugins/star-rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
<!-- Theme styles END -->
<style>
.courseRight {
	
}

p.groove {
	border-style: groove;
	padding-left: 5px;
}

#publicProfile {
	margin-top: 10px;
}

.average-rate td {
	font-size: 115px;
	text-align: center;
}

.feedback {
	font-family: Lato;
	margin-top: 30px;
}

.feedback-textarea {
	resize: none;
	padding: 20px;
	height: 130px;
	width: 100%;
	border: 1px solid #F2F2F2;
}

.courseDetail {
	
}

.courseRelated {
	padding-bottom: 50px;
}

.well {
	background-color: white;
}
</style>
</head>
<!--DOC: menu-always-on-top class to the body element to set menu on top -->
<body class="menu-always-on-top"
	style="background-color: rgba(244, 243, 242, 0.39);">
	<!-- Header -->

	<%@include file="common/Header.jsp"%>

	<!-- Header END -->



	<div class="container">

		<div class="row coure-detail" style="padding-top: 60px;">
			<h2>
				<s:property value="course.title" />
			</h2>
			<h4>
				<s:property value="course.subTitle" />
			</h4>
			<div class="col-md-8 course-left">

				<div class="well">

					<img
						src="<s:url action="course/displayCourseImage"> 
                            <s:param name="courseid">
                                <s:property value="course.courseId"/>
                            </s:param>
                         </s:url>"
						alt="" style="width: 95%">

				</div>



				<div class="well learns">

					<h3>
						<Strong>Tôi Sẽ Học Được Cái Gì?</Strong>
					</h3>
					<s:property escapeHtml="false" value="course.answer3" />


				</div>


				<div class="well requirements">

					<h3>
						<strong>Yêu Cầu</strong>
					</h3>

					<s:property escapeHtml="false" value="course.answer1" />
				</div>




				<div class="well descriptions">
					<h3>
						<strong>Mô Tả</strong>
					</h3>

					<s:property escapeHtml="false" value="course.description" />

				</div>


				<div class="well audience">
					<h3>
						<strong>Đối tưởng hướng Đến Của Khóa Học?</strong>
					</h3>

					<s:property escapeHtml="false" value="course.answer2" />

				</div>


			</div>

			<div class="col-md-4 course-right">

				<div class="well">
					<div class="fee">
						<table class="table">
							<thead>
								<tr>
									
								<th style="padding: 20px; font-size: 26px; color: red;"><s:property value="course.fee"/>đ</th>
								</tr>
							</thead>
							<tbody style="color: #05022f;font-weight: 900;">
								<tr>
									<td><span class="glyphicon glyphicon-menu-hamburger"></span>
										Trình Độ:</td>
									<td><s:property value="course.level.levelName"/> </td>

								</tr>
								<tr>
									<td><span class="glyphicon glyphicon-eye-open"></span>
										Lượt Xem:</td>
									<td><s:property value="course.totalView"/> </td>

								</tr>
								<tr>
									<td><span class="glyphicon glyphicon-list"></span>
										Danh Mục:</td>
									<td><s:property value="course.category.categoryName"/> </td>

								</tr>


							</tbody>
						</table>
					</div>


				</div>
				<div class="well">
					<div class="curriculum">
						<h4>
							<strong>Giáo Trình</strong>
							<div>
								<object width="320" height="160"
									data="curriculumImageAction?courseId=<s:property value="courseId"/>" type="application/pdf"></object>
									<a href="curriculumImageAction?courseId=<s:property value="courseId"/>" type="application/pdf">Xem giáo trình</a>
							</div>
						</h4>
					</div>
				</div>

				<s:if test="booleanValue==false">
					<%
						if (session.getAttribute("usid") != null && session.getAttribute("role").equals("learner")
						&& Integer.parseInt(session.getAttribute("status").toString())==1) {
					%>
					<div class="well">
						<div class="enroll">
							<form action="saveCourse">
								<input type="hidden" name="courseId"
									value="<s:property value="course.courseId" />">
								<button type="submit" class="btn btn-primary btn-block">Lưu khóa học</button>
							</form>
						</div>
					</div>
					<%
						}
					%>
				</s:if>
				<s:elseif test="booleanValue==true">
					<%
						if (session.getAttribute("usid") != null && session.getAttribute("role").equals("learner")
						 && Integer.parseInt(session.getAttribute("status").toString())==1) {
					%>
					<div class="well">
						<div class="enroll">
							<button type="submit" class="btn btn-primary btn-block disabled">Đã lưu khóa học</button>
						</div>
					</div>
					<%
						}
					%>
				</s:elseif>

			<s:if test="%{course.video!=null}">
				<div class="well">
					<h4>Video</h4>
					<iframe width="320" height="160"
					src="<s:property value="course.video"/>">
					</iframe>
				</div>
			</s:if>
			</div>

		</div>
		<div class="well">

			<div class="public-profile" id="publicProfile">

				<div class="row">
					<div class="public-trainer col-md-4">
						<div class="profile-userpic">
							<a
								href="publicTrainerProfile?trainerid=<s:property value="course.trainer.trainerId"/>">
								<img
								src=" <s:url action="ImageAction" >
				                        <s:param name="userid"><s:property value="course.trainer.users.userId"/></s:param>
				                     </s:url>"
								alt="">
							</a>
						</div>
						<!-- END SIDEBAR USERPIC -->
						<!-- SIDEBAR USER TITLE -->
						<div class="profile-usertitle">
							<div class="profile-usertitle-name">
								<a
									href="publicTrainerProfile?trainerid=<s:property value="course.trainer.trainerId"/>"><s:property
										value="course.trainer.users.fullName" /></a>
							</div>
							<div class="profile-usertitle-job">Người Dạy</div>
							<div class="profile-usertitle-job">
							<% if(session.getAttribute("usid") != null){%>
            					<button class="btn btn-info" data-toggle="modal" data-target="#ordine">Gửi Tin Nhắn</button>
            				<%} %>
							</div>
							<div id="ordine" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"></button>
        <h4 class="modal-title">Tạo Tin Nhắn Mới</h4>
      </div>
      <div class="modal-body">
        <form action="sendMessage">
      <input type="hidden" name="userName" value="<s:property value="trainer.users.userName" />">
    <div class="content-container clearfix">
       
        <div class="col-md-12">
            
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Tiêu đề" name="subject" />
            </div>
            <textarea class="form-control" placeholder="Nội dung tin nhắn" name="content"></textarea>
            <div class="btn-send">
            <br>
            <button class="btn btn-success btn-lg"><span class="glyphicon glyphicon-send"></span> Gửi Tin Nhắn</button>
            </div>
        </div>
    </div>

      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
							
							<div class="profile-usertitle-name">

								<div class="rate">
									<input id="norate" value='<s:property value="course.trainer.rate" />'
										data-size="sm" class="rating rating-loading">
								</div>

							</div>

						</div>
					</div>
					<div class="col-md-8">
						<div class="row">
							<form class="form-horizontal">
								<h3>Thông Tin Người Dạy</h3>
								<br>
								<div class="form-group">
									<label class="col-md-2 control-label">Email</label>
									<div class="col-md-4">
										<p>
											<s:property value="course.trainer.users.userName" />
										</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Chuyên Ngành</label>
									<div class="col-md-4">
										<p>
											<s:property value="course.trainer.field.fieldName" />
										</p>
									</div>
									<label class="col-md-2 control-label">Số Điện Thoại</label>
									<div class="col-md-3">
										<p>
											<s:property value="course.trainer.users.phoneNumber" />
										</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Địa Chỉ</label>
									<div class="col-md-4">
										<p>
											<s:property value="course.trainer.users.address" />
										</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Về Tôi</label>
									<div class="col-md-8"></div>
									<div class="col-md-10 col-md-offset-2">
										<div class="form-group">
											<p>
												<s:property value="course.trainer.users.biography" />
											<p>
										</div>
									</div>
								</div>
							</form>
						</div>


					</div>
				</div>
			</div>


		</div>
		<div class="well">

			<div class="row">
				<div class=" col-md-4">
					<h4>
						<strong>Đánh Giá Khóa Học</strong>
					</h4>
					<br>
					<table class="table table-bordered">
						<tr class="average-rate">
							<td><s:property value="course.rate" /></td>
						</tr>
						<tr>
							<td style="text-align: center">
								<div class="rating">

									<s:if test="courseRated==false">
										<%
											if (session.getAttribute("usid") != null && session.getAttribute("role").equals("learner")
													&& Integer.parseInt(session.getAttribute("status").toString())==1) {
										%>
										<form action="addNewCourseRate" method="post" id="rateCourse">
											<input id="input-3" name="rate"
												value='<s:property value="course.rate"/>'
												class="rating-loading" data-size="xs" data-min="0"
												data-max="5" data-step="1"> <input type="hidden"
												name="courseId"
												value='<s:property value="course.courseId"/>'>
										</form>
										<%
											}
										%>
									</s:if>
									<s:else>
										<%
											if (session.getAttribute("usid") != null && session.getAttribute("role").equals("learner")
													&& Integer.parseInt(session.getAttribute("status").toString())==1) {
										%>
										<input id="rated" class="rating rating-loading"
											value="<s:property value="course.rate"/>" data-size="xs">
										<%
											} else {
										%>
										<input id="norate" class="rating rating-loading"
											value="<s:property value="course.rate"/>" data-size="xs">
										<%
											}
										%>
									</s:else>
								</div>

							</td>
						</tr>
					</table>
				</div>
				<div class="col-md-6">

					<h4>
						<strong>Chi Tiết</strong>
					</h4>
					<br>
					<s:set var="total" value="%{rate1 + rate2 + rate3 + rate4 + rate5}" />
					<table class="table table-bordered">
						<tr>
							<td>
								<div class="row">
									<div class="col-xs-6 col-sm-4 col-lg-2">
										<span>5 <i style="color: #fde16d;" class="fa fa-star"
											aria-hidden="true"></i></span>
									</div>
									<div class="col-sm-8">
										<div class="progress">
											<div
												class="progress-bar progress-bar-danger progress-bar-striped active"
												role="progressbar"
												style="width: <s:property value="%{rate5 * 100 / #total}" />%">
												<s:property value="%{rate5 * 100 / #total}" />
												%
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<s:property value="rate5" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6 col-sm-4 col-lg-2">
										<span>4 <i style="color: #fde16d;" class="fa fa-star"
											aria-hidden="true"></i></span>
									</div>
									<div class="col-sm-8">
										<div class="progress">
											<div
												class="progress-bar progress-bar-warning progress-bar-striped active"
												role="progressbar"
												style="width: <s:property value="%{rate4 * 100 / #total}" />%">
												<s:property value="%{rate4 * 100 / #total}" />
												%
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<s:property value="rate4" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6 col-sm-4 col-lg-2">
										<span>3 <i style="color: #fde16d;" class="fa fa-star"
											aria-hidden="true"></i></span>
									</div>
									<div class="col-sm-8">
										<div class="progress">
											<div
												class="progress-bar progress-bar-success progress-bar-striped active"
												role="progressbar"
												style="width: <s:property value="%{rate3 * 100 / #total}" />%">
												<s:property value="%{rate3 * 100 / #total}" />
												%
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<s:property value="rate3" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6 col-sm-4 col-lg-2">
										<span>2 <i style="color: #fde16d;" class="fa fa-star"
											aria-hidden="true"></i></span>
									</div>
									<div class="col-sm-8">
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar"
												style="width: <s:property value="%{rate2 * 100 / #total}" />%">
												<s:property value="%{rate2 * 100 / #total}" />
												%
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<s:property value="rate2" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6 col-sm-4 col-lg-2">
										<span>1 <i style="color: #fde16d;" class="fa fa-star"
											aria-hidden="true"></i></span>
									</div>
									<div class="col-sm-8">
										<div class="progress">
											<div
												class="progress-bar progress-bar-info progress-bar-striped active"
												role="progressbar"
												style="width: <s:property value="%{rate1 * 100 / #total}" />%">
												<s:property value="%{rate1 * 100 / #total}" />
												%
											</div>
										</div>
									</div>
									<div class="col-sm-2">
										<s:property value="rate1" />
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<h4>
											Số lượt đánh giá:
											<s:property value="%{#total}" /> lượt
										</h4>
									</div>

								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>
		<div class="well">

			<div class="row">
				<div class="feedback">

					<div class="row">


						<div class="col-md-9 col-md-offset-1">
							<h3>
								<strong>Bình Luận</strong>
							</h3>
							<br>
							<%
								if (session.getAttribute("usid") != null && Integer.parseInt(session.getAttribute("status").toString())==1) {
							%>
							<form action="addNewComment">
								<input type="hidden" name="courseId"
									value="<s:property value="course.courseId"/>">
								<div class="panel panel-info">
									<div class="panel-body">
										<textarea name="content" required
											placeholder="Để lại bình luận của bạn tại đây..."
											class="feedback-textarea"></textarea>
										<button class="btn btn-primary pull-right" type="Submit">Bình Luận</button>
									</div>
								</div>
							</form>
							<%
								}
							%>
							<!-- the comments -->
							<s:iterator value="course.comments">

								<h3>
									<i class="fa fa-comment"></i> <a
										href="publicTrainerProfile?trainerid=<s:property value="course.trainer.trainerId"/>"><s:property
											value="users.fullName" />:</a> <small>
											<s:date name="time" format="hh:mm dd/MM/yyyy" /></small>
								</h3>
								<p>
									<s:property value="content" />
								</p>

							</s:iterator>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12 courseRelated">


			<h3>
				<strong>Khóa Học Liên Quan</strong>
			</h3>




			<s:iterator value="relatedCourse">

				<div class="item col-md-3">
					<div class="blok-read-sm">
						<a href="courseDetail?courseId=<s:property value="courseId"/>"
							class="hover-image"> <img
							src="<s:url action="course/displayCourseImage"> 
                            <s:param name="courseid">
                                <s:property value="courseId"/>
                            </s:param>
                         </s:url>"
							alt="image"> 
						</a>
						<div class="info-text visible-md visible-lg">
							<span class="left-text"><s:property value="fee" /></span> <span
								class="right-text"><s:property value="level.levelName" /></span>
						</div>
						<div class="content-block">
							<span class="point-caption bg-blue-point"></span> <span
								class="bottom-line bg-blue-point"></span>
								<h4><s:property
									value="title" /></h4>
							<p>
								<s:property value="subTitle" />
							</p>
							<div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="sm" class="rating rating-loading">
                    </div>
							<div class="like-wrap">
								<a href="#"><i class="fa fa-heart col-red"></i></a><span><s:property
										value="totalView" /></span> <a href="#"><i
									class="fa fa-comment col-green"></i></a><span><s:property
										value="totalComment" /></span>
							</div>
						</div>
					</div>
				</div>

			</s:iterator>





		</div>


	</div>


	<!-- BEGIN FOOTER -->
	<%@include file="common/footer.jsp"%>
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
		  <script src="assets/plugins/star-rating/js/star-rating.js" type="text/javascript"></script>
	<script>
		$(document)
				.on(
						'ready',
						function() {
							$('#input-3').rating({
								displayOnly : false,
								step : 0.5
							});
							var check = document.getElementById('input-3');
							var check2 = document.getElementById('rated');
							var check3 = document.getElementById('norate');
							if (check != null) {
								$(".rating-xs")
										.append(
												$("<button type='submit' class='btn btn-warning'>Đánh Giá</button>"));
							} else if (check2 != null) {
								$(".rating-xs")
										.append(
												$("<button type='button' class='btn btn-warning disabled'>Đã đánh giá</button>"));
							}

						});
	</script>
	<!-- Global js END -->
</body>
</html>