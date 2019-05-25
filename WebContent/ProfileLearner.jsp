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
<link href="assets/onepage/css/custom.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="assets/plugins/star-rating/css/star-rating.min.css"
	media="all" rel="stylesheet" type="text/css" />
<!-- Theme styles END -->
<style>
.wrap {
	width: 220px;
	margin: 0 auto;
	overflow: hidden;
}

label[for=upload] {
	display: inline-block;
	border: 3px solid #ccc;
	color: #666;
	font-weight: bold;
	background: #eee;
	padding: 8px 15px;
	border-radius: 5px;
	margin-top: 35px;
	cursor: pointer
}

input[type=submit] {
	display: inline-block;
	border: 3px solid #ccc;
	color: #666;
	font-weight: bold;
	background: #eee;
	padding: 8px 15px;
	border-radius: 5px;
	margin-top: 35px;
	cursor: pointer
}

label[for=upload]:hover {
	background: #ddd
}

label[for=upload] input {
	display: none
}

.thumb {
	position: relative;
	height: 220px;
	width: 220px;
	margin: 5px 0;
	cursor: move;
}

.thumb:before {
	content: "";
	display: block;
	position: absolute;
	width: 96%;
	height: 96%;
	z-index: 9;
	top: 1%;
	left: 1%;
	opacity: 0;
	transition: all 0.2s;
	pointer-events: none
}

.thumb:hover::before {
	opacity: 0.6
}

.thumb img {
	width: 100%;
	min-height: 220px;
	max-width: 220px;
	max-height: 220px;
	transition: all 0.4s;
}

@import "http://fonts.googleapis.com/css?family=Roboto:300,400,500,700";

.mb20 {
	margin-bottom: 20px;
	margin-top: 30px;
}

hgroup {
	padding-left: 15px;
	border-bottom: 1px solid #ccc;
}

hgroup h1 {
	font: 500 normal 1.625em "Roboto", Arial, Verdana, sans-serif;
	color: #2a3644;
	margin-top: 0;
	line-height: 1.15;
}

hgroup h2.lead {
	font: normal normal 1.125em "Roboto", Arial, Verdana, sans-serif;
	color: #2a3644;
	margin: 0;
	padding-bottom: 10px;
}

.search-result .thumbnail {
	border-radius: 0 !important;
}

.search-result:first-child {
	margin-top: 0 !important;
}

.search-result {
	margin-top: 20px;
}

.search-result .col-md-2 {
	min-height: 140px;
}

.search-result ul {
	padding-left: 0 !important;
	list-style: none;
}

.search-result ul li {
	font: 400 normal .85em "Roboto", Arial, Verdana, sans-serif;
	line-height: 30px;
}

.search-result ul li i {
	padding-right: 5px;
}

.search-result .col-md-7 {
	position: relative;
}

.search-result h3 {
	font: 500 normal 1.375em "Roboto", Arial, Verdana, sans-serif;
	margin-top: 0 !important;
	margin-bottom: 10px !important;
}

.search-result h3>a, .search-result i {
	color: #248dc1 !important;
}

.search-result p {
	font: normal normal 1.125em "Roboto", Arial, Verdana, sans-serif;
}

.search-result span.plus {
	position: absolute;
	right: 0;
	top: 126px;
}

.search-result span.plus a {
	background-color: #248dc1;
	padding: 5px 5px 3px 5px;
}

.search-result span.plus a:hover {
	background-color: #414141;
}

.search-result span.plus a i {
	color: #fff !important;
}

.search-result span.border {
	display: block;
	width: 97%;
	margin: 0 15px;
	border-bottom: 1px dotted #ccc;
}

.fill {
	position: relative;
	display: table;
	border-collapse: separate;
	margin-bottom: 10px;
}

.fill .form-control {
	width: 100%;
	margin-bottom: 0;
	display: inline-block;
}

.fill .btn {
	white-space: nowrap;
	width: 1%;
	display: table-cell;
}

.btn-default {
	background-color: #A8AEB3;
}

#gly-search {
	color: white;
}

.mb20 h1 {
	padding-bottom: 10px;
}


#pswd_info {
	background: #dfdfdf none repeat scroll 0 0;
	color: #fff;
	left: 20px;
	position: absolute;
	
}
#pswd_info h4{
    background: black none repeat scroll 0 0;
    display: block;
    font-size: 14px;
    letter-spacing: 0;
    padding: 17px 0;
    text-align: center;
    text-transform: uppercase;
}
#pswd_info ul {
    list-style: outside none none;
}
#pswd_info ul li {
   padding: 10px 45px;
}



