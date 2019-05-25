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
    <link
      href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
      rel="stylesheet">
    <!-- Theme styles END -->
    <style>
      .courseRight {
      }
      p.groove {
      border-style: groove;
      padding-left: 5px;
      }
      #publicProfile {
      margin-top: 10px;
      }
      .average-rate td {
      font-size: 115px;
      text-align: center;
      }
      .feedback {
      font-family: Lato;
      margin-top: 30px;
      }
      .feedback-textarea {
      resize: none;
      padding: 20px;
      height: 130px;
      width: 100%;
      border: 1px solid #F2F2F2;
      }
      .courseDetail {
      }
      .wrap {
      width: 220px;
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
      margin-top: 35px;
      cursor: pointer;
      width: 100%;
      text-align: center;
      }
      label[for=sb] {
      display: inline-block;
      border: 3px solid #ccc;
      color: #666;
      font-weight: bold;
      background: #eee;
      padding: 8px 15px;
      border-radius: 5px;
      margin-top: 35px;
      cursor: pointer
      }
      input[type="submit"] {
      display: inline-block;
      border: 3px solid #ccc;
      color: #666;
      font-weight: bold;
      background: #eee;
      padding: 8px 15px;
      border-radius: 5px;
      margin-top: 35px;
      cursor: pointer
      }
      label[for=upload]:hover {
      background: #ddd
      }
      label[for=upload] input {
      display: none
      }
      .thumb {
      position: relative;
      height: 220px;
      width: 220px;
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
      min-height: 220px;
      max-width: 220px;
      max-height: 220px;
      transition: all 0.4s;
      }
      .curriculum {
      padding-left: 110px;
      }
    </style>
  </head>
  <!--DOC: menu-always-on-top class to the body element to set menu on top -->
  <body class="menu-always-on-top" style="background-color: #fff">
    <!-- Header -->
    <%@include file="common/Header.jsp"%>
    <!-- Header END -->
    <div class="container" style="background-color: #f5f5f5;">
      <h1
        style="text-align: center; padding-bottom: 30px; padding-top: 75px;">Course</h1>
      <form action="updateCourse" method="post" enctype="multipart/form-data">
        <input type="hidden" name="courseId" value="<s:property value="course.courseId"/>">
        <div class="row courseDetail">
          <div class="col-md-6 col-md-offset-1">
            <div class="courseHead">
              <div class="form-group">
                <h3>
                  <strong>Tên Khóa Học</strong>
                </h3>
                <input type="text" name="title" class="form-control"
                  value="<s:property value="course.title"/>">
              </div>
              <div class="form-group">
                <h3>
                  <strong>Tên Gọi Khác</strong>
                </h3>
                <input type="text" name="subTitle" class="form-control"
                  value="<s:property value="course.subTitle"/>">
              </div>
              <div class="form-group">
                <h3>
                  <strong>Danh Mục</strong>
                </h3>
                <select name="categoryId">
                  <s:iterator value="categories">
                    <s:if test="%{course.category.categoryId==categoryId}">
                      <option selected value="<s:property value="categoryId"/>">
                        <s:property
                          value="categoryName" />
                      </option>
                    </s:if>
                    <s:else>
                      <option value="<s:property value="categoryId"/>">
                        <s:property
                          value="categoryName" />
                      </option>
                    </s:else>
                  </s:iterator>
                </select>
              </div>
              
              <div class="form-group">
                <h3>
                  <strong>Cấp độ</strong>
                </h3>
                <select name="levelId">
                  <s:iterator value="levels">
                    <s:if test="%{course.level.levelId==levelId}">
                      <option selected value="<s:property value="levelId"/>">
                        <s:property
                          value="levelName" />
                      </option>
                    </s:if>
                    <s:else>
                      <option value="<s:property value="levelId"/>">
                        <s:property
                          value="levelName" />
                      </option>
                    </s:else>
                  </s:iterator>
                </select>
              </div>
              
              <div class="form-group">
                <h3>
                  <strong>Ngôn ngữ</strong>
                </h3>
                <select name="languageId">
                  <s:iterator value="languages">
                    <s:if test="%{course.language.languageId==languageId}">
                      <option selected value="<s:property value="languageId"/>">
                        <s:property
                          value="languageName" />
                      </option>
                    </s:if>
                    <s:else>
                      <option value="<s:property value="languageId"/>">
                        <s:property
                          value="languageName" />
                      </option>
                    </s:else>
                  </s:iterator>
                </select>
              </div>
              
              <div class="learns">
                <h3>
                  <Strong>Lợi Ích Từ Khóa Học</Strong>
                </h3>
                <textarea class="form-control" name="answer3" rows="3"
                  placeholder="Describe yourself here..."><s:property
                  value="course.answer3" /></textarea>
              </div>
              <div class="requirements">
                <h3>
                  <strong>Yêu Cầu Khóa Học</strong>
                </h3>
                <textarea class="form-control" name="answer1" rows="3"
                  placeholder="Describe yourself here..."><s:property
                  value="course.answer1" /></textarea>
              </div>
              <div class="descriptions">
                <h3>
                  <strong>Mô Tả Khóa Học</strong>
                </h3>
                <textarea class="form-control" name="description" rows="3"
                  placeholder="Describe yourself here..."><s:property
                  value="course.description" /></textarea>
              </div>
              <div class="targetAud">
                <h3>
                  <strong>Đôi tượng Mục tiêu</strong>
                </h3>
                <textarea class="form-control" name="answer2" rows="3"
                  placeholder="Describe yourself here..."><s:property
                  value="course.answer2" /></textarea>
              </div>
              
            </div>
          </div>
          
          <div class="col-md-5">
            <div class="courseRight">
              <div class="wrap">
                <div class="thumb">
                  <img id="img"
                    src="<s:url action="course/displayCourseImage"> 
                  <s:param name="courseid">
                    <s:property value="course.courseId"/>
                  </s:param>
                  </s:url>"
                  alt="">
                </div>
      
      <label for="upload">Thay Đổi Ảnh<input type="file"
        name="myImage" id="upload" accept="image/*" />
      </label>      
      </div>
      <h3 style="text-align: center;">
      <strong>Học Phí : <input type="text" name="fee"
        value="<s:property value="course.fee"/>" style="width: 25%;"></strong>đ
      </h3>
      </div>
      <div class="curriculum">
                <h3><strong>Đề cương</strong></h3>
                <a
                  href="curriculumImageAction?courseId=<s:property value="course.courseId"/>">Xem đề cương</a>
                
                 <div class="file-upload">
    <label for="sb" class="file-upload__label">Chỉ cho phép file dạng pdf</label>
    <input id="sb" name="myFile" class="file-upload__input" type="file" name="file-upload" accept="application/pdf">
</div>
              </div>
              
               						<div class="form-group">
                                       
                                       <label>Video ngắn mô tả tổng quát về khóa học(nếu có)</label>
                                       <div class="col-md-12">
                                       <input type="text" name="video"
                                          placeholder="https://www.youtube.com/embed/" value="<s:property value="course.video"/>" class="form-control">
                                    </div>
                                    
                                    </div>
             

              
      </div>
      
      
      </div>
      <div
        style="text-align: center; padding-top: 50px; padding-bottom: 50px;">
        <button type="submit" class="btn btn-info" style="width: 200px;">Save</button>
      </div>
      </form>
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
    <script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script>
      tinymce
      		.init({
      			selector : "textarea",
      			plugins : [
      					"advlist autolink lists link image charmap print preview anchor",
      					"searchreplace visualblocks code fullscreen",
      					"insertdatetime media table contextmenu paste" ],
      			toolbar : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
      		});
      
      jQuery(document).ready(function() {
      	Layout.init();
      });
      
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
      		top : 0,
      		left : 0
      	});
      	preview(this);
      	$("#img").draggable({
      		containment : 'parent',
      		scroll : false
      	});
      });
    </script>
    <!-- Global js END -->
  </body>
</html>