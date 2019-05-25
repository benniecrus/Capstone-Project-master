<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Administration </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="indexAdmin" class="site_title"><i class="fa fa-graduation-cap"></i> <span>WeTeach</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Xin chào,</span>
                <%	if (session.getAttribute("username") != null && session.getAttribute("role").equals("admin")) { %>
                	<h2><%=session.getAttribute("username").toString().toUpperCase() %></h2>
                <%}else{ %>
        		<jsp:forward page="../common/403.jsp"></jsp:forward>
        	<%} %>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Quản lý chung</h3>
                <ul class="nav side-menu">
                  <li><a href="indexAdmin"><i class="fa fa-home"></i> Trang chủ</a></li>
                  <li><a><i class="fa fa-user"></i> Quản lý người dùng <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="showadmin">Quản trị viên</a></li>
                      <li><a href="showLearner">Người học</a></li>
                      <li><a href="showTrainer">Người dạy</a></li>
                    </ul>
                  </li>
                  <li><a href="reviewTrainer"><i class="fa fa-clock-o"></i> Người dạy mới
                 <%	if (session.getAttribute("newtrainer") != null && Integer.parseInt(session.getAttribute("newtrainer").toString()) > 0) { %>
	                	 <span style="margin-top: -15px;" class="badge bg-green"><%=session.getAttribute("newtrainer").toString() %></span>
		          <%}%>
                 </a></li>
                  <li><a href="viewCourse"><i class="fa fa-book"></i> Quản lý khóa học</a></li>
                  <li><a href="reviewCourse"><i class="fa fa-clock-o"></i> Khóa học mới 
                  <%	if (session.getAttribute("newcourse") != null && Integer.parseInt(session.getAttribute("newcourse").toString()) > 0) { %>
	                	 <span style="margin-top: -15px;" class="badge bg-green"><%=session.getAttribute("newcourse").toString() %></span>
		          <%}%>
                  </a></li>
                  
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

           
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt=""><%	if (session.getAttribute("username") != null) { %>
                		<%=session.getAttribute("username").toString().toUpperCase() %>
                	<%}else{ %>
                		<jsp:forward page="adminLogin"></jsp:forward>
                	<%} %>
                	
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="adminLogout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
</html>