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
      <!-- Theme styles END -->
      <style>
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
         cursor: pointer
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
         a.btn:hover {
         -webkit-transform: scale(1.1);
         -moz-transform: scale(1.1);
         -o-transform: scale(1.1);
         }
         a.btn {
         -webkit-transform: scale(0.8);
         -moz-transform: scale(0.8);
         -o-transform: scale(0.8);
         -webkit-transition-duration: 0.5s;
         -moz-transition-duration: 0.5s;
         -o-transition-duration: 0.5s;
         }
        
         #document {
         }
         .image-preview-input {
         position: relative;
         overflow: hidden;
         margin: 0px;    
         color: #333;
         background-color: #fff;
         border-color: #ccc;    
         }
         .image-preview-input input[type=file] {
         position: absolute;
         top: 0;
         right: 0;
         margin: 0;
         padding: 0;
         font-size: 20px;
         cursor: pointer;
         opacity: 0;
         filter: alpha(opacity=0);
         }
         .image-preview-input-title {
         margin-left:2px;
         }
         #myModal {
         padding-left: 300px;
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
      
      
      
      <div class="container" id="profileTrainer"">
      
         <div id="trainer-profile" class="row profile">
         
            <div class="col-md-3">
               <div class="profile-sidebar">
                  <!-- SIDEBAR USERPIC -->
                  <div class="profile-userpic">
                     <div class="wrap">
                        <div class="thumb">
                           <img id="img"
                              src=" <s:url action="ImageAction" >
                           <s:param name="userid">
                              <s:property value="user.userId"/>
                           </s:param>
                           </s:url>"
                           alt="" />
                        </div>
                        <form action="updateAvatar" method="post"
                           enctype="multipart/form-data">
                           <label for="upload">Thay<input type="file"
                              name="myFile" id="upload" accept="image/*" required />
                           </label> <label><input type="submit" value="Lưu"></label>
                        </form>
                     </div>
                  </div>
                  <!-- END SIDEBAR USERPIC -->
                  <!-- SIDEBAR USER TITLE -->
                  <div class="profile-usertitle">
                     <div class="profile-usertitle-name">
                        <s:property value="user.fullName" />
                     </div>
                     <div class="profile-usertitle-job">Người Dạy</div>
                  </div>
                  <!-- END SIDEBAR USER TITLE -->
                  <!-- SIDEBAR BUTTONS -->
                  <!-- END SIDEBAR BUTTONS -->
                  <!-- SIDEBAR MENU -->
                  <div class="profile-usermenu">
                     <ul class="nav" id="myProfile">
                        <li >
                           <a href="initCourseManagement"><i class="glyphicon glyphicon-tasks"></i>Quản Lí Khóa Học</a>
                        </li>
                        <li ><a href="#profile" data-toggle="tab">
                           <i class="glyphicon glyphicon-home"></i>Thông Tin Cá Nhân
                           </a>
                        </li>
                        
                        <li><a href="getMessage">
                           <i class="glyphicon glyphicon-envelope"></i> Tin Nhắn</a>
                        </li>
                        <li><a href="#certificate" data-toggle="tab"> <i
                           class="glyphicon glyphicon-book"></i>Chứng Chỉ
                           </a>
                        </li>
                        <li><a
                           href="publicTrainerProfile?trainerid=<s:property value="trainer.trainerId"/>">
                           <i class="glyphicon glyphicon-flag"></i>Thông Tin Người Dạy
                           </a>
                        </li>
                        <li><a href="#account" data-toggle="tab"> <i
                           class="glyphicon glyphicon-user"></i>Cài đặt Tài khoản
                           </a>
                        </li>
                     </ul>
                  </div>
                  <!-- END MENU -->
               </div>
            </div>
            
            
            <div class="col-md-9">
            
               <div class="tab-content trainer-profile">
                  <!-- view profile -->
                  <div class="tab-pane" id="profile">
                     <h4>Thông Tin Cá Nhân</h4>
                     <h5 style="text-align: left">Thông Tin Cơ Bản</h5>
                     
                     <form class="form-horizontal" action="updateTrainerProfile">
                        <input type="hidden" name="userid" value="user.userId">
                        <div class="form-group">
                           <label class="col-md-2 control-label">Tên </label>
                           <div class="col-md-8">
                              <input type="text" name="fullName" placeholder="Nguyen Van A"
                                 class="form-control"
                                 value="<s:property value="user.fullName"/>">
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Chuyên Ngành</label>
                           <div class="col-md-8">
                              <select name="fieldId">
                                 <s:iterator value="fields">
                                    <s:if test="%{trainer.field.fieldId==fieldId}">
                                       <option selected value=
                                       <s:property value="fieldId"/>
                                       >
                                       <s:property
                                          value="fieldName" />
                                       </option>
                                    </s:if>
                                    <s:else>
                                       <option value=
                                       <s:property value="fieldId"/>
                                       >
                                       <s:property
                                          value="fieldName" />
                                       </option>
                                    </s:else>
                                 </s:iterator>
                              </select>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Số Điện Thoại</label>
                           <div class="col-md-8">
                              <input type="text" name="phoneNumber"
                                 placeholder="0966668888" class="form-control"
                                 value="<s:property value="user.phoneNumber"/>">
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-2 control-label">Địa Chỉ</label>
                           <div class="col-md-8">
                              <input type="text" name="address" placeholder="HCM - Viet Nam"
                                 class="form-control"
                                 value="<s:property value="user.address"/>">
                           </div>
                        </div>
                        
                       
                        <div class="form-group">
                          
                           <label class="col-md-2 control-label">Về Tôi</label>
                           <div class="col-md-8">
                           <textarea class="form-control" name="biography" rows="4"
                                    id="introduction"><s:property
                                    value="user.biography" /></textarea>
                                    
                                    
                               
                             </div>
                          
                           
                          
                        </div>
                         
                        
                        <div class="form-group">
                           <label class="col-md-3 control-label"></label>
                           <div class="col-md-3">
                              <button id="up" type="submit" class="btn btn-primary">Lưu</button>
                           </div>
                        </div>
                     </form>
                     <br>
                  </div>
                  
                  
                  
                  
                  
                  <!-- account -->
                  <div class="tab-pane active" id="account">
                     <h4>Cài Đặt Tài Khoản</h4>
                     <br>
                     <form action="changeTrainerPassword" class="form-horizontal">
                        <div class="form-group">
                           <label class="col-md-3 control-label">Tên</label>
                           <div class="col-md-6">
                              <input type="text" placeholder="Nguyen Van A"
                                 class="form-control"
                                 value="<s:property value="user.fullName"/>" disabled>
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="col-md-3 control-label">Email</label>
                           <div class="col-md-6">
                              <input type="text" placeholder="nguyenvana@gmail.com"
                                 class="form-control"
                                 value="<s:property value="user.userName"/>" disabled>
                           </div>
                        </div>
                        
                        <div class="item form-group">
                           <label class="col-md-3 control-label">Mật Khẩu Hiện Tại</label>
                           <div class="col-md-6">
                              <input type="password" name="oldPassword"
                                 placeholder="Nhập Mật Khẩu Hiện Tại" class="form-control" required>
                           </div>
                        </div>
                        
                        
                        
                        <div class="item form-group">
                           <label class="col-md-3 control-label">Mật Khẩu Mới</label>
                           <div class="col-md-6">
                              <input id="p" type="password" name="newPassword"
                                 placeholder="Nhập Mật Khẩu Mới" class="form-control">
                           </div>
                        </div>
                        <div class="item form-group">
                           <label class="col-md-3 control-label">Xác Nhận Mật Khẩu</label>
                           <div class="col-md-6">
                              <input type="password" placeholder="Xác Nhận Mật Khẩu" data-validate-linked="newPassword" 
                                 class="form-control" required>
                           </div>
                        </div>
                        <br>
                        <div class="form-group">
                           <label class="col-md-3 control-label"></label>
                           <div class="col-md-3">
                              <button id="up" type="submit" class="btn btn-primary">Cập Nhật</button>
                           </div>
                        </div>
                        
                        <div class="row">
                     <div class="col-md-3 col-md-offset-3">
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
                     </form>
                  </div>
                  
                  
                  
                  <!--My messeage -->
                  <div class="tab-pane" id="messeage">
                  
                  </div>
              
              
              
              
                  <div class="tab-pane" id="certificate">
                  
                     <h3>Chứng Chỉ</h3>
                     <br>
                     <div class="row" id="menuDocument">
                        <div class="">
                           <a href="#" class="btn btn-primary a-btn-slide-text"
                              data-toggle="modal" data-target="#myModal"> <span
                              class="glyphicon glyphicon-plus" aria-hidden="true"></span> <span><strong>Tạo Chứng chỉ Mới</strong></span>
                           </a> 
                        </div>
                        <br>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                           aria-labelledby="myModalLabel" aria-hidden="true">
                           <div class="modal-dialog">
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"
                                       aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">Tạo Chứng Chỉ mới
                                    </h4> 
                                 </div>
                                 <form action="addDocument" method="post" enctype="multipart/form-data">
                                    <div class="modal-body">
                                       <h4>Mô tả Chứng Chỉ</h4>
                                       <input type="text" style="width: 80%;" name="description"
                                          placeholder="Miêu tả">
                                       <div class="row">
                                          <br>
                                          <div class="col-md-8 col-md-offset-2">
                                             <!-- image-preview-filename input [CUT FROM HERE]-->
                                             <div class="input-group image-preview">
                                                <input type="text"
                                                   class="form-control image-preview-filename">
                                                <!-- don't give a name === doesn't send on POST/GET -->
                                                <span class="input-group-btn">
                                                   <!-- image-preview-clear button -->
                                                   <button type="button"
                                                      class="btn btn-default image-preview-clear"
                                                      style="display: none;">
                                                   <span class="glyphicon glyphicon-remove"></span> Xóa
                                                   </button> <!-- image-preview-input -->
                                                   <div class="btn btn-default image-preview-input">
                                                      <span class="glyphicon glyphicon-folder-open"></span> <span
                                                         class="image-preview-input-title">Chọn File</span> <input
                                                        required type="file" accept="application/pdf"
                                                         name="myFile" />
                                                      <!-- rename it -->
                                                   </div>
                                                </span>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="modal-footer">
                                       <button type="button" class="btn btn-default"
                                          data-dismiss="modal">Đóng</button>
                                       <button type="submit" class="btn btn-primary">Gửi Chờ Duyệt</button>
                                    </div>
                                 </form>
                              </div>
                           </div>
                        </div>
      
                  </div>
                  
                  <div class="row">
                      
                           <div class="col-md-6">
                              <div class="thumbnail">
                                 <object data="cvImageAction?trainerid=<s:property value="trainer.trainerId"/>" type="application/pdf"></object>
								<br>
								<a href="cvImageAction?trainerid=<s:property value="trainer.trainerId"/>">Xem CV</a>
                              </div>
                           </div>
                           
                           <s:iterator value="trainer.documents">
                           
                           <div class="col-md-6">
                              <div class="thumbnail">
                                 <object
                                    data="document/displayDocument?documentid=<s:property value="documentId"/>"
                                 type="application/pdf" id="document"></object>
                                 <br> <a
                                    href="document/displayDocument?documentid=<s:property value="documentId"/>">
                                Xem Chứng Chỉ </a>
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
         <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
	  <script src="validator/validator.js"></script>
	  <script src="validator/check.js"></script>
      <script>
      
      
      $(document).ready(function(){
  		
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
         // add new documents
         
         	function centerModal() {
         		$(this).css('display', 'block');
         		var $dialog = $(this).find(".modal-dialog");
         		var offset = ($(window).height() - $dialog.height()) / 2;
         		// Center modal vertically in window
         		$dialog.css("margin-top", offset);
         	}
         
         	$('.modal').on('show.bs.modal', centerModal);
         	$(window).on("resize", function() {
         		$('.modal:visible').each(centerModal);
         	});
         
         	// upload documents
         	$(document).on('click', '#close-preview', function(){ 
            $('.image-preview').popover('hide');
            // Hover befor close the preview    
         });
         
         $(function() {
            // Create the close button
            var closebtn = $('<button/>', {
                type:"button",
                text: 'x',
                id: 'close-preview',
                style: 'font-size: initial;',
            });
            closebtn.attr("class","close pull-right");
         
            // Clear event
            $('.image-preview-clear').click(function(){
                $('.image-preview').attr("data-content","").popover('hide');
                $('.image-preview-filename').val("");
                $('.image-preview-clear').hide();
                $('.image-preview-input input:file').val("");
                $(".image-preview-input-title").text("Browse"); 
            }); 
            // Create the preview image
            $(".image-preview-input input:file").change(function (){     
                var img = $('<img/>', {
                    id: 'dynamic',
                    width:250,
                    height:200
                });      
                var file = this.files[0];
                var reader = new FileReader();
                // Set preview image into the popover data-content
                reader.onload = function (e) {
                    $(".image-preview-input-title").text("Change");
                    $(".image-preview-clear").show();
                    $(".image-preview-filename").val(file.name);
                }        
                reader.readAsDataURL(file);
            });  
         });
         	
         	
         	jQuery(document).ready(function() {
         		Layout.init();
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
      
      <%if(session.getAttribute("errorMessage")!=null){ %>
      	<script>
      		alert("Sai mật khẩu. Đổi mật khẩu thất bại.");
      	</script>
      
      <%session.removeAttribute("errorMessage");} %>
      
      <%if(session.getAttribute("successMessage")!=null){ %>
      	<script>
      		alert("Đổi mật khẩu thành công");
      	</script>
      
      <%session.removeAttribute("successMessage");} %>
      <!-- Global js END -->
   </body>
</html>