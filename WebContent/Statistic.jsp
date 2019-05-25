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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link href="assets/plugins/star-rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
<!-- Theme styles END -->
<style>
.viewStatistic {
	padding-top: 100px;
	min-height: 100%;
}

.userComment {
	min-height: 400px;
}
.view {
    padding: 10px 0px 10px 0px;
}
</style>
</head>
<body class="menu-always-on-top">
	<%@include file="common/Header.jsp"%>

	<div class="container viewStatistic">
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-6">
						<img src="<s:url action="course/displayCourseImage"> 
                            <s:param name="courseid">
                                <s:property value="course.courseId"/>
                            </s:param>
                         </s:url>" alt="" style="width: 95%">
					</div>
					<div class="col-md-6">
						<h4><s:property value="course.title"/></h4>
						
						
					<div class="rvp">
					<div class="rate"><input id="input" value='<s:property value="course.rate" />' data-size="xs" class="rating rating-loading"></div>
					<div class=""><i class="fa fa-eye"> Lượt xem: </i> <span> <s:property value="course.totalView"/> lượt</span></div>
					<div class="price"><i class="fa fa-credit-card">  Học Phí:</i><span> <s:property value="course.fee"/> VND</span></div>
					<div class="price"><i class="fa fa-address-book"> Danh Mục: </i> <span><s:property value="category.categoryName"/></span></div>
					
					
					
				</div>
					</div>
				</div>
				<div class="row">
					<h3>Thống Kê</h3>
					<div class="col-md-6 col-sm-6 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title">
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <canvas id="mybarChart-view"></canvas>
	                  </div>
	                </div>
	              </div>
					<div class="col-md-6 col-sm-6 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title">
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <canvas id="mybarChart-rate"></canvas>
	                  </div>
	                </div>
	              </div>
					<div class="col-md-6 col-sm-6 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title">
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <canvas id="mybarChart-saved"></canvas>
	                  </div>
	                </div>
	              </div>
	              
					
					<table style="display:none">
						<tr>
							<td id="courseView"><s:property value="course.totalView"/></td>
							<td id="categoryView"><s:property value="category.avgView"/></td>
							
							<td id="courseRate"><s:property value="course.rate"/></td>
							<td id="categoryRate"><s:property value="category.rate"/></td>
							
							<td id="courseSaved"><s:property value="courseSaved"/></td>
							<td id="categorySaved"><s:property value="category.avgCourseSaved"/></td>
							
						</tr>
					</table>
				</div>
				
				
	</div>
			
			

			<div class="col-md-4">
				<h4>Bình Luận</h4>
				<div class="well userComment">
					<!-- the comments -->
						<s:iterator value="course.comments">

							<h4>
								<i class="fa fa-comment"></i> <a
									href="publicTrainerProfile?trainerid=<s:property value="course.trainer.trainerId"/>">
									<s:property value="users.fullName" />:</a> 
									<s:property value="content" />
									
							</h4>
							<small>
								(<s:date name="time" />)
							</small>

						</s:iterator>
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
	<script src="assets/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- Core plugins END (For ALL pages) -->
	<!-- Core plugins BEGIN (required only for current page) -->
	<script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js"
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
	
	<!-- Global js END -->
	<!-- Chart.js -->
    <script src="admin/vendors/Chart.js/dist/Chart.min.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="admin/build/js/custom.js"></script>
    <!-- Barchart.js -->
    <script>
    var courseView =  $("#courseView").text();
    var categoryView =  $("#categoryView").text();
    var courseRate =  $("#courseRate").text();
    var categoryRate =  $("#categoryRate").text();
    var courseSaved =  $("#courseSaved").text();
    var categorySaved =  $("#categorySaved").text();
    
    new Chart(document.getElementById("mybarChart-view"), {
        type: 'bar',
        data: {
          labels: ["Lượt Xem"],
          datasets: [
            {
              label: "Khóa Học",
              backgroundColor: "#3e95cd",
              data: [courseView]
            }, {
              label: "Danh Mục",
              backgroundColor: "#8e5ea2",
              data: [categoryView]
            }
          ]
        },
        options: {
          title: {
            display: true,
            text: 'So sánh lượt xem giữa khóa học trên danh mục',
            position: 'bottom'
          },
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero: true
	                }
	            }]
	        }
        }
    });
    new Chart(document.getElementById("mybarChart-saved"), {
        type: 'bar',
        data: {
          labels: ["Số lần lưu"],
          datasets: [
            {
              label: "Khóa Học",
              backgroundColor: "#3e95cd",
              data: [courseSaved]
            }, {
              label: "Danh Mục",
              backgroundColor: "#8e5ea2",
              data: [categorySaved]
            }
          ]
        },
        options: {
          title: {
            display: true,
            text: 'So sánh số lần lưu giữa khóa học trên danh mục',
            position: 'bottom'
          },
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero: true
	                }
	            }]
	        }
        }
    });
    new Chart(document.getElementById("mybarChart-rate"), {
        type: 'bar',
        data: {
          labels: ["Đánh giá trung bình"],
          datasets: [
            {
              label: "Khóa Học",
              backgroundColor: "#3e95cd",
              data: [courseRate]
            }, {
              label: "Danh Mục",
              backgroundColor: "#8e5ea2",
              data: [categoryRate]
            }
          ]
        },
        options: {
          title: {
            display: true,
            text: 'So sánh đánh giá giữa khóa học trên danh mục',
            position: 'bottom'
          },
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero: true
	                }
	            }]
	        }
        }
    });
    </script>
</body>
</html>