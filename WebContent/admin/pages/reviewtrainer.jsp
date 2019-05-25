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
                    <h2>Người dạy chờ được kiểm duyệt</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Họ Tên</th>
                          <th>Chuyên Ngành</th>
                          <th>Địa chỉ</th>
                          <th>Xem thông tin</th>
                          <th width="15%">Trạng thái</th>
                          <th>Quản lý</th>
                        </tr>
                      </thead>
					  <tbody>		  
					  	<s:iterator value="waitList">
					  		<s:set name="stt" value="users.status"/>
					  		<tr>
	                          <td><s:property value="users.fullName"/></td>
	                          <td><s:property value="field.fieldName"/></td>
	                          <td><s:property value="users.address"/></td>
	                          <td>
	                          <button type="button" class="btn btn-primary btn-xs" onClick="window.open('../../publicTrainerProfile?trainerid=<s:property value="trainerId"/>');"> <i class="fa fa-user"></i>
                                                        <i class="fa fa-eye"></i> Xem trang cá nhân</button>
	                          
	                          <button type="button" class="btn btn-primary btn-xs" onClick="window.open('cvImageAction?trainerid=<s:property value='trainerId'/>');"> <i class="fa fa-file-text"></i>
                                                        <i class="fa fa-eye"></i> Xem CV</button>
	                          
                              </td>
	                          <td><button class="btn btn-danger btn-xs"><i class="fa fa-times"></i> Chưa được kiểm duyệt</button>
	                          </td>
	                          <td><button type="button" data-toggle="modal" data-target="#<s:property value="trainerId"/>4" class="btn btn-primary btn-xs">
	                                 <i class="fa fa-check-circle"></i> Chấp nhận</button>
	                          	  <button type="button" data-toggle="modal" data-target="#<s:property value="trainerId"/>5" class="btn btn-danger btn-xs">
	                                 <i class="fa fa-times-circle"></i> Từ chối</button>
	                                
	                           </td>
			                   <!-- Modal validate-->
								<div class="modal fade" id="<s:property value="trainerId"/>4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Kiểm duyệt</h4>
								      </div>
								      <div class="modal-body">
								        <h2>Bạn có muốn kiểm duyệt <strong style="color:red;"><s:property value="users.fullName"/></strong>?</h2>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
								      	<button type="button" onclick="location.href='validateTrainer?id=<s:property value="users.userId"/>'" class="btn btn-primary">Chấp nhận</button>
								      </div>
								    </div>
								  </div>
								</div>
								<!-- Modal validate-->
								<!-- Modal reject-->
								<div class="modal fade" id="<s:property value="trainerId"/>5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Không kiểm duyệt</h4>
								      </div>
								      <div class="modal-body">
								        <h2>Bạn có muốn từ chối kiểm duyệt <strong style="color:red;"><s:property value="users.fullName"/></strong>?</h2>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
								      	<button type="button" onclick="location.href='rejectTrainer?id=<s:property value="users.userId"/>'" class="btn btn-danger">Từ chối</button>
								      </div>
								    </div>
								  </div>
								</div>
								<!-- Modal reject-->
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
	<script>
          $(document).ready(function() {
              $('table.display').DataTable();
          });
     </script>
  </body>
</html>