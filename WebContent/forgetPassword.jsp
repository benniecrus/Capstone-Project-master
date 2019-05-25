<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
      <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Pathway+Gothic+One|PT+Sans+Narrow:400+700|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
      <!-- Fonts END -->
      <!-- Global styles BEGIN -->
      <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
      <!-- Global styles END -->
      <!-- Page level plugin styles BEGIN -->
      <link href="assets/pages/css/animate.css" rel="stylesheet">
      <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
      <!-- Page level plugin styles END -->
      <!-- Theme styles BEGIN -->
      <link href="assets/pages/css/components.css" rel="stylesheet">
      <link href="assets/pages/css/slider.css" rel="stylesheet">
      <link href="assets/onepage/css/style.css" rel="stylesheet">
      <link href="assets/onepage/css/style-responsive.css" rel="stylesheet">
      <link href="assets/onepage/css/themes/red.css" rel="stylesheet" id="style-color">
      <link href="assets/onepage/css/custom.css" rel="stylesheet">
      <!-- Theme styles END -->
       <style>
		 .forgetPassWord {
		 
		     min-height: 100%;
    padding-top: 150px;
		 }  
		 
		 .btn-primary {
		  background-color: #5f6f7e;
		 }
		
      </style>
   </head>
   <!--DOC: menu-always-on-top class to the body element to set menu on top -->
   <body class="menu-always-on-top">
       
      <!-- Header -->
      
      <%@include file="common/Header.jsp" %>
     
 
<div class="container forgetPassWord">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Quên mật khẩu?</h2>
                  <p>Lấy lại mật khẩu tại đây.</p>
                  <div class="panel-body">
    
                    <form action="sendMail" id="register-form" role="form" autocomplete="off" class="form" method="post">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input id="email" name="to" placeholder="email address" class="form-control"  type="email">
                        </div>
                      </div>
                      <div class="form-group">
                        <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Tạo lại mật khẩu" type="submit">
                      </div>
                       <div class="form-group">
                      	<%if(session.getAttribute("successReset") != null){ %>  
                        <h4>Mật khẩu mới đã được gửi vào email của bạn!</h4>
                      	<%
                      		session.setAttribute("successReset", null);	  
                      	}else if(session.getAttribute("invalidAccount") != null){ %>
                      	<h4 style:"color=red;">Email này không tồn tại!</h4>
                      	<% session.setAttribute("invalidAccount", null);
                      	} %>
                      </div>
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
    
	   
	   
	   
      <!-- BEGIN FOOTER -->
      <div class="footer">
                <div class="container">
                    <div class="row">
                        <!-- BEGIN COPYRIGHT -->
                        <div class="col-md-4 col-sm-4">
                            <div class="copyright">2017 © WeTeach. ALL Rights Reserved.</div>
                        </div>
                        <!-- END COPYRIGHT -->
                        <!-- BEGIN SOCIAL ICONS -->
                        <div class="col-md-3 col-sm-4">
                            <ul class="social-icons">
                                <li>
                                    <a class="facebook" data-original-title="facebook" href="javascript:void(0);"></a>
                                </li>
                                <li>
                                    <a class="googleplus" data-original-title="googleplus" href="javascript:void(0);"></a>
                                </li>
                            </ul>
                        </div>
                        <!-- END SOCIAL ICONS -->
                        <!-- BEGIN COPYRIGHT -->
                        <div class="col-md-4 col-sm-4 text-right">
                            <div class="copyright"><a>WeTeach.com</a>
                            </div>
                        </div>
                        <!-- END COPYRIGHT -->
                    </div>
                </div>
            </div>
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
      <script>
         jQuery(document).ready(function() {
             Layout.init();
         });
      </script>
      <!-- Global js END -->
   </body>
</html>