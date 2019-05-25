<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="shortcut icon" href="assets/onepage/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="assets/onepage/img/favicon.ico" type="image/x-icon">
<style>
#logoHeader {
	font-size: 25px;
	padding-top: 12px;
	padding-left: 70px;
}
</style>
<head>
<meta charset="utf-8">
<title>WeTeach - Kết Nối Giáo Dục</title>
</head>
<body>
	<div class="header header-mobi-ext">
		<div class="container">
			<div class="row">
				<!-- Logo BEGIN -->
				<div class="col-md-2 col-sm-2">
					<a href="initIndex" class="scroll site-logo" id="logoHeader"><strong>WeTeach</strong></a>
				</div>
				<!-- Logo END -->
				<a href="javascript:void(0);" class="mobi-toggler"><i
					class="fa fa-bars"></i></a>
				<!-- Navigation BEGIN -->
				<div class="col-md-10 pull-right">
					<ul class="header-navigation">

						<li><a href="initIndex"><span class="glyphicon glyphicon-home"></span> Trang Chủ</a></li>
						<li class="dropdown"><a href="initCourse"><span class="glyphicon glyphicon-book"></span> Khóa Học</a>
							<div class="dropdown-content">
								<s:iterator value="categories">
									<a
										href="getCourseByCategoryId?categoryId=<s:property value="categoryId"/>"><s:property
											value="categoryName" /></a>
								</s:iterator>
							</div></li>

						<li><a href="initTrainer"><span
								class="glyphicon glyphicon-education"></span> Người Dạy</a></li>

						<%
							if (session.getAttribute("usname") == null && session.getAttribute("status") == null) {
						%>


						<li><a href="initSignUp"><i
								class="glyphicon glyphicon-user"></i> Đăng Kí</a></li>
						<li class="page-scroll dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <span
								class="glyphicon glyphicon-log-in"></span> Đăng Nhập
						</a>

							<ul class="dropdown-menu dropdown-menu-right"
								style="padding-top: 20px; min-width: 233px;">
								<li>
									<div class="row">
										<div class="col-md-12">
											<form action="login" class="form" method="post">
												<div class="form-group">
													<input type="email" name="userName" class="form-control"
														placeholder="Email address" required>
												</div>
												<div class="form-group">
													<input type="password" name="password" class="form-control"
														placeholder="Password" required>
												</div>
												<div class="form-group">
													<button type="submit" class="btn btn-success btn-block">Đăng Nhập</button>
													<br>
													<center>
														<a class="password" href="forgetPassword.jsp">Quên Mật Khẩu</a>
													</center>
												</div>
												
												<div class="form-group">
													<div id="bbb">
														<br>
														<center>Bạn Chưa Có Tài Khoản?</center>
														<center>
															<a href="initSignUp">Đăng Kí</a>
														</center>
													</div>
												</div>
											</form>
										</div>
									</div>
								</li>
								<li></li>
							</ul></li>

						<%
							} else {
						%>

						<li class="dropdown">
						<%if(Integer.parseInt(session.getAttribute("status").toString())==3){ %>
						 <div style="color:grey;"><%=session.getAttribute("name") %> <span class="caret"></span></div>
						<%}else if(Integer.parseInt(session.getAttribute("status").toString())==1){ %>
						<div style="color:red;"><%=session.getAttribute("name") %> <span class="caret"></span></div>
						<%}else if(Integer.parseInt(session.getAttribute("status").toString())==0){ %>
						<div style="color:red;"><%=session.getAttribute("name") %> <span class="caret"></span></div>
						<%} %>
						<div class="dropdown-content">
                        <%if(session.getAttribute("role").equals("trainer")){ 
                        	if(Integer.parseInt(session.getAttribute("status").toString())==3){%>
                        		<a href="#" style="color:red;">Bạn đã bị cấm hoạt động! </a>
                        	<% }else if(Integer.parseInt(session.getAttribute("status").toString())==0){%>
                        		<a href="#" style="color:grey;">Đang chờ kiểm duyệt </a>
                        	<%}else if(Integer.parseInt(session.getAttribute("status").toString())==1){%>
                           <a class="disabled" href="initAddCourse?usname=<%=session.getAttribute("usname") %>">Tạo Khóa Học Mới</a>
                           <a href="initCourseManagement">Quản Lí Khóa Học</a>
                           <a href="getTrainerProfile">Thông Tin Cá Nhân</a>
                           <a href="getMessage">Tin Nhắn</a>
                           <%}}else{
                           		if(Integer.parseInt(session.getAttribute("status").toString())==3){
                           %>
                           		<a href="#" style="color:red;">Bạn đã bị cấm hoạt động! </a>
                           <% }else{%>
                        	   <a href="getLearnerProfile">Thông Tin Cá Nhân</a>
                          	   <a href="getMessage">Tin Nhắn</a>
                           <% }} %>
                           <a href="logout">Đăng Xuất</a>
                          
                        </div>
                     </li>
                     <%if(session.getAttribute("numberOfnotyetSeen")!=null && (int)session.getAttribute("numberOfnotyetSeen")>0) {%>
                     
					 <li><a><span class="glyphicon glyphicon-bell"></span><%=session.getAttribute("numberOfnotyetSeen") %></a></li>
					 
						<%
                     }else{%>
                     <li><a><span class="glyphicon glyphicon-bell"></span></a></li>
                     <%}
							}
						%>
						<li><a href="#search"><span
								class="glyphicon glyphicon-search"></span> Tìm Kiếm</a></li>
					</ul>
					<div id="search">
						<button type="button" class="close">x</button>
						<form action="searchCourse">
							<input name="searchString" type="search" value="" placeholder="Tìm Khóa Học Dành Cho Bạn ..." />
							<button type="submit" class="btn btn-primary">Tìm Kiếm</button>
						</form>
					</div>
				</div>
				<div class="row">
				  <div class="col-md-1"></div>
				  <div class="col-md-4"></div>
				  <div class="col-md-4">
		  			<%
						if (session.getAttribute("errorLoginMessage") != null) {
							
					%>
					<div class="alert alert-danger">
						<p class="alert-text">Email hoặc mật khẩu không chính xác!</p>
					</div>
					<%
					session.setAttribute("errorLoginMessage", null);
					} %>
				  </div>
				</div>
				
				<!-- Navigation END -->
			</div>
		</div>
	</div>
</body>
</html>