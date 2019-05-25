<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file ="../common/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
</head>
  
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            

            <div class="clearfix"></div>

            <div class="row">
               <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Document for review</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                     
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>User Name</th>
                          <th>Document description</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                      </thead>
					  <tbody>		  
					  	<s:iterator value="documents">
					  		<tr>
	                          <td><s:property value="trainer.users.fullName"/></td>
	                          <td><s:property value="description"/></span></td>
	                          <td>
	                          	 <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-times"></i> Not validate</button> 
	                          </td>
	                          <td>
	                          <button type="button" class="btn btn-success btn-xs" onclick="location.href='../../document/displayDocument?documentid=<s:property value="documentId"/>'" > <i class="fa fa-file-text"></i> 
			                              	<i class="fa fa-eye"></i> View</button>
	                          <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#<s:property value="documentId"/>1"> <i class="fa fa-file-text"></i> 
			                              	<i class="fa fa-check-circle"></i> Validate</button>
	                                <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#<s:property value="documentId"/>2"><i class="fa fa-file-text">
		                                  	</i> <i class="fa fa-ban"></i> Reject</button>
	                          	</td>
			                <!-- Modal Block-->
								<div class="modal fade" id="<s:property value="documentId"/>1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Confirmation</h4>
								      </div>
								      <div class="modal-body">
								        <h2>Do you really want to validate this document?</h2>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
								      	<button type="button" onclick="location.href='validDocument?id=<s:property value="documentId"/>'" class="btn btn-primary">Validate</button>
								      </div>
								    </div>
								  </div>
								</div>
							<!-- Modal Block ends-->
							<!-- Modal unBlock-->
								<div class="modal fade" id="<s:property value="documentId"/>2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Confirmation</h4>
								      </div>
								      <div class="modal-body">
								        <h2>Do you really want to reject this document?</h2>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
								      	<button type="button" onclick="location.href='rejectDocument?id=<s:property value="documentId"/>'" class="btn btn-danger">Reject</button>
								      </div>
								    </div>
								  </div>
								</div>
							<!-- Modal unBlock ends-->
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
    
    <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
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
	
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
	<!-- jquery.inputmask -->
    <script src="../vendors/inputmask/jquery.inputmask.bundle.min.js"></script>
     <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

  </body>
</html>