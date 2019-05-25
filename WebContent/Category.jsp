<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
      /* courser list */
      .menu-course {
      padding-top: 15px;
      padding-left: 5px;
      font-size: 18px;
      font-weight: 500;
      min-height: 400px;
      }
      ul {
      list-style-type: none;
      }
      .btn-default {
      border: 0px;
      }
      .courses-list {
      /*  border-left: 2px solid #5f6f7e;*/
      background-color: white;
      padding-left: 5px;
      text-align: left;
      padding-left: 5px;
      }
      #listCate {
      padding-bottom: 50px;
      }
      #us {
      padding-bottom: 50px;
      }
      #bbb {
      text-align: center;
      font-size: 15px;
      }
      /* search course list */
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
      .glyphicon-search {
      color: white;
      }
      #course-content {
      padding-bottom: 20px;
      }
      #b {
      width: 21.5%;
      position: relative;
      left: 67.5%;
      }
      #clist {
      padding-left: 15px;
      }
      .courses-list li {
      padding-bottom: 10px;
      }
      .course-menu li {
      float: left;
      }
      .nav>li {
      position: relative;
      display: block;
      }
      .course-menu {
      font-size: 20px;
      }
      .courseTrainer {
      min-height: 250px;
      background-color: white;
      }
      .courseLevel {
      min-height: 150px;
      background-color: white;
      }
      .content h2 {
    font: 400 37px "PT Sans Narrow", Arial, sans-serif;
    margin: 0 0 10px;
    text-transform: uppercase;
    text-align: center;
    color: #FFA717;
    padding-bottom: 0px;
   padding-top: 70px;
}
    </style>
  </head>
  <!--DOC: menu-always-on-top class to the body element to set menu on top -->
  <body class="menu-always-on-top">
    <!-- Header -->
    <%@include file="common/Header.jsp" %>
    <!-- Header END -->
    <div class="promo-block" id="promo-block">
    </div>
    <!-- COURSE BEGIN -->
    <div class="about-block content content-center" id="about">
      <div class="container information generic">
        
        <h2 >Danh Sách Khóa Học</h2>
        <br>
        
        <br>
        <div class="row">
          <div class="col-md-3" id="menu-course">
            <div class="course-menu">
              <ul class="nav">
                <li class="active"><a>Theo Các Lĩnh Vực</a></li>
              </ul>
            </div>
            <div class="courses-list">
              <ul class="menu-course">
                <s:iterator value="categories">
                  <li>
                    <a href="getCourseByCategoryId?categoryId=<s:property value="categoryId"/>
                      ">
                      <s:property value="categoryName"/>
                    </a>
                  </li>
                </s:iterator>
              </ul>
            </div>
            
          </div>
          <div class="col-md-9">
            <div class="course-menu">
              <ul class="nav" style="margin-left: 150px;">
               <li class="active"><a
				data-toggle="tab" href="#mostPopular">Được Quan Tâm Nhất</a></li>
			<li></span><a
				data-toggle="tab" href="#highRate">Đánh Giá Cao Nhất</a></li>
			<li><a
				data-toggle="tab" href="#new">Mới Nhất</a></li>
              </ul>
            </div>
            
            <div class="tab-content">
		<div id="mostPopular" class="tab-pane active">
			<!-- COURSE BEGIN -->
			
			
			<table id="example">
        <thead>
            <tr>
                <th></th>
                
            </tr>
        </thead>
       
        <tbody>
            <tr>
                <td>
                <div class="row" id="listCate">
              <s:iterator value="topView">
                <div class="item col-md-4" id="course-content">
                  <div class="blok-read-sm">
                    <a href="courseDetail?courseId=<s:property value="courseId"/>
                      " class="hover-image">
                      <img src="<s:url action="course/displayCourseImage"> 
                      <s:param name="courseid">
                        <s:property value="courseId"/>
                      </s:param>
                      </s:url>" alt="image">
                      
                    </a>
                    <div class="info-text visible-md visible-lg">
                      <span class="left-text">
                        <s:property value="fee"/>đ
                      </span>
                      <span class="right-text">
                        <s:property value="level.levelName"/>
                      </span>
                    </div>
                    <div class="content-block">
                      <span class="point-caption bg-blue-point"></span>
                      <span class="bottom-line bg-blue-point"></span>
                      <h4>
                        <s:property value="title"/>
                      </h4>
                      <p>
											<s:property value="trainer.users.fullName" />
										</p>
                      
                      
                    <div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                    </div>
                      
                      <div class="like-wrap" id="clist">
                        <a href="#"><i class="fa fa-eye"></i></a>
                        <span>
                          <s:property value="totalView"/>
                        </span>
                        <a href="#"><i class="fa fa-comment col-green"></i></a>
                        <span>
                          <s:property value="totalComment"/>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </s:iterator>
              <br>
            </div>
                </td>
               
            </tr>
           
        </tbody>
    </table>
		
			
			
			
			
			
			 
			<!-- COURSE END -->
		</div>
		<div id="highRate" class="tab-pane">
		
		
		
		
		
			
			
			<table id="example1">
        <thead>
            <tr>
                <th></th>
                
            </tr>
        </thead>
       
        <tbody>
            <tr>
                <td>
               
		
			 <div class="row" id="listCate">
              <s:iterator value="topRate">
                <div class="item col-md-4" id="course-content">
                  <div class="blok-read-sm">
                    <a href="courseDetail?courseId=<s:property value="courseId"/>
                      " class="hover-image">
                      <img src="<s:url action="course/displayCourseImage"> 
                      <s:param name="courseid">
                        <s:property value="courseId"/>
                      </s:param>
                      </s:url>" alt="image">
                      
                    </a>
                    <div class="info-text visible-md visible-lg">
                      <span class="left-text">
                        <s:property value="fee"/>đ
                      </span>
                      <span class="right-text">
                        <s:property value="level.levelName"/>
                      </span>
                    </div>
                    <div class="content-block">
                      <span class="point-caption bg-blue-point"></span>
                      <span class="bottom-line bg-blue-point"></span>
                      <h4>
                        <s:property value="title"/>
                      </h4>
                      <p>
											<s:property value="trainer.users.fullName" />
										</p>
                      
                      
                    <div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                    </div>
                      
                      <div class="like-wrap" id="clist">
                        <a href="#"><i class="fa fa-eye"></i></a>
                        <span>
                          <s:property value="totalView"/>
                        </span>
                        <a href="#"><i class="fa fa-comment col-green"></i></a>
                        <span>
                          <s:property value="totalComment"/>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </s:iterator>
              <br>
            </div>
                </td>
               
            </tr>
           
        </tbody>
    </table>
		
			
			
			
			
			
			 
		
		
		
			<!-- COURSE END -->
		</div>
		
		
		<div id="new" class="tab-pane">
		
		
		
		
		<table id="example2">
        <thead>
            <tr>
                <th></th>
                
            </tr>
        </thead>
       
        <tbody>
            <tr>
                <td>
               <div class="row" id="listCate">
              <s:iterator value="topNew">
                <div class="item col-md-4" id="course-content">
                  <div class="blok-read-sm">
                    <a href="courseDetail?courseId=<s:property value="courseId"/>
                      " class="hover-image">
                      <img src="<s:url action="course/displayCourseImage"> 
                      <s:param name="courseid">
                        <s:property value="courseId"/>
                      </s:param>
                      </s:url>" alt="image">
                      
                    </a>
                    <div class="info-text visible-md visible-lg">
                      <span class="left-text">
                        <s:property value="fee"/>đ
                      </span>
                      <span class="right-text">
                        <s:property value="level.levelName"/>
                      </span>
                    </div>
                    <div class="content-block">
                      <span class="point-caption bg-blue-point"></span>
                      <span class="bottom-line bg-blue-point"></span>
                      <h4>
                        <s:property value="title"/>
                      </h4>
                      <p>
											<s:property value="trainer.users.fullName" />
										</p>
                    
                      
                    <div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                    </div>
                      
                      <div class="like-wrap" id="clist">
                        <a href="#"><i class="fa fa-eye"></i></a>
                        <span>
                          <s:property value="totalView"/>
                        </span>
                        <a href="#"><i class="fa fa-comment col-green"></i></a>
                        <span>
                          <s:property value="totalComment"/>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </s:iterator>
              <br>
            </div>
                </td>
               
            </tr>
           
        </tbody>
    </table>
		
			 
			<!-- COURSE END -->
		</div>
	</div>
            
     
            
            
          
          </div>
          
        </div>
      </div>
    </div>
    <!-- COURSE END -->
    <!-- BEGIN FOOTER -->
    <%@include file="common/footer.jsp"%>
    <!-- END FOOTER -->
    <a href="#promo-block" class="go2top scroll"><i class="fa fa-arrow-up"></i></a>
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>
    <![endif]-->
    <!-- Load JavaScripts at the bottom, because it will reduce page load time -->
    <!-- Core plugins BEGIN (For ALL pages) -->
    <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Core plugins END (For ALL pages) -->
     <script src="assets/plugins/star-rating/js/star-rating.js" type="text/javascript"></script>
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
    <script src="admin/vendors/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
	<script src="admin/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script>
    $(document).ready(function() {
	    $('#example').DataTable({
	    	"bFilter": false,
	        "bLengthChange": false,    
		});
	    $('#example1').DataTable({
	        "bFilter": false,
	        "bLengthChange": false,
	    });
	    $('#example2').DataTable({
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