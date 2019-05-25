<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
</head>
  <%@include file ="../common/header.jsp" %>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="clearfix"></div>

            <div class="row">
               <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Danh sách khóa học</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Tiêu đề</th>
                          <th>Tác giả</th>
                          <th>Danh mục</th>
                          <th>Đánh giá</th>
                          <th>Số lượt view</th>
                          <th>Trạng thái</th>
                          <th class="none">Quản lý</th>
                        </tr>
                      </thead>
					  <tbody>		  
					  	<s:iterator value="courses">
					  		<s:set name="stt" value="status"/>
					  		<s:set name="rating" value="rate"/>
					  		<tr>
	                          <td><s:property value="title"/></td>
	                          <td><s:property value="trainer.users.fullName"/></td>
	                          <td style="text-align: right"><s:property value="category.categoryName"/></td>
	                          <td width="15%" style="text-align: right">
	                          <p class="ratings">
	                          <s:property value="rate"/>
	                          <span style="display:inline-block; width: 20px;"></span>
	                          <s:if test="%{#rating == 0}">
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          </s:if>
	                          <s:elseif test="%{#rating <= 1}">
	                          	<span  style="color:yellow" class="fa fa-star"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          </s:elseif>
	                          	
	                          <s:elseif test="%{#rating <= 2}">
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span  class="fa fa-star-o"></span>
	                          	<span  class="fa fa-star-o"></span>
	                          	<span  class="fa fa-star-o"></span>
	                          </s:elseif>
	                          	
	                          <s:elseif test="%{#rating <= 3}">
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span class="fa fa-star-o"></span>
	                          	<span class="fa fa-star-o"></span>
	                          </s:elseif>
	                          	
	                          <s:elseif test="%{#rating <= 4}">
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span class="fa fa-star-o"></span>
	                          </s:elseif>
	                          	
	                          <s:elseif test="%{#rating <= 5}">
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          	<span style="color:yellow" class="fa fa-star"></span>
	                          </s:elseif>
	                          </p>	
	                          </td>
	                          <td width="13%" style="text-align: center"><s:property value="totalView"/></td>
	                          <td style="text-align: center">
	                          	<s:if test="%{#stt == 1}"><button type="button" class="btn btn-success btn-xs"><i class="fa fa-check"></i> Đã kiểm duyệt</button></s:if>
	                          </td>
	                          <td>
	                          		<button type="button" class="btn btn-primary btn-xs" onClick="window.open('../../courseDetail?courseId=<s:property value="courseId"/>');"> <i class="fa fa-user"></i>
                                                        <i class="fa fa-eye"></i> Xem chi tiết</button>
	                          		<button type="button" class="btn btn-primary btn-xs"  onClick="window.open('../../initEditCoursel?courseId=<s:property value="courseId"/>');"> <i class="fa fa-user"></i> 
			                              	<i class="fa fa-pencil-square"></i> Sửa khóa học</button>
	                                <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#<s:property value="courseId"/>2"><i class="fa fa-user">
		                                  	</i> <i class="fa fa-ban"></i> Xóa</button>
	                          	</td>
	                           <!-- Modal block-->
								<div class="modal fade" id="<s:property value="courseId"/>2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Xác nhận</h4>
								      </div>
								      <div class="modal-body">
								        <h2>Bạn có chắc muốn xóa khóa học này?</h2>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
								      	<button type="button" onclick="location.href='admindeleteCourse?courseid=<s:property value="courseId"/>'" class="btn btn-danger">Xóa</button>
								      </div>
								    </div>
								  </div>
								</div>
							<!-- Modal block-->
							</tr>
					  	</s:iterator>
                      </tbody>
                      
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
         
          
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

  </body>
</html>