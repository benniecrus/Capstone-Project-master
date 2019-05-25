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
      <link
         href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
         rel="stylesheet">
      <!-- Theme styles END -->
      <style>
         .item {
         padding-left: 0px;
         padding-bottom: 10px;
         }
         .target-item {
         padding-bottom: 10px;
         }
         .end-item {
         padding-bottom: 10px;
         }
         input:focus {
         outline: ;
         }
         .blink_me {
         -webkit-animation-name: blinker;
         -webkit-animation-duration: 1s;
         -webkit-animation-timing-function: linear;
         -moz-animation-name: blinker;
         -moz-animation-duration: 1s;
         -moz-animation-timing-function: linear;
         animation-name: blinker;
         animation-duration: 1s;
         animation-timing-function: linear;
         }
         @ -moz-keyframes blinker {
         0% {
         opacity: 1.0;
         }
         50% {
         opacity: 0 .0;
         }
         100% {
         opacity: 1 .0;
         }
         }
         @ -webkit-keyframes blinker {
         0% {
         opacity: 1.0;
         }
         50% {
         opacity: 0 .0;
         }
         100% {
         opacity: 1 .0;
         }
         }
         @ keyframes blinker {
         0% {
         opacity: 1.0;
         }
         50% {
         opacity: 0 .0;
         }
         100% {
         opacity: 1 .0;
         }
         }
         .course-goal h4 {
         text-align: left;
         padding-bottom: 5px;
         }
         .add-answer {
         text-align: left;
         padding-left: 0px;
         color: #5f6f7e;
         font-size: 18px;
         }
         .add-answer a {
         text-decoration: none;
         }
         .item input {
         width: 90%;
         height: 35px;
         }
         .target-item input {
         width: 90%;
         height: 35px;
         }
         .end-item input {
         width: 90%;
         height: 35px;
         }
         #del {
         padding-left: 10px;
         font-size: 18px
         }
         .curriculum {
         padding-top: 50px;
         }
         .btn-select {
         position: relative;
         padding: 0;
         min-width: 175px;
         width: 100%;
         border-radius: 0;
         }
         .btn-select .btn-select-value {
         padding: 6px 12px;
         display: block;
         position: absolute;
         left: 0;
         right: 34px;
         text-align: left;
         text-overflow: ellipsis;
         overflow: hidden;
         border-top: none !important;
         border-bottom: none !important;
         border-left: none !important;
         }
         .btn-select .btn-select-arrow {
         float: right;
         line-height: 20px;
         padding: 6px 10px;
         top: 0;
         background-color: #78828c;
         }
         .btn-select ul {
         display: none;
         background-color: white;
         color: black;
         clear: both;
         list-style: none;
         padding: 0;
         margin: 0;
         border-top: none !important;
         position: absolute;
         left: -1px;
         right: -1px;
         top: 33px;
         z-index: 999;
         }
         .btn-select ul li {
         padding: 3px 6px;
         text-align: left;
         }
         .btn-select ul li:hover {
         background-color: #f4f4f4;
         }
         .btn-select ul li.selected {
         color: white;
         }
         /* Primary Start */
         .btn-select.btn-primary:hover,
         .btn-select.btn-primary:active,
         .btn-select.btn-primary.active {
         border-color: #286090;
         }
         .btn-select.btn-primary ul li.selected {
         background-color: #2e6da4;
         color: white;
         }
         .btn-select.btn-primary ul {
         border: #2e6da4 1px solid;
         }
         .btn-select.btn-primary .btn-select-value {
         background-color: #428bca;
         border: #2e6da4 1px solid;
         }
         .btn-select.btn-primary:hover,
         .btn-select.btn-primary.active {
         background-color: #286090;
         }
         /* Primary End */
         .btn-select.btn-select-light .btn-select-value {
         background-color: white;
         color: black;
         }
         .course-landing {
         text-align: left;
         padding-left: 80px;
         padding-right: 80px;
         }
         /* course image */
         .wrap {
         width: 300px;
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
         cursor: pointer
         }
         label[for=upload-video] {
         display: inline-block;
         border: 3px solid #ccc;
         color: #666;
         font-weight: bold;
         background: #eee;
         padding: 8px 15px;
         border-radius: 5px;
         cursor: pointer
         }
         label[for=upload]:hover {
         background: #ddd
         }
         label[for=upload-video]:hover {
         background: #ddd
         }
         label[for=upload] input {
         display: none
         }
         .thumb {
         position: relative;
         height: 260px;
         width: 300px;
         overflow: hidden;
         margin: 5px 0;
         cursor: move;
         }
         label[for=upload-video] input {
         display: none
         }
         .thumb {
         position: relative;
         height: 260px;
         width: 300px;
         overflow: hidden;
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
         min-height: 250px;
         max-width: 250px;
         max-height: 250px;
         transition: all 0.4s;
         }
         .btn-info {
         background-color: #78828c;
         }
         .nextPre a {
         text-decoration: none;
         display: inline-block;
         padding: 8px 16px;
         }
         .nextPre a:hover {
         background-color: #ddd;
         color: black;
         }
         .previous {
         background-color: #f1f1f1;
         color: black;
         }
         .next {
         background-color: #78828c;
         color: white;
         }
         .profile-sidebar {
         min-height: 638px;
         margin-top: 0px;
         padding: 20px 0 10px 0;
         color: white;
         /*background-color: #C8E7C1; */
         background-color: #f6f6f6;
         }
         .btn-info
{
    background:#43a2ec;
    border:none;
    border-radius:0px;
}
.btn-info:hover
{
    background:white;
    color:red;
    border:red solid 1px;
}

      </style>
   </head>
   
   <!--DOC: menu-always-on-top class to the body element to set menu on top -->
   <body class="menu-always-on-top">
     
     
         <%@include file="common/Header.jsp"%>
 <!--Auth -->
   <%
   		if(Integer.parseInt(session.getAttribute("status").toString())==3) {
			response.sendRedirect("initIndex.action");
		}
	%>
	<!--Auth -->    
 <div id="container">
       
         <div class="container" id="profileTrainer">
            <div id="trainer-profile" class="row profile">
               <div class="col-md-3">
                  <div class="profile-sidebar">
                     <h3 style="color: #78828c;">Tên Khóa Học</h3>
                     <!-- SIDEBAR USERPIC -->
                     <!-- END SIDEBAR USERPIC -->
                     <!-- SIDEBAR USER TITLE -->
                     <div class="profile-usertitle">
                        <div class="profile-usertitle-name">
                           <s:property value="user.fullName" />
                        </div>
                     </div>
                     <hr>
                     <!-- END SIDEBAR BUTTONS -->
                     <!-- SIDEBAR MENU -->
                     <div class="profile-usermenu">
                        <ul class="nav" id="myProfile">
                           <li class="active"><a href="#goal" data-toggle="tab"> <i
                              class="glyphicon glyphicon-home"></i> Mục Tiêu
                              </a>
                           </li>
                           <li><a href="#course-landing" data-toggle="tab"
                              target="_blank"> <i class="glyphicon glyphicon-ok"></i>
                              Thông Tin Khóa Học
                              </a>
                           </li>
                           <li><a href="#curriculum" data-toggle="tab"> <i
                              class="glyphicon glyphicon-user"></i> Đề Cương khóa Học
                              </a>
                           </li>
                        </ul>
                     </div>
                     <!-- END MENU -->
                  </div>
               </div>
               <div class="col-md-9">
                  <form action="addNewCourse" role="form" method="post"
                     enctype="multipart/form-data">
                     <div class="tab-content trainer-profile">
                        <!-- view profile -->
                        <div class="tab-pane active" id="goal">
                           <div class="course-goal">
                              <h3>Mục Tiêu</h3>
                              <div class="row">
                                 <h4>Yêu Cầu Khóa Học</h4>
                                 <input id="hide" type="text" data-toggle="collapse"
                                    data-target="#1" placeholder="" class="form-control"
                                    onclick="myHide()">
                                 <div id="1" class="collapse">
                                    <div class="well" id="well">
                                       <div class="form-group">
                                          <textarea class="form-control" name="answer1" rows="3"></textarea>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <h4>Đối Tượng Mục tiêu</h4>
                                 <input id="hide1" type="text" data-toggle="collapse"
                                    data-target="#2" placeholder="" class="form-control"
                                    onclick="myHide1()">
                                 <div id="2" class="collapse">
                                    <div class="well" id="well">
                                       <div class="form-group">
                                          <textarea class="form-control" name="answer2" rows="3"
                                             placeholder=""></textarea>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <h4>Lợi Ích Từ Khóa Học
                                 </h4>
                                 <input id="hide2" type="text" data-toggle="collapse"
                                    data-target="#3" placeholder="" class="form-control"
                                    onclick="myHide2()">
                                 <div id="3" class="collapse">
                                    <div class="well" id="well">
                                       <div class="form-group">
                                          <textarea class="form-control" name="answer3" rows="3"
                                             placeholder="Describe yourself here..."></textarea>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <br>
                           </div>
                           <br>
                           <div class="nextPre">
                              <a href="#course-landing" data-toggle="tab" class="next">Tiếp Theo
                              &raquo;</a>
                           </div>
                           <br>
                        </div>


                        <!--My messeage -->
                        <div class="tab-pane" id="course-landing">
                           <h3>Thông Tin Khóa Học</h3>
                           
                           <div class="course-landing">
                              <div class="form-group">
                                 <div class="row">
                                    <label class="col-md-4">Tên Khóa Học</label>
                                    <div class="col-md-12">
                                       <input type="text" name="courseTitle" required
                                          placeholder="" class="form-control">
                                    </div>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <div class="row">
                                    <label class="col-md-4" Course Subtitle>Mô Tả Ngắn Gọn</label>
                                    <div class="col-md-12">
                                       <input type="text" name="courseSubTitle" required
                                          placeholder=""
                                          class="form-control">
                                    </div>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <div class="row">
                                    <label class="col-md-4">Mô Tả Khóa Học</label>
                                    <div class="col-md-12">
                                       <textarea class="form-control" name="courseDescription"
                                          rows="4"></textarea>
                                    </div>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <div class="row">
                                    <label class="col-md-4"  Course Subtitle>Thông Tin Khác</label>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-4">
                                       <label for="currency">Danh Mục</label> 
                                       <select
                                          class="form-control" id="currency" name="categoryId">
                                          <s:iterator value="categories">
                                             <option value=
                                             <s:property value="categoryId" />
                                             >
                                             <s:property
                                                value="categoryName" />
                                             </option>
                                          </s:iterator>
                                       </select>
                                    </div>
                                    <div class="col-md-4">
                                       <label for="currency">Cấp Độ</label> 
                                       <select
                                          class="form-control" id="currency" name="levelId">
                                          <s:iterator value="levels">
                                             <option value=
                                             <s:property value="levelId" />
                                             >
                                             <s:property
                                                value="levelName" />
                                             </option>
                                          </s:iterator>
                                       </select>
                                    </div>
                                    <div class="col-md-4">
                                       <label for="currency">Ngôn Ngữ</label> 
                                       <select
                                          class="form-control" id="currency" name="languageId">
                                          <s:iterator value="languages">
                                             <option value=
                                             <s:property value="languageId" />
                                             >
                                             <s:property
                                                value="languageName" />
                                             </option>
                                          </s:iterator>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <div class="row feeCourse">
                                    <div class="col-md-4">
                                       <label for="course-price">Học Phí - VND</label> <input
                                          type="number" required name="price" class="form-control"
                                          id="course-price">
                                    </div>
                                     
                                    <br>
                                 </div>
                              </div>
                              
                            <div class="form-group">
                                       
                                       <label>Video ngắn mô tả tổng quát về khóa học(nếu có)</label>
                                       <div class="col-md-12">
                                       <input type="text" name="video"
                                          placeholder="https://www.youtube.com/embed/" class="form-control">
                                    </div>
                                    
                                    </div>
                                    <br>
                                    <br>
                                    
                              <div class="form-group">
                                 <div class="row">
                                    <div class="col-md-12">
                                       <label>Hình Ảnh</label>
                                    </div>
                                    <div class="col-md-6">
                                       <div class="wrap">
                                          <div class="thumb">
                                             <img id="img" src="image/weteach_back.jpg" />
                                          </div>
                                          <label for="upload" style="width: 85%; text-align: center">Tải Hình Ảnh<input type="file" required name="courseImage"
                                             id="upload" />
                                          </label>
                                       </div>
                                    </div>
                                    <div class="col-md-6">
                                       <p>
                                       
                                       Xem lại hình ảnh của khóa học . Kích thước ảnh nên để 2048 x 1152 . Định dạnh jpg, jpef, png...
                                       
                                       </p>
                                    </div>
                                    
                                   
                                    
                                 </div>
                              </div>
                           </div>
                           <div class="nextPre">
                              <a href="#course-goal" data-toggle="tab" class="previous">&laquo;
                              Trở Lại</a> <a href="#curriculum" data-toggle="tab" class="next">Tiếp Theo
                              &raquo;</a>
                           </div>
                           <br>
                        </div>
                        
                        
                        <div class="tab-pane" id="curriculum">
                           <h3>Đề Cương</h3>
                           <br>
                         
                           <p>Tải Đề Cương Mẫu <a target="_blank" href="https://drive.google.com/open?id=0BwGb6hMxkSEzTk1jemxTMC1mMlk"> Tại Đây</a></p>
                           <p>Chỉ chấp nhận file PDF</p>
                           <div class="row setup-content" id="step-1">
                              <div class="col-md-4 col-md-offset-4 well text-center">
                                 <input type="file" name="curriculum" id="fileToUpload"
                                    onchange="fileSelected();" accept="application/pdf"/>
                              </div>
                              <div class="col-md-4 col-md-offset-4">
                                 <p id="fileName"></p>
                                 <p id="fileSize"></p>
                                 <p id="fileType"></p>
                                 <div id="progressNumber"></div>
                              </div>
                           </div>
                          	<button type="submit" class="btn btn-info btn-lg">Tạo Khóa Học</button>
	                         
						   <br>
                           <br>
                           <div class="nextPre">
                              <a href="#course-landing" data-toggle="tab" class="previous">&laquo;
                              Trở Lại</a> 
                           </div>
                        </div>
                        
                        
                        
                     </div>
                     
                  </form>
               </div>
               
            
