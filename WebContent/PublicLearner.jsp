<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
      <link href="assets/plugins/star-rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
      <!-- Theme styles END -->
      
   </head>
   <!--DOC: menu-always-on-top class to the body element to set menu on top -->
   <body class="menu-always-on-top" style="background-color: #c2dfe8;">
	   <div id="container">
	   
	   <!-- Header -->
	   
		<%@include file="common/Header.jsp" %>
		
      <!-- Header END -->
      <!-- Promo block BEGIN -->
      <div class="promo-block" id="promo-block">
      </div>
	   <div class="container">
      <div class="public-profile" id="publicProfile">
         <div class="row">
            <div class="public-trainer col-md-3">
               <div class="profile-userpic">
                  <img src=" <s:url action="ImageAction" >
                        <s:param name="userid"><s:property value="learner.users.userId"/></s:param>
                     </s:url>" alt="">
               </div>
               <!-- END SIDEBAR USERPIC -->
               <!-- SIDEBAR USER TITLE -->
               <div class="profile-usertitle">
                  <div class="profile-usertitle-name">
                     <s:property value="learner.users.fullName"/>
                  </div>
                  <div class="profile-usertitle-job">
                     Người Học
                  </div>
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
      <input type="hidden" name="userName" value="<s:property value="learner.users.userName" />">
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
                 
               </div>
            </div>
            <div class="col-md-8">
               <form class="form-horizontal">
                  <h3>Thông Tin Người Học</h3>
                  <br>
                  <div class="form-group">
                     <label class="col-md-2 control-label">Email</label>  
                     <div class="col-md-4">
                        <p><s:property value="learner.users.userName"/></p>
                     </div>
                     <label class="col-md-3 control-label">Loại Tài Khoản</label>
                     <div class="col-md-3">
                        <p>Người Học</p>
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="col-md-2 control-label">Công Việc</label>  
                     <div class="col-md-4">
                          <p>  <s:property value="learner.job.jobName"/></p>
                           </div>
                     <label class="col-md-3 control-label">Số Điện Thoại</label>
                     <div class="col-md-3">
                       <p><s:property value="learner.users.phoneNumber"/></p>
                     </div>
                  </div>
                  <div class="form-group">
					  <label class="col-md-2 control-label">Giới Tính</label>  
                     <div class="col-md-4">
                     <p>
                               <s:if test="%{learner.gender==0}">
                               Nam</s:if>
                               <s:else>Nữ</s:else>      </p>                          
                           </div>
                           
                     <label class="col-md-3 control-label">Ngày Sinh</label>  
                     <div class="col-md-3">
                       <p><s:date name="learner.dob" format="dd/MM/yyyy" /></p>
                     </div>
                  </div>
                  <div class="form-group">
					  <label class="col-md-2 control-label">Về Tôi</label>  
                           <div class="col-md-8">
                           </div>
                     <div class="col-md-10 col-md-offset-2">
                       
                       
                       <p style="border-style: groove;"><s:property value="learner.users.biography"/></p>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
      
      <div class="tab-content">
		  
         <div class="tab-pane active" id="course">
            <div class="course-profilePB">
               <div class="row">
                  <div class="" align="center">
                     <button class="btn btn-default filter-button" data-filter="all">Tất Cả Lịch Sử</button>
                    
                  </div>
                  <br/>
                  
				   <s:iterator value="learner.histories">
				   
                  <div class="gallery_product col-lg-3 col-md-3 col-sm-3 col-xs-6 filter popular">
                  <a href="courseDetail?courseId=<s:property value="course.courseId"/>" target="_blank">
                     <img src="<s:url action="course/displayCourseImage"> 
                            <s:param name="courseid">
                                <s:property value="course.courseId"/>
                            </s:param>
                         </s:url>" class="img-responsive">
                         </a>
                     <div class="profile-usertitle">
                        <div class="profile-usertitle-name">
                           <s:property value="course.title"/>
                        </div>
                        <div class="profile-usertitle-job">
                           Giá : <s:property value="course.fee"/>
                        </div>
                        
                        <div class="profile-usertitle-name">
                           <div class="rating">
                      <input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                    </div>
                        </div>
                     </div>
                  </div>
                  
				   </s:iterator>

				   
				   
               </div>
            </div>
         </div>
		  

		  
		  
      </div>
	   
	   
	   </div>
	   </div>
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
      <script src="assets/plugins/star-rating/js/star-rating.js" type="text/javascript"></script>
      <script>
         jQuery(document).ready(function() {
             Layout.init();
         });
         
         $(document).ready(function(){
         $(".filter-button").click(function(){
             var value = $(this).attr('data-filter');
             
             if(value == "all")
             {
                 //$('.filter').removeClass('hidden');
                 $('.filter').show('1000');
             }
             else
             {
         //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
         //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
                 $(".filter").not('.'+value).hide('3000');
                 $('.filter').filter('.'+value).show('3000');
                 
             }
         });
         
         if ($(".filter-button").removeClass("active")) {
         $(this).removeClass("active");
         }
         $(this).addClass("active");
         
         });
      </script>
      <!-- Global js END -->
   </body>
</html>