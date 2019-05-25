<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <%@include file ="../common/header.jsp" %>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
                <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
                <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
                <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
                <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
        </head>

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Danh sách người học</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30"></p>
                                <table id="datatable-buttons" class="display table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Họ Tên</th>
                                            <th>Nghề nghiệp</th>
                                            <th>Giới tính</th>
                                            <th>Địa chỉ</th>
                                            <th>Tuổi</th>
                                            <th>Trạng thái</th>
                                            <th class="none">Quản lý</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="learners">
                                            <s:set name="gen" value="gender" />
                                            <s:set var="year"><s:date name="dob" format="yyyy" /></s:set>
                                            <s:set name="stt" value="users.status" />
                                            <tr>
                                                <td><s:property value="users.fullName" /></td>
                                                <td><s:property value="job.jobName" /></td>
                                                <td>
                                                    <s:if test="%{#gen == 1}">Nam</s:if>
                                                    <s:elseif test="%{#gen == 0}">Nữ</s:elseif>
                                                </td>
                                                <td><s:property value="users.address" /></td>
                                                <td><s:property value="2017 - #year" /></td>
                                                <td>
                                                    <s:if test="%{#stt != 3}">
                                                        <button type="button" class="btn btn-success btn-xs"><i class="fa fa-check"></i> Đang hoạt động</button>
                                                    </s:if>
                                                </td>
                                                <td>
                                              		<button type="button" class="btn btn-primary btn-xs" onClick="window.open('../../getLearnerProfile?userid=<s:property value="users.userId"/>');"> <i class="fa fa-user"></i>
                                                        <i class="fa fa-eye"></i> Xem trang cá nhân</button>
                                                    <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#<s:property value=" learnerId "/>1"> <i class="fa fa-user"></i>
                                                        <i class="fa fa-pencil-square"></i> Sửa</button>
                                                    <s:if test="%{#stt != 3}">
                                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#<s:property value=" learnerId "/>3"><i class="fa fa-user">
					                                  	</i> <i class="fa fa-ban"></i> Cấm hoạt động</button>
                                                    </s:if>
                                                </td>
                                                <!-- Modal Edit-->
                                                <div class="modal fade" style="text-align: left;" id="<s:property value=" learnerId "/>1" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="gridSystemModalLabel">Sửa thông tin người học</h4>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                            <form action="updateLearner" method="post" class="form-horizontal form-label-left" novalidate>
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="item form-group">
                                                                            <label class="col-md-2 col-sm-2">Email <span class="required">*</span></label>
                                                                            <div class="col-md-6 col-sm-1 col-xs-6">
                                                                                <input readonly class="optional form-control col-md-7 col-xs-12" value="<s:property value=" users.userName "/>">
                                                                                <input type="hidden" name="userID" value="<s:property value=" users.userId "/>">
                                                                                <input type="hidden" name="learnerID" value="<s:property value=" learnerId "/>">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ln_solid2"></div>
                                                                    <div class="row">
                                                                        <div class="item form-group">
                                                                            <label class="col-md-2 col-sm-2">Họ tên <span class="required">*</span></label>
                                                                            <div class="col-md-6 col-sm-1 col-xs-6">
                                                                                <input id="name" class="form-control col-md-7 col-xs-12" name="fullName" required="required" value="<s:property value=" users.fullName "/>" type="email">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ln_solid2"></div>
                                                                    <div class="row">
                                                                        <div class="item form-group">
                                                                            <label class="col-md-2 col-sm-2">Số điện thoại <span class="required">*</span></label>
                                                                            <div class="col-md-6 col-sm-1 col-xs-6">
                                                                                <input type="tel" id="telephone" name="phoneNumber" required="required" data-validate-length-range="8,20" value="<s:property value=" users.phoneNumber "/>" class="form-control col-md-7 col-xs-12">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ln_solid2"></div>
                                                                    <div class="row">
                                                                        <div class="item form-group">
                                                                            <label class="col-md-2 col-sm-2">Ngày sinh <span class="required">*</span></label>
                                                                            <div class="col-md-6 col-sm-1 col-xs-6">
                                                                                <input type="date" id="example-date-input" name="dob" required="required" value="<s:date name="dob" format="yyyy-MM-dd" />" class="form-control col-md-7 col-xs-12">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="itemln_solid2"></div>
                                                                    <div class="ln_solid2"></div>
                                                                    <div class="row">
                                                                        <div class="item form-group">
                                                                            <label class="col-md-2 col-sm-2">Giới tinh <span class="required">*</span></label>
                                                                            <div class="col-md-6 col-sm-6 col-xs-12" class="btn-group" data-toggle="buttons">
                                                                                <s:if test="%{#gen == 1}">
                                                                                    <label class="btn btn-primary active">
                                                                                        <input type="radio" name="gender" value="1" autocomplete="off" checked> Nam
                                                                                    </label>
                                                                                    <label class="btn btn-primary">
                                                                                        <input type="radio" name="gender" value="0" autocomplete="off"> Nữ
                                                                                    </label>
                                                                                </s:if>
                                                                                <s:elseif test="%{#gen == 0}">
                                                                                    <label class="btn btn-primary">
                                                                                        <input type="radio" name="gender" value="1" autocomplete="off"> Nam
                                                                                    </label>
                                                                                    <label class="btn btn-primary active">
                                                                                        <input type="radio" name="gender" value="0" autocomplete="off" checked> Nữ
                                                                                    </label>
                                                                                </s:elseif>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="ln_solid2"></div>
                                                                    <div class="row">
                                                                        <div class="item form-group">
                                                                            <label class="col-md-2 col-sm-2">Địa chỉ<span class="required">*</span></label>
                                                                            <div class="col-md-6 col-sm-1 col-xs-6">
                                                                                <textarea id="textarea" required="required" name="address" data-validate-words="2" class="form-control col-md-7 col-xs-12"><s:property value="users.address" /></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="ln_solid"></div>
                                                                <div class="modal-footer">
                                                                    <button class="btn btn-default" type="button" data-dismiss="modal">Hủy</button>
                                                                    <button class="btn btn-primary" type="reset">Điền lại</button>
                                                                    <button type="submit" class="btn btn-success">Xác nhận</button>
                                                                </div>
                                                            </form>

                                                        </div>
                                                        <!-- /.modal-content -->
                                                    </div>
                                                    <!-- /.modal-dialog -->
                                                </div>
                                                <!-- /.modal end-->
                                                <!-- Modal Block-->
                                                <div class="modal fade" id="<s:property value=" learnerId "/>3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Xác nhận</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <h2>Bạn có muốn cấm hoạt động <strong style="color:red;"><s:property value="users.fullName"/> </strong>?</h2>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
                                                                <button type="button" onclick="location.href='blockLearner?id=<s:property value=" users.userId "/>'" class="btn btn-danger">Cấm</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Modal Block ends-->

                                            </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Danh sách người học bị cấm</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30"></p>
                                <table id="" class="display table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Họ Tên</th>
                                            <th>Nghề nghiệp</th>
                                            <th>Giới tính</th>
                                            <th>Địa chỉ</th>
                                            <th>Tuổi</th>
                                            <th>Trạng thái</th>
                                            <th>Quản lý</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="blockList">
                                            <s:set name="gen" value="gender" />
                                            <s:set var="year"><s:date name="dob" format="yyyy" /></s:set>
                                            <s:set name="stt" value="users.status" />
                                            <tr>
                                                <td><s:property value="users.fullName" /></td>
                                                <td><s:property value="job.jobName" /></td>
                                                <td>
                                                    <s:if test="%{#gen == 1}">Male</s:if>
                                                    <s:elseif test="%{#gen == 0}">Female</s:elseif>
                                                </td>
                                                <td><s:property value="users.address" /></td>
                                                <td><s:property value="2017 - #year" /></td>
                                                <td>
                                                    <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-times"></i> Bị chặn</button>
                                                </td>
                                                <td>
                                                	 <button type="button" class="btn btn-primary btn-xs" onClick="window.open('../../getLearnerProfile?userid=<s:property value="users.userId"/>');"> <i class="fa fa-user"></i>
                                                        <i class="fa fa-eye"></i> Xem trang cá nhân</button>
                                                    <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#<s:property value=" learnerId "/>2"><i class="fa fa-user">
		                                  	</i> <i class="fa fa-unlock-alt"></i> Bỏ cấm</button>
                                                </td>

                                                <!-- Modal unBlock-->
                                                <div class="modal fade" id="<s:property value=" learnerId "/>2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Xác nhận</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <h2>Bạn có muốn bỏ cấm <strong style="color:red;"><s:property value="users.fullName"/> </strong>?</h2>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
                                                                <button type="button" onclick="location.href='unblockLearner?id=<s:property value=" users.userId "/>'" class="btn btn-success">Bỏ cấm</button>
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
        <div class="footer">
            <div class="clearfix"></div>
        </div>
        <!-- /footer content -->
        <!-- jQuery -->
        <script src="../vendors/jquery/dist/jquery.min.js"></script>

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
        <script>
            $(document).ready(function() {
                $('table.display').DataTable();
            });
            
        </script>
        </body>

        </html>