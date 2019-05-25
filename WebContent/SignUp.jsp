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
      
      <!-- Theme styles END -->
      <style>
         #west{
         background: url(image/trainer.png) no-repeat top center;
         background-size: cover;
         }
         #east{
         background: url(image/learner.png) no-repeat top center;
         background-size: cover;
         }
         #signUpLearner {
         padding-top: 60px;
         padding-bottom: 60px;
         }
         h2, h3 {
         color: coral;
         }
         
.bad input,
.bad select,
.bad textarea {
    border: 1px solid #CE5454;
    box-shadow: 0 0 4px -2px #CE5454;
    position: relative;
    left: 0;
    -moz-animation: .7s 1 shake linear;
    -webkit-animation: .7s 1 shake linear
}
.item input,
.item textarea {
    transition: .42s
}
.item .alert {
    float: left;
    margin: 0 0 0 20px;
    padding: 3px 10px;
    color: #FFF;
    border-radius: 3px 4px 4px 3px;
    background-color: #CE5454;
    max-width: 200px;
    white-space: pre;
    position: relative;
    left: -15px;
    opacity: 0;
    z-index: 1;
    transition: .15s ease-out
}
.item .alert::after {
    content: '';
    display: block;
    height: 0;
    width: 0;
    border-color: transparent #CE5454 transparent transparent;
    border-style: solid;
    border-width: 11px 7px;
    position: absolute;
    left: -13px;
    top: 1px
}
.item.bad .alert {
    left: 0;
    opacity: 1
}
.inl-bl {
    display: inline-block
}


/* Base CSS */
.alignleft {
    float: left;
    margin-right: 15px;
}
.alignright {
    float: right;
    margin-left: 15px;
}
.aligncenter {
    display: block;
    margin: 0 auto 15px;
}
a:focus { outline: 0 solid }
img {
    max-width: 100%;
    height: auto;
}
.fix { overflow: hidden }
h1,
h2,
h3,
h4,
h5,
h6 {
    margin: 0 0 15px;
    font-weight: 700;
}
html,
body { height: 100% }

a {
    -moz-transition: 0.3s;
    -o-transition: 0.3s;
    -webkit-transition: 0.3s;
    transition: 0.3s;
    color: #333;
}
a:hover { text-decoration: none }



.search-box{margin:80px auto;position:absolute;}
.caption{margin-bottom:50px;}
.loginForm input[type=text], .loginForm input[type=password]{
	margin-bottom:10px;
}
.loginForm input[type=submit]{
	background:#fb044a;
	color:#fff;
	font-weight:700;
	
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


#pswd_info1 {
	background: #dfdfdf none repeat scroll 0 0;
	color: #fff;
	left: 20px;
	position: absolute;
	
}
#pswd_info1 h4{
    background: black none repeat scroll 0 0;
    display: block;
    font-size: 14px;
    letter-spacing: 0;
    padding: 17px 0;
    text-align: center;
    text-transform: uppercase;
}
#pswd_info1 ul {
    list-style: outside none none;
}
#pswd_info1 ul li {
   padding: 10px 45px;
}



.valid1 {
	background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/vq43s2wib/valid.png") no-repeat scroll 2px 6px;
	color: green;
	line-height: 21px;
	padding-left: 22px;
}

.invalid1 {
	background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/olmaj1p8z/invalid.png") no-repeat scroll 2px 6px;
	color: red;
	line-height: 21px;
	padding-left: 22px;
}



