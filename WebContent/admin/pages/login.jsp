<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.css" rel="stylesheet">
    <title>Administration</title>
</head>
  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="adminLogin" method="post">
              <h1><i class="fa fa-graduation-cap"></i> WE TEACH</h1>
              <div>
                <input type="text" class="form-control" name="username" placeholder="Username" required />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required />
              </div>
              <% if(session.getAttribute("loginError") != null){
            	  %>
            	   <h3>Tài khoản hoặc mật khẩu không chính xác!</h3>
              <% 
              	session.setAttribute("loginError", null);
              } %>
             
              <div>
             	<button type="submit" class="btn btn-primary">Đăng nhập</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <div>
                  <p>©2017 All Rights Reserved. We Teach</p>
                </div>
              </div>
            </form>
          </section>
        </div>

      </div>
    </div>
  </body>
</html>