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
 <link href="assets/plugins/star-rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
<!-- Theme styles END -->
<style>
.fill {
	position: relative;
	display: table;
	border-collapse: separate;
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
.table-bordered {
    border: 0px;
}
.table-bordered>thead>tr>th {
     border: 0px;
}


</style>
</head>
<!--DOC: menu-always-on-top class to the body element to set menu on top -->
<body class="menu-always-on-top">
	<%@include file="common/Header.jsp"%>

	<!-- Header END -->
	<br><br><br><br>
	<!-- Team block BEGIN -->
	<div class="team-block content content-center margin-bottom-40"
		id="trainer">
		<div class="container">
		
		
		
			<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th><h2>
				<strong>Người Dạy</strong>
			</h2></th>
                
            </tr>
        </thead>
       
        <tbody>
            <tr>
                <td>
                <div class="row">
				<s:iterator value="trainers">
					<div class="col-md-3">
					<div class="blok-read-sm1">
					
					<a href="publicTrainerProfile?trainerid=<s:property value="trainerId"/>">
						<img
							src=" <s:url action="ImageAction" >
                     	<s:param name="userid"><s:property value="users.userId"/></s:param>
                     </s:url>"
							alt="Marcus Doe" class="img-responsive">
						</a>
						<h3>
							<a href="publicTrainerProfile?trainerid=<s:property value="trainerId"/>"><s:property value="users.fullName" /></a>
						</h3>
						<em><s:property value="field.fieldName" /></em>
						
						<div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                    </div>



							<h5>Tổng Khóa Học: <s:property value="totalCourse" /></h5>

						<p>
							<s:property value="users.biography" />
						</p>
						
					</div>
					</div>
				</s:iterator>

			</div>
                </td>
               
            </tr>
           
        </tbody>
    </table>
		
		
		
		
		
		<!--  
		
			<h2>
				<strong>Trainer</strong>
			</h2>
			<h4>Welcome to WeTeach</h4>
			<div class="row">
				<div class="col-md-9"></div>
				<div class="col-md-3">
					<form>
						<div class="form" style="display: inline;">
							<div class="fill">
								<input type="text" class="form-control"
									placeholder="Search Trainers List ... "> <span
									class="btn btn-default"><i
									class="glyphicon glyphicon-search" id="gly-search"></i></span>
							</div>
						</div>
					</form>
				</div>

			</div>
			<br>
			<div class="row">
				<s:iterator value="trainers">
					<div class="col-md-3 item">
					<a href="publicTrainerProfile?trainerid=<s:property value="trainerId"/>">
						<img
							src=" <s:url action="ImageAction" >
                     	<s:param name="userid"><s:property value="users.userId"/></s:param>
                     </s:url>"
							alt="Marcus Doe" class="img-responsive">
						</a>
						<h3>
							<a href="publicTrainerProfile?trainerid=<s:property value="trainerId"/>"><s:property value="users.fullName" /></a>
						</h3>
						<em><s:property value="field.fieldName" /></em>
						
						<div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                    </div>



							<h5>Total Course: <s:property value="totalCourse" /></h5>

						<p>
							<s:property value="users.biography" />
						</p>
						
					</div>
				</s:iterator>

			</div>

			<br>
			
			-->
		</div>
	</div>
	<!-- Team block END -->
	<!-- COURSE BEGIN -->

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
		 <script src="admin/vendors/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
		 <script src="admin/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
	<script>
	 $(document).ready(function() {
		    $('#example').DataTable({
		        "bFilter": false,
		        "bLengthChange": false,
		    });
		} );
		jQuery(document).ready(function() {
			Layout.init();
		});
	</script>
	<!-- Global js END -->
</body>
</html>