#pswd_info1 {
    display:none;
}
#aa {
padding-top: 0px;
}
      </style>
   </head>
   <!--DOC: menu-always-on-top class to the body element to set menu on top -->
   <body class="menu-always-on-top">
   <!-- Header -->
      
      <%@include file="common/Header.jsp" %>
      
      <!-- Header END -->
      <div class="grid">
         <!--Left side-->
         <div id="west" class="column effect-hover">
            <div class="content">
               <h2> <span>Người dạy</span></h2>
               <h3> WeTeach </h3>
               <p>Ấn Để Đăng Kí</p>
            </div>
         </div>
         <!--Right side-->
         <div id="east" class="column effect-hover">
            <div class="content">
               <h2><span>Người học</span></h2>
               <h3>WeTeach</h3>
               <p>Ấn Để Đăng Kí</p>
            </div>
         </div>
         <!--Logo-->
         <div id="logo">
         </div>
      </div>
      <!--Left side content-->
      <div id="west-overlay" class="overlay">
         <div class="grid">
            <div class="container">
               <!-- signUpLearner -->
               <div class="container" id="signUpLearner">
                  <form action="addTrainer" class="form-horizontal" method="post" enctype="multipart/form-data" novalidate>
                     <h1 style="color: black; padding: 10px 0px 20px 0px;">
                        <center>Người dạy</center>
                     </h1>
                     <% if(session.getAttribute("trainerErrorMessage")!=null) {%>
                     <p style="text-align: center"; color="red";>Tài khoản này đã tồn tại!</p>
                     <%} %>
                  
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Email * : </label>  
                        <div class="col-md-4">
                           <input required="required" type="email" name="userName" placeholder="Địa Chỉ Email" class="form-control" >
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Mật Khẩu*:</label>  
                        <div class="col-md-4">
                           <input id="p" type="password" name="passwordTrainer" placeholder="Nhập Mật Khẩu" class="form-control">
                        </div>
                     </div>
                     <div class="row">
                     <div class="col-md-3 col-md-offset-9">
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
                     
                     
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Xác Nhận Mật Khẩu*</label>  
                        <div class="col-md-4">
                           <input required="required" data-validate-linked="passwordTrainer" name="confirm_password" type="password" placeholder="Nhập Lại Mật Khẩu" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Tên Đầy Đủ*:</label>  
                        <div class="col-md-4">
                           <input required="required" data-validate-words="2" type="text" name="fullName" placeholder="Họ và tên" class="form-control">
                        </div>
                     </div>
                     <!-- image -->
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Chuyên Ngành*:</label>  
                        <div class="col-md-4">
                           <select name="fieldId">
                           <s:iterator value="fields">
                              <option value=<s:property value="fieldId"/>><s:property value="fieldName"/></option>
                              </s:iterator>
                           </select>
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Số Điện Thoại*:</label>  
                        <div class="col-md-4">
                           <input required="required" type="number" name="phoneNumber" placeholder="0969666682" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Địa Chỉ*:</label>  
                        <div class="col-md-4">
                           <input required="required" type="text" name="address" placeholder="Ha Noi - VietNam" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Tải CV*:<br> (File PDF)</label>
                         
                        <div class="col-md-4">
                           <input type="file" name="myFile" required id="main-input" class="form-control form-input form-style-base" accept="application/pdf"/>
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Đôi nét về bản thân*:</label>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-2 control-label"></label>
                        <div class="col-md-5">
                           <textarea required="required" name="biography" class="form-control" rows="5" id="comment" maxlength="200"></textarea>
                        </div>
                     </div>
                     <button type="submit" class="btn btn-success" style="width: 150px;" id="s">Đăng Kí</button>
                  </form>
               </div>
            </div>
         </div>
         <!--End Grid-->
         <div class="close-icon">
            <div></div>
            <div></div>
         </div>
      </div>
      <!--Right side content-->
      <div id="east-overlay" class="overlay">
         <div class="grid">
            <div class="container">
               <!-- signUpLearner -->
               <div class="container" id="signUpLearner">
                  <form action="addLearner" class="form-horizontal" method="post" enctype="multipart/form-data">
                     <h1 style="color: black; padding: 10px 0px 20px 0px;">
                        <center>Người học</center>
                     </h1>
                    
                     
                    
                     <% if(session.getAttribute("learnerErrorMessage")!=null) {%>
                     <p><%=session.getAttribute("learnerErrorMessage") %></p>
                     <%} %>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Email*:</label>  
                        <div class="col-md-4">
                           <input required="required" type="email" name="userName" placeholder="Địa chỉ Email" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Mật Khẩu*:</label>  
                        <div class="col-md-4">
                           <input id="p1" type="password" name="passwordLearner" placeholder="Nhập Mật Khẩu" class="form-control">
                        </div>
                        	
                     </div>
                     
                     <div class="row">
                     <div class="col-md-3 col-md-offset-9">
			<div class="aro-pswd_info1">
				<div id="pswd_info1">
					<h4>Mật Khẩu Phải Thỏa Mãn</h4>
					<ul>
					<li id="length1" class="invalid1">Phải Có Ít Nhất <strong>8 Kí Tự</strong></li>
						<li id="capital1" class="invalid1">Phải Có Ít Nhất <strong>1 Kí Tự In Hoa</strong></li>
						<li id="number1" class="invalid1">Phải Có Ít Nhất<strong>1 Chữ Số</strong></li>
						
						<li id="space1" class="invalid1">Phải Sử dụng <strong> 1 Kí Tự [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
					</ul>
				</div>
			</div>
		</div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Xác Nhận Mật Khẩu*:</label>  
                        <div class="col-md-4">
                           <input type="password" required="required" data-validate-linked="passwordLearner" placeholder="Nhập Lại Mật Khẩu" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Tên Đầy Đủ*:</label>  
                        <div class="col-md-4">
                           <input type="text" required="required" data-validate-words="2" name="fullName" placeholder="Họ Và Tên" class="form-control">
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Giới Tính*:</label>  
                        <div class="col-md-4">
                          <input type="radio" name="gender" value="1" autocomplete="off" checked> Nam
                          <input type="radio" name="gender" value="0" autocomplete="off"> Nữ
                        </div>
                     </div>
                     <!-- image -->
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Ngày Sinh*:</label>  
                        <div class="col-md-4">
                           <input type="date" required="required" name="dob" placeholder="mm/dd/yyyy" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Số Điện Thoại*:</label>  
                        <div class="col-md-4">
                           <input type="number" required="required" name="phoneNumber" placeholder="0969666682" class="form-control">
                        </div>
                     </div>
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Địa Chỉ*:</label>  
                        <div class="col-md-4">
                           <input type="text" required="required" name="address" placeholder="Ha Noi - VietNam" class="form-control">
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Công Việc*:</label>  
                        <div class="col-md-4">
                           
						<select name="jobId">
						<s:iterator value="jobs">
						  <option value=<s:property value="jobId"/>><s:property value="jobName"/></option>
						 </s:iterator>
						</select>
                        </div>
                     </div>
                     
                     <div class="item form-group">
                        <label class="col-md-2 col-md-offset-3 control-label">Đôi nét về bản thân*:</label>
                     </div>
                     <div class="form-group">
                        <label class="col-md-1 col-md-offset-2 control-label"></label>
                        <div class="col-md-6">
                           <textarea name="biography" required="required" class="form-control" rows="5" id="comment"  maxlength="200"></textarea>
                        </div>
                     </div>
                     <button type="submit" class="btn btn-success" style="width: 150px;" id="s">Đăng Kí</button>
                  </form>
                  
               </div>
            </div>
         </div>
         <!--End Grid-->
         <div class="close-icon">
            <div></div>
            <div></div>
         </div>
      </div>
      
      
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
	  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
	  <script src="validator/validator.js"></script>
	  <script src="validator/check.js"></script>
      <script>
      
      $(document).ready(function(){
    		
    		$('#p1').keyup(function() {
    			var pswd = $(this).val();
    			
    			//validate the length
    			if ( pswd.length < 8 ) {
    				$('#length1').removeClass('valid1').addClass('invalid1');
    			} else {
    				$('#length1').removeClass('invalid1').addClass('valid1');
    			}
    			
    			//validate letter
    			if ( pswd.match(/[A-z]/) ) {
    				$('#letter1').removeClass('invalid1').addClass('valid1');
    			} else {
    				$('#letter1').removeClass('valid1').addClass('invalid1');
    			}

    			//validate capital letter
    			if ( pswd.match(/[A-Z]/) ) {
    				$('#capital1').removeClass('invalid1').addClass('valid1');
    			} else {
    				$('#capital1').removeClass('valid1').addClass('invalid1');
    			}

    			//validate number
    			if ( pswd.match(/\d/) ) {
    				$('#number1').removeClass('invalid1').addClass('valid1');
    			} else {
    				$('#number1').removeClass('valid1').addClass('invalid1');
    			}
    			
    			//validate space
    			if ( pswd.match(/[^a-zA-Z0-9\-\/]/) ) {
    				$('#space1').removeClass('invalid1').addClass('valid1');
    			} else {
    				$('#space1').removeClass('valid1').addClass('invalid1');
    			}
    			
    		}).focus(function() {
    			$('#pswd_info1').show();
    		}).blur(function() {
    			$('#pswd_info1').hide();
    		});
    		
    		
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
             //Layout.init();
         });
		    
         // sign up trainer/learner
         
         function chekcSubmitType() {
                 if (document.getElementById('learner').checked) {
                     window.location = "SignUpLearner.html";
                 } else if (document.getElementById('trainer').checked) {
                     window.location = "SignUpTrainer.html";
                 }
             
             }
         
         // sign up learner/trainer profile
         
         $("#profileImage").click(function(e) {
                 $("#imageUpload").click();
             });
             
             function fasterPreview( uploader ) {
                 if ( uploader.files && uploader.files[0] ){
                       $('#profileImage').attr('src', 
                          window.URL.createObjectURL(uploader.files[0]) );
                 }
             }
             
             $("#imageUpload").change(function(){
                 fasterPreview( this );
             });
         
         
         
         // sign up
         
         $('input[id=main-input]').change(function() {
                                console.log($(this).val());
                                var mainValue = $(this).val();
                                if(mainValue == ""){
                                    document.getElementById("fake-btn").innerHTML = "Choose File";
                                }else{
                                    document.getElementById("fake-btn").innerHTML = mainValue.replace("C:\\fakepath\\", "");
                                }
                            });
         
         
         
         
         $(document).ready( function(){
         $("#west .content").click( function() {
         $("#west-overlay").addClass("animated fadeInLeft open").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
         $(this).removeClass("animated fadeInLeft");
         });
         $("#west-overlay .product-content").addClass("animated flipInY ").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
         $(this).removeClass("animated flipInY");
         }); 
         });
         $("#west-overlay .close-icon").click( function() {
         $("#west-overlay").addClass("animated flipOutY ").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
         $(this).removeClass("animated flipOutY open");
         }); 
         });
         $("#east .content").click( function() {
         $("#east-overlay").addClass("animated fadeInRight open").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
         $(this).removeClass("animated fadeInRight");
         }); 
         $("#east-overlay .product-content").addClass("animated flipInY ").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
         $(this).removeClass("animated flipInY");
         }); 
         });
         $("#east-overlay .close-icon").click( function() {
         $("#east-overlay").addClass("animated flipOutY ").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
         $(this).removeClass("animated flipOutY open");
         });     
         });  
         }); 
         
         
      </script>
      <!-- Global js END -->
      <%if(session.getAttribute("trainerErrorMessage")!=null)
      {%>
      <script>
      $("#west-overlay").addClass("animated fadeInLeft open").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
          $(this).removeClass("animated fadeInLeft");
          });
      </script>
          <%
      session.removeAttribute("trainerErrorMessage");
      } %>
    	
    	<%if(session.getAttribute("learnerErrorMessage")!=null)
      {%>
      <script>
      $("#east-overlay").addClass("animated fadeInRight open").one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
          $(this).removeClass("animated fadeInRight");
          }); 
      </script>
          <%
      session.removeAttribute("learnerErrorMessage");
      } %>
    	
   </body>
</html>