.valid {
	background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/vq43s2wib/valid.png") no-repeat scroll 2px 6px;
	color: green;
	line-height: 21px;
	padding-left: 22px;
}

.invalid {
	background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/olmaj1p8z/invalid.png") no-repeat scroll 2px 6px;
	color: red;
	line-height: 21px;
	padding-left: 22px;
}



#pswd_info {
    display:none;
}
</style>
</head>
<!--DOC: menu-always-on-top class to the body element to set menu on top -->

<body class="menu-always-on-top">
	<!-- Header -->
	<%@include file="common/Header.jsp"%>
	<!-- Header END -->
	<!--Auth -->
	<%
		if (Integer.parseInt(session.getAttribute("status").toString()) == 3) {
			response.sendRedirect("initIndex.action");
		}
	%>
	<!--Auth -->
	<!-- Promo block BEGIN -->
	<div class="promo-block" id="promo-block"></div>
	<div class="container" id="profileTrainer">
		<div id="trainer-profile" class="row profile">
			<div class="col-md-3">
				<div class="profile-sidebar">
					<!-- SIDEBAR USERPIC -->
					<div class="profile-userpic">
						<div class="wrap">
							<div class="thumb">
								<img id="img"
									src=" <s:url action="ImageAction" >
                           <s:param name="userid">
                              <s:property value="user.userId"/>
                           </s:param>
                           </s:url>"
									alt="" />
							</div>
							<form action="updateLearnerAvatar" method="post"
								enctype="multipart/form-data">
								<label for="upload">Thay Đổi<input type="file"
									name="myFile" id="upload" />
								</label><label><input type="submit" value="Lưu"></label>
							</form>
						</div>
					</div>
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
						<div class="profile-usertitle-name">
							<s:property value="user.fullName" />
						</div>
						<div class="profile-usertitle-job">Learner</div>
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<!-- END SIDEBAR BUTTONS -->
					<!-- SIDEBAR MENU -->
					<div class="profile-usermenu">
						<ul class="nav" id="myProfile">
							<li class="active"><a href="#courseSave" data-toggle="tab">
									<i class="glyphicon glyphicon-ok-circle"></i> Khóa Học Đã Lưu
							</a></li>
							<li><a href="#profile" data-toggle="tab"> <i
									class="glyphicon glyphicon-sunglasses"></i> Thông Tin Cá Nhân
							</a></li>
							<li><a href="getMessage">
									<i class="glyphicon glyphicon-envelope"></i> Tin Nhắn
							</a></li>
							<li><a href="#document" data-toggle="tab"> <i
									class="glyphicon glyphicon-bookmark"></i> Lịch Sử Xem
							</a></li>
							<li><a
								href="publicLearner?learnerid=<s:property value="learner.learnerId"/>">
									<i class="glyphicon glyphicon-flag"></i> Thông Tin Người Học
							</a></li>
							<li><a href="#account" data-toggle="tab"> <i
									class="glyphicon glyphicon-user"></i> Cài Đặt Tài Khoản
							</a></li>
						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<div class="col-md-9">
				<div class="tab-content trainer-profile">
					<!-- view profile -->
					<div class="tab-pane" id="profile">
						<form action="updateLearnerProfile" class="form-horizontal">
							<div class="row">
								<h4>Trang Cá Nhân</h4>
								<br>
								<div class="form-group">
									<label class="col-md-2 control-label">Email:</label>
									<div class="col-md-4">
										<input type="text" name="userName"
											placeholder="nguyenvana@gmail.com"
											value="<s:property value="user.userName"/>"
											class="form-control" disabled>
									</div>
								</div>
								<h5 style="text-align: left">Thông Tin Cơ Bản</h5>
								<div class="form-group">
									<label class="col-md-2 control-label">Tên:</label>
									<div class="col-md-4">
										<input type="text" name="fullName" placeholder="Nguyen Van A"
											value="<s:property value="user.fullName"/>"
											class="form-control">
									</div>
									<label class="col-md-2 control-label">Giới Tính:</label>
									<div class="col-md-4">
										<s:if test="%{learner.gender==0}">
											<s:radio name="gender" list="#{'0':'Nam','1':'Nữ'}" value="0" />
										</s:if>
										<s:else>
											<s:radio name="gender" list="#{'0':'Nam','1':'Nữ'}" value="1" />
										</s:else>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Ngày Sinh:</label>
									<div class="col-md-4">
										<input type="date" required="required" name="dob"
											value="<s:date name="learner.dob" format="yyyy-MM-dd" />"
											placeholder="mm/dd/yyyy" class="form-control">
									</div>
									<label class="col-md-2 control-label">Nghề nghiệp:</label>
									<div class="col-md-4">
										<select name="jobId">
											<s:iterator value="jobs">
												<s:if test="%{jobId==learner.job.jobId}">
													<option selected
														value="<s:property value="jobId"/>">
														<s:property value="jobName" />
													</option>
												</s:if>
												<s:else>
													<option
														value="<s:property value="jobId"/>">
														<s:property value="jobName" />
													</option>
												</s:else>
											</s:iterator>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Số Điện Thoại:</label>
									<div class="col-md-4">
										<input type="number" name="phoneNumber"
											placeholder="0969666682"
											value="<s:property value="user.phoneNumber"/>"
											class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Về Tôi</label>
									<div class="col-md-8"></div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<div class="form-group">
											<textarea name="biography" class="form-control" rows="5"
												id="introduction"><s:property
													value="user.biography" /></textarea>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label"></label>
									<div class="col-md-3">
										<button id="up" type="submit" class="btn btn-primary">Lưu</button>
									</div>
								</div>
							</div>
						</form>
						<br>
					</div>
					<!-- account -->
					<div class="tab-pane" id="account">
						<h4>Cài Đặt Tài Khoản</h4>
						<br>
						<form action="changeLearnerPassword" class="form-horizontal">
							<div class="form-group">
								<label class="col-md-3 control-label">Tên*:</label>
								<div class="col-md-6">
									<input type="text" placeholder="Nguyen Van A"
										value="<s:property value="user.fullName"/>"
										class="form-control" disabled>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Email*:</label>
								<div class="col-md-6">
									<input type="email" placeholder="nguyenvana@gmail.com"
										value="<s:property value="user.userName"/>"
										class="form-control" disabled>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Mật Khẩu Hiện
									Tại*:</label>
								<div class="col-md-6">
									<input type="password" name="oldPassword" required
										placeholder="Nhập Mật Khẩu Hiện Tại" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label">Mật Khẩu Mới*:</label>
								<div class="col-md-6">
									<input id="p" type="password" placeholder="Nhập Mật Khẩu Mới" class="form-control">
								</div>
							</div>
							 
							<div class="form-group">
								<label class="col-md-3 control-label">Xác Nhận Mật
									Khẩu*:</label>
								<div class="col-md-6">
									<input type="password" data-validate-linked="newPassword" placeholder="Confirm Password" required
										class="form-control">
								</div>
							</div>
							<br>
							<div class="form-group">
								<label class="col-md-3 control-label"></label>
								<div class="col-md-3">
									<button id="up" type="submit" class="btn btn-primary">Cập
										Nhật</button>
								</div>
							</div>
							
							<div class="row">
                     <div class="col-md-3 col-md-offset-3">
			<div class="aro-pswd_info">
				<div id="pswd_info">
					<h4>Mật Khẩu Phải Thỏa Mãn</h4>
					<ul>
					<li id="length" class="invalid">Phải Có Ít Nhất <strong>8 Kí Tự</strong></li>
						<li id="capital" class="invalid">Phải Có Ít Nhất <strong>1 Kí Tự In Hoa</strong></li>
						<li id="number" class="invalid">Phải Có Ít Nhất<strong>1 Chữ Số</strong></li>
						
						<li id="space" class="invalid">Phải Sử dụng <strong> 1 Kí Tự [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
					</ul>
				</div>
			</div>
		</div>
                     </div>
						</form>
					</div>

					<div class="tab-pane" id="document">

						<div class="search">

							<hgroup class="mb20">
							<h1>Lịch Sử</h1>

							</hgroup>

							<s:iterator value="learner.histories">

								<article class="search-result row">
								<div class="col-xs-12 col-sm-12 col-md-3">
									<a
										href="courseDetail?courseId=<s:property value="course.courseId"/>"
										title="" class="thumbnail"> <img
										src="<s:url action="course/displayCourseImage"> 
                                    <s:param name="courseid">
                                       <s:property value="course.courseId"/>
                                    </s:param>
                                    </s:url>"
										alt="" /></a>
								</div>

								<div class="col-md-6 excerpet">
									<h3 style="text-align: left">
										<a
											href="courseDetail?courseId=<s:property value="course.courseId"/>"
											title=""><s:property value="course.title" /></a>
									</h3>
									<p style="text-align: left">
										<a href="publicTrainerProfile?trainerid=<s:property value="course.trainer.trainerId"/>"><s:property value="course.trainer.users.fullName" /></a>
									</p>
								</div>
								<div class="col-md-3 pull-right">
									<ul class="meta-search"  style="text-align: left">
										<li> 
										<div class="rating">
										<input id="input" value='<s:property
													value="course.rate" />'
											data-size="xs" class="rating rating-loading">
									</div>
										</li>
										<li><h4><i class="glyphicon glyphicon-eye-open"></i> <span><s:property
													value="course.totalView" /></span> lượt xem</h4></li>
										<li><h4><i class="glyphicon glyphicon-pencil"></i> <span><s:property
													value="course.totalComment" /></span> lượt bình luận</h4></li>
									</ul>
								</div>

								</article>

								<hr>
							</s:iterator>
						</div>

					</div>



					<div class="tab-pane active" id="courseSave">
						<h2>Khóa Học Đã Lưu</h2>

						<s:iterator value="courseSaved">

							<div class="col-md-4">
								<div class="thumbnail">
									<a
										href="courseDetail?courseId=<s:property value="course.courseId"/>"
										target="_blank"> <img
										src="<s:url action="course/displayCourseImage"> 
                            <s:param name="courseid">
                                <s:property value="course.courseId"/>
                            </s:param>
                         </s:url>"
										alt="Lights" style="width: 100%">
										<div class="caption">
											<p>
												<s:property value="course.title" />
											</p>
										</div>
									</a>
								</div>
							</div>

						</s:iterator>


					</div>
				</div>
			</div>
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
      <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
      <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
      <!-- Core plugins END (For ALL pages) -->
      <!-- Core plugins BEGIN (required only for current page) -->
      <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
      <script src="assets/plugins/jquery.easing.js"></script>
      <script src="assets/plugins/jquery.parallax.js"></script>
      <script src="assets/plugins/jquery.scrollTo.min.js"></script>
      <script src="assets/onepage/scripts/jquery.nav.js"></script>
      <!-- Core plugins END (required only for current page) -->
      <!-- Global js BEGIN -->
      <script src="assets/onepage/scripts/layout.js" type="text/javascript"></script>
      <script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
      <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
	  <script src="validator/validator.js"></script>
	  <script src="validator/check.js"></script>
	  <script src="assets/plugins/star-rating/js/star-rating.js" type="text/javascript"></script>
      <script>
      
      $(document).ready(function(){
    		
    		$('#p').keyup(function() {
    			var pswd = $(this).val();
    			
    			//validate the length
    			if ( pswd.length < 8 ) {
    				$('#length').removeClass('valid').addClass('invalid');
    			} else {
    				$('#length').removeClass('invalid').addClass('valid');
    			}
    			
    			//validate letter
    			if ( pswd.match(/[A-z]/) ) {
    				$('#letter').removeClass('invalid').addClass('valid');
    			} else {
    				$('#letter').removeClass('valid').addClass('invalid');
    			}

    			//validate capital letter
    			if ( pswd.match(/[A-Z]/) ) {
    				$('#capital').removeClass('invalid').addClass('valid');
    			} else {
    				$('#capital').removeClass('valid').addClass('invalid');
    			}

    			//validate number
    			if ( pswd.match(/\d/) ) {
    				$('#number').removeClass('invalid').addClass('valid');
    			} else {
    				$('#number').removeClass('valid').addClass('invalid');
    			}
    			
    			//validate space
    			if ( pswd.match(/[^a-zA-Z0-9\-\/]/) ) {
    				$('#space').removeClass('invalid').addClass('valid');
    			} else {
    				$('#space').removeClass('valid').addClass('invalid');
    			}
    			
    		}).focus(function() {
    			$('#pswd_info').show();
    		}).blur(function() {
    			$('#pswd_info').hide();
    		});
    		
    	});
         jQuery(document).ready(function() {
             Layout.init();
         });
         // course image
         
         function preview(input) {
         if (input.files && input.files[0]) {
         var reader = new FileReader();
         reader.onload = function(e) {
         $('#img').attr('src', e.target.result);
         }
         reader.readAsDataURL(input.files[0]);
         }
         }
         
         $("#upload").change(function() {
         $("#img").css({
         top : 0,
         left : 0
         });
         preview(this);
         $("#img").draggable({
         containment : 'parent',
         scroll : false
         });
         });
      </script>
      <%if(session.getAttribute("errorMessage")!=null){ %>
      	<script>
      		alert("Sai mật khẩu. Đổi mật khẩu thất bại.");
      	</script>
      
      <%session.removeAttribute("errorMessage");} %>
      
      
      <%if(session.getAttribute("successMessage")!=null){ %>
      	<script>
      		alert("Đổi mật khẩu thành công");
      	</script>
      
      <%session.removeAttribute("successMessage");} %>
      <!-- Global js END -->
   </body>
</html>