<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
      <link href="assets/plugins/star-rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
      <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
      <!-- Theme styles END -->
      <style>
         .footer {
         height:50px;   /* Height of the footer */
         background: #2C3E50;;
         }
         #management {
         padding-top: 70px;
         }
      </style>
   </head>
   <!--DOC: menu-always-on-top class to the body element to set menu on top -->
   <body class="menu-always-on-top">
      <!-- Header -->
      <%@include file="common/Header.jsp" %>
      <!--Auth -->
   <%
   		if(Integer.parseInt(session.getAttribute("status").toString())==3) {
			response.sendRedirect("initIndex.action");
		}
	%>
	<!--Auth -->
      <div class="container" id="management" style="min-height: 100%;">
         <h1 style="text-align: center; padding-bottom: 20px;">Quản Lí Khóa Học</h1>
         <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
               <tr>
                  <th style="text-align: center;">Tên Khóa Học</th>
                  <th style="text-align: center;">Danh Mục</th>
                  <th style="text-align: center;">Đánh Giá</th>
                  <th style="text-align: center;">Quản Lý</th>
               </tr>
            </thead>
            <tfoot>
	            <tr>
	              <th></th>
                  <th style="text-align: center;"></th>
                  <th style="text-align: center;"> </th>
                  <th style="text-align: center;"></th>
	            </tr>
	        </tfoot>
            <tbody>
               <s:iterator value="courses">
                  <tr>
                     <td style="text-align: left;">
                        <a href="courseDetail?courseId=<s:property value="courseId"/>
                           ">
                           <s:property value="title"/>
                        </a>
                     </td>
                     <td style="text-align: left;">
                        <s:property value="category.categoryName"/>
                     </td>
                     <td style="text-align: right;">
                        <div class="rating">
                        	<input id="input" value='<s:property value="rate" />' data-size="xs" class="rating rating-loading">
                        </div>
                     </td>
                     <s:if test="%{status==1}">
                     <td style="text-align: center;">
                        <a href="initEditCourse?courseId=<s:property value="courseId"/>">Chỉnh Sửa</a> |
                        <a href="deleteCourse?courseId=<s:property value="courseId"/>" onclick="return confirm('Are you sure?')">Xóa</a> |
                        <a href="viewStatistic?courseId=<s:property value="courseId"/>&categoryId=<s:property value="category.categoryId"/>">Xem Thống Kê</a>
                     </td>
                     </s:if>
                     <s:else>
                     <td style="text-align: center;">
                     	Đang chờ kiểm duyệt.
                     </td>
                     </s:else>
                  </tr>
               </s:iterator>
            </tbody>
         </table>
      </div>
     <%@include file="common/footer.jsp"%>
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
      <script src="admin/vendors/datatables.net/js/jquery.dataTables.js" type="text/javascript"></script>
      <script src="assets/plugins/star-rating/js/star-rating.js" type="text/javascript"></script>
      <script>
         $(document).ready(function() {
       	 $('#example').DataTable( {
             initComplete: function () {
                 this.api().columns(1).every( function () {
                     var column = this;
                     var select = $('<select><option value="">Hiển thị tất cả</option></select>')
                         .appendTo( $(column.footer()).empty() )
                         .on( 'change', function () {
                             var val = $.fn.dataTable.util.escapeRegex(
                                 $(this).val()
                             );
         
                             column
                                 .search( val ? '^'+val+'$' : '', true, false )
                                 .draw();
                         } );
         
                     column.data().unique().sort().each( function ( d, j ) {
                         select.append( '<option value="'+d+'">'+d+'</option>' )
                     } );
                 } );
             }
         } );
         } );
            
      </script>
      <!-- Global js END -->
   </body>
</html>