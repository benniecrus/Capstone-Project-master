<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@include file ="../common/header.jsp" %>
	<!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Quản trị viên</h3>
              </div>
  
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="row">
                      <div class="col-md-12 col-sm-12 col-xs-12 text-center"></div>
						<div class="clearfix"></div>

						<s:iterator value="admins" >
					    	<div class="col-md-4 col-sm-4 col-xs-12 profile_details">
		                        <div class="well profile_view">
		                          <div class="col-sm-12">
		                            <h4 class="brief"><i><s:property value="userName"/></i></h4>
		                            <div class="left col-xs-7">
		                              <strong><h2><s:property value="lastName"/> <s:property value="firstName"/> </h2></strong>
		                             
		                              <ul class="list-unstyled">
		                                <li><i class="fa fa-envelope"></i> Email: <s:property value="email"/> </li>
		                                <li><i class="fa fa-building"></i> Đại chỉ: <s:property value="address"/> </li>
		                                <li><i class="fa fa-phone"></i> Số điện thoại : <s:property value="phoneNumber"/></li>
		                              </ul>
		                            </div>
		                            <div class="right col-xs-5 text-center">
		                              <img src="images/img.jpg" alt="" class="img-circle img-responsive">
		                            </div>
		                          </div>
		                          <div class="col-xs-12 bottom text-center">
		                            <div class="col-xs-12 col-sm-6 emphasis">
		                              <p class="ratings">
		                              	  <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#<s:property value="adminID"/>1"> <i class="fa fa-user"></i> 
			                              	<i class="fa fa-pencil-square"></i> </button>
			                              <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#<s:property value="adminID"/>2"><i class="fa fa-user">
		                                  	</i> <i class="fa fa-trash"></i></button>
		                              </p>
		                                 <!-- Modal Edit-->
		                                <div class="modal fade" style="text-align: left;" id="<s:property value="adminID"/>1" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
										  <div class="modal-dialog" role="document">
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										        <h4 class="modal-title" id="gridSystemModalLabel">Chỉnh sửa thông tin</h4>
										      </div>
										      <div class="clearfix"></div>
										      <form action="updateAdmin" method="post" class="form-horizontal form-label-left" novalidate>
										      	  <div class="ln_solid"></div>
										      	  <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" ">Tài khoản <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                          <input  readonly class="optional form-control col-md-7 col-xs-12" value="<s:property value="userName"/>">
							                          <input readonly type="hidden" name="adminID" value="<s:property value="adminID"/>"></input>
							                        </div>
							                      </div>
							                      <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Email <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                          <input readonly class="optional form-control col-md-7 col-xs-12" value="<s:property value="email"/>">
							                        </div>
							                      </div>
							                      <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstname">Họ <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                          <input id="name" class="form-control col-md-7 col-xs-12" name="firstName" required="required" value="<s:property value="firstName"/>" type="text">
							                        </div>
							                      </div>
							                      <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lastname">Tên <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                          <input id="name" class="form-control col-md-7 col-xs-12" name="lastname"  required="required" value="<s:property value="lastName"/>"  type="text" >
							                        </div>
							                      </div>
							                      <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Điện thoại <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                          <input type="tel" id="telephone" name="phone" required="required" data-validate-length-range="8,20" value="<s:property value="phoneNumber"/>" class="form-control col-md-7 col-xs-12">
							                        </div>
							                      </div>
							                      <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="date">Ngày sinh <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                        	<input type="date" id="example-date-input" name="dob" required="required" value="<s:date name="DoB" format="yyyy-MM-dd" />" class="form-control col-md-7 col-xs-12">
							                        </div>
							                      </div>
							                      <input type="hidden" name="gender" value="1" />
							                      
							                      <div class="item form-group">
							                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Địa chỉ <span class="required">*</span>
							                        </label>
							                        <div class="col-md-6 col-sm-6 col-xs-12">
							                          <textarea id="textarea" required="required" name="address"  data-validate-words="2" class="form-control col-md-7 col-xs-12"><s:property value="address"/></textarea>
							                        </div>
							                      </div>
			                                    <div class="ln_solid"></div>
									            <div class="modal-footer">
										        <button class="btn btn-default" type="button" data-dismiss="modal">Hủy</button>
											    <button class="btn btn-primary" type="reset">Điền lại</button>
					                            <button type="submit" class="btn btn-success">Xác nhận</button>
										      </div>
										      </form>
										    </div><!-- /.modal-content -->
										  </div><!-- /.modal-dialog -->
										</div><!-- /.modal -->
		                                <!-- Modal Delete-->
										<div class="modal fade" id="<s:property value="adminID"/>2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
										  <div class="modal-dialog" role="document">
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										        <h4 class="modal-title" id="myModalLabel" style="text-align: left;">Xác nhận</h4>
										      </div>
										      <div class="modal-body">
										        <h2>Bạn có muốn xóa quản trị viên <strong style="color:red;"><s:property value="lastName"/> <s:property value="firstName"/></strong>?</h2>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
										      	<button type="button" onclick="location.href='delAdmin?id=<s:property value="adminID"/>'" class="btn btn-danger">Xóa</button>
										      </div>
										    </div>
										  </div>
										</div>
		                              
		                            </div>
		                          
		                          </div>
		                        </div>
		                      </div>
		                 </s:iterator>

						<div class="col-md-4 col-sm-4 col-xs-12 profile_details">
					  	<div class="well profile_view">
                          <div class="col-sm-12">
                          	<button type="button" class="btn btn-success btn-circle btn-xl" data-toggle="modal" data-target="#addForm"><i class="fa fa-plus-circle fa-5x"></i></button>
                          	
                          	<div class="modal fade" id="addForm" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title" id="gridSystemModalLabel">Add new Admin</h4>
							      </div>
							      <div class="clearfix"></div>
							      <form action="addAdmin" method="post" class="form-horizontal form-label-left" novalidate>
							      	  <div class="ln_solid"></div>
							      	  
							      	  <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" data-validate-length-range="6" for="username">Username <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input id="occupation" type="text" name="username" data-validate-length-range="5,20" class="optional form-control col-md-7 col-xs-12">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label for="password" class="control-label col-md-3">Password <span class="required">*</span></label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input id="password" type="password" name="password" data-validate-length="6,8" class="form-control col-md-7 col-xs-12" required="required">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12">Repeat Password <span class="required">*</span></label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input id="password2" type="password" name="password2" data-validate-linked="password" class="form-control col-md-7 col-xs-12" required="required">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstname">First Name <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input id="name" class="form-control col-md-7 col-xs-12" name="firstName" required="required" type="text">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lastname">Last Name <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input id="name" class="form-control col-md-7 col-xs-12" name="lastname" required="required" type="text">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Telephone <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input type="tel" id="telephone" name="phone" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="date">DoB <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <input type="text" id="date" name="dob" required="required" class="form-control col-md-7 col-xs-12">
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Gender <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12" class="btn-group" data-toggle="buttons">
				                          <label class="btn btn-primary active">
										    <input type="radio" name="gender" value="1" autocomplete="off" checked> Male
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="gender" value="0" autocomplete="off"> Female
										  </label>
				                        </div>
				                      </div>
				                      <div class="item form-group">
				                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">Address <span class="required">*</span>
				                        </label>
				                        <div class="col-md-6 col-sm-6 col-xs-12">
				                          <textarea id="textarea" required="required" name="address"  data-validate-words="2" class="form-control col-md-7 col-xs-12"></textarea>
				                        </div>
				                      </div>
                                    <div class="ln_solid"></div>
						            <div class="modal-footer">
							        <button class="btn btn-default" type="button" data-dismiss="modal">Cancel</button>
								    <button class="btn btn-primary" type="reset">Reset</button>
		                            <button type="submit" class="btn btn-success">Submit</button>
							      </div>
							      </form>
							    </div><!-- /.modal-content -->
							  </div><!-- /.modal-dialog -->
							</div><!-- /.modal -->
                          	
                          </div>
                         
                         </div>
					  	</div>
					  	
                      </div>
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
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
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