</div>
         
      </div>
      </div>
      
      
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
      <script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
      <script>
      
 
		function clicked() {
		    alert('Add new course successfully and please waiting for review courses');
		}

      
      
         
         
         // upload curriculum
         $('input[id=main-input]').change(function() {
             console.log($(this).val());
             var mainValue = $(this).val();
             if (mainValue == "") {
                 document.getElementById("curriculum").innerHTML = "Choose File";
             } else {
                 document.getElementById("curriculum").innerHTML = mainValue.replace("C:\\fakepath\\", "");
             }
         });
         
         
         
         
         $(document).ready(function() {
             $(".btn-select").each(function(e) {
                 var value = $(this).find("ul li.selected").html();
                 if (value != undefined) {
                     $(this).find(".btn-select-input").val(value);
                     $(this).find(".btn-select-value").html(value);
                 }
             });
         });
         
         $(document).on('click', '.btn-select', function(e) {
             e.preventDefault();
             var ul = $(this).find("ul");
             if ($(this).hasClass("active")) {
                 if (ul.find("li").is(e.target)) {
                     var target = $(e.target);
                     target.addClass("selected").siblings().removeClass("selected");
                     var value = target.html();
                     $(this).find(".btn-select-input").val(value);
                     $(this).find(".btn-select-value").html(value);
                 }
                 ul.hide();
                 $(this).removeClass("active");
             } else {
                 $('.btn-select').not(this).each(function() {
                     $(this).removeClass("active").find("ul").hide();
                 });
                 ul.slideDown(300);
                 $(this).addClass("active");
             }
         });
         
         $(document).on('click', function(e) {
             var target = $(e.target).closest(".btn-select");
             if (!target.length) {
                 $(".btn-select").removeClass("active").find("ul").hide();
             }
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
                 top: 0,
                 left: 0
             });
             preview(this);
             $("#img").draggable({
                 containment: 'parent',
                 scroll: false
             });
         });
         
         
         function preview1(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function(e) {
                     $('#img-video').attr('src', e.target.result);
                 }
                 reader.readAsDataURL(input.files[0]);
             }
         }
         
         $("#upload-video").change(function() {
             $("#img-video").css({
                 top: 0,
                 left: 0
             });
             preview1(this);
             $("#img-video").draggable({
                 containment: 'parent',
                 scroll: false
             });
         });
         
         
         // course -goal
         tinymce.init({
             selector: "textarea",
             plugins: [
                 "advlist autolink lists link image charmap print preview anchor",
                 "searchreplace visualblocks code fullscreen",
                 "insertdatetime media table contextmenu paste"
             ],
             toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
         });
         
         function myHide() {
             var x = document.getElementById('hide');
             x.style.display = 'none';
         }
         
         function myHide1() {
             var x = document.getElementById('hide1');
             x.style.display = 'none';
         }
         
         function myHide2() {
             var x = document.getElementById('hide2');
             x.style.display = 'none';
         }
         
         
         
         function fileSelected() {
             var file = document.getElementById('fileToUpload').files[0];
             if (file) {
                 var fileSize = 0;
                 if (file.size > 1024 * 1024)
                     fileSize = (Math.round(file.size * 100 / (1024 * 1024)) / 100).toString() + 'MB';
                 else
                     fileSize = (Math.round(file.size * 100 / 1024) / 100).toString() + 'KB';
         
                 document.getElementById('fileName').innerHTML = 'Name: ' + file.name;
                 document.getElementById('fileSize').innerHTML = 'Size: ' + fileSize;
                 document.getElementById('fileType').innerHTML = 'Type: ' + file.type;
             }
         }
         
         function uploadFile() {
             var fd = new FormData();
             fd.append("fileToUpload", document.getElementById('fileToUpload').files[0]);
             var xhr = new XMLHttpRequest();
             xhr.upload.addEventListener("progress", uploadProgress, false);
             xhr.addEventListener("load", uploadComplete, false);
             xhr.addEventListener("error", uploadFailed, false);
             xhr.addEventListener("abort", uploadCanceled, false);
             xhr.open("POST", "UploadMinimal.aspx");
             xhr.send(fd);
         }
         
         function uploadProgress(evt) {
             if (evt.lengthComputable) {
                 var percentComplete = Math.round(evt.loaded * 100 / evt.total);
                 document.getElementById('progressNumber').innerHTML = percentComplete.toString() + '%';
             } else {
                 document.getElementById('progressNumber').innerHTML = 'unable to compute';
             }
         }
         
         function uploadComplete(evt) {
             /* This event is raised when the server send back a response */
             alert(evt.target.responseText);
         }
         
         function uploadFailed(evt) {
             alert("There was an error attempting to upload the file.");
         }
         
         function uploadCanceled(evt) {
             alert("The upload has been canceled by the user or the browser dropped the connection.");
         }
         

         jQuery(document).ready(function() {
             Layout.init();
         });
      </script>
      <!-- Global js END -->
   </body>
</html>