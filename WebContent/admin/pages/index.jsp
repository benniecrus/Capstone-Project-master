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
          <!-- top tiles -->
           <div class="row tile_count">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background: #ededed">
                  <div class="icon" style="padding:10px;color: mediumseagreen;"><i class="fa fa-user"></i></div>
                  <div class="count green" ><s:property value="totalUser"/></div>
                  <h3 style=" color: darkslategray;">Số người dùng</h3><p></p>
                 </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background: #ededed">
                 <div class="icon" style="padding:10px;color: mediumseagreen;"><i class="fa fa-user"></i></div>
                  <div class="count green"><s:property value="noL"/></div>
                  <h3 style=" color: darkslategray;"><a href="showLearner">Người học</a></h3>
                  <p></p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background: #ededed">
                  <div class="icon" style="padding:10px;color: mediumseagreen;"><i class="fa fa-user"></i></i></div>
                  <div class="count green"> <s:property value="noT"/></div>
                  <h3 style=" color: darkslategray;"><a href="showTrainer">Người dạy</a></h3>
                  <p></p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats" style="background: #ededed">
                 <div class="icon" style="padding:10px;color: dodgerblue;"><i class="fa fa-book"></i></div>
                  <div class="count blue" ><s:property value="noC"/></div>
                  <h3 style=" color: darkslategray;"><a href="viewCourse">Số khóa học</a></h3>
                  <p></p>
                  
                </div>
              </div>
            </div>
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
              <div class="dashboard_graph">

                <div class="row x_title">
                  <div class="col-md-6">
                    <h3>Thống kê số khóa học</h3>
                  </div>
                  
                </div>

                <div class="col-md-12 col-sm-9 col-xs-12">
                  <canvas id="bar-chart"></canvas>
                </div>
			 <div class="clearfix"></div>
              </div>
            </div>
			<div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel tile fixed_height_320 overflow_hidden">
                <div class="x_title">
                  <h2>Tỉ lệ người dùng</h2>
                  
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <table class="" style="width:100%">
                    <tr>
                      <th style="width:37%;">
                        <p></p>
                      </th>
                      <th>
                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                          <p class="">Loại người dùng</p>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                          <p class="">đơn vị %</p>
                        </div>
                      </th>
                    </tr>
                    <tr>
                      <td>
                        <canvas class="canvasDoughnut" height="140" width="140" style="margin: 15px 10px 10px 0"></canvas>
                      </td>
                      <td>
                        <table class="tile_info">
                          <tr>
                            <td>
                              <p><i class="fa fa-square blue"></i>Người học </p>
                            </td>
                            <td><s:property value="male"/>% 
                            <input type="hidden" id="numberMale" value='<s:property value="male"/>'>
                            </td>
                            
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square red"></i>Người dạy </p>
                            </td>
                            <td><s:property value="100-male"/>%
                            <input type="hidden" id="numberFemale" value='<s:property value="100-male"/>'>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                 
                </div>
              </div>
            </div>
          </div>
          
          <br />
		<table style="display:none">
			<tr>
				<td id="coursebyCate1"><s:property value="coursebyCate1"/></td>
				<td id="coursebyCate2"><s:property value="coursebyCate2"/></td>
				<td id="coursebyCate3"><s:property value="coursebyCate3"/></td>
				<td id="coursebyCate4"><s:property value="coursebyCate4"/></td>
				<td id="coursebyCate5"><s:property value="coursebyCate5"/></td>
				<td id="coursebyCate6"><s:property value="coursebyCate6"/></td>
				<td id="coursebyCate7"><s:property value="coursebyCate7"/></td>
				<td id="coursebyCate8"><s:property value="coursebyCate8"/></td>
				<td id="coursebyCate9"><s:property value="coursebyCate9"/></td>
				<td id="coursebyCate10"><s:property value="coursebyCate10"/></td>
			</tr>
		</table>
        </div>
        <!-- /page content -->
        <footer></footer>
       
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.js"></script>
    <!-- Barchart.js -->
    <script>
    var coursebyCate1 =  $("#coursebyCate1").text();
    var coursebyCate2 =  $("#coursebyCate2").text();
    var coursebyCate3 =  $("#coursebyCate3").text();
    var coursebyCate4 =  $("#coursebyCate4").text();
    var coursebyCate5 =  $("#coursebyCate5").text();
    var coursebyCate6 =  $("#coursebyCate6").text();
    var coursebyCate7 =  $("#coursebyCate7").text();
    var coursebyCate8 =  $("#coursebyCate8").text();
    var coursebyCate9 =  $("#coursebyCate9").text();
    new Chart(document.getElementById("bar-chart"), {
        type: 'bar',
        data: {
            labels: ["Công nghệ thông tin", "Thiết Kế", "Âm Nhạc", "Sức Khỏe", "Marketing", "Ứng Dụng Văn Phòng", "Phát Triển Cá Nhân",
            	"Ngoại Ngữ", "Doanh Nghiệp", "Khác"],
            datasets: [{
                label: "Course",
                backgroundColor: ["#ce0c0d", "#229ace", "#cf11cd", "#dbdc29", "#c97107", "#68d00a", "#0bd5c5", "#a60acd", "#0c52bb", "#177515"],
                data: [ coursebyCate1,
	                	coursebyCate2,
	                	coursebyCate3,
	                	coursebyCate4,
	                	coursebyCate5,
	                	coursebyCate6,
	                	coursebyCate7,
	                	coursebyCate8,
	                	coursebyCate9,
	                	coursebyCate10,
	                ]
            }]
        },
        options: {
            legend: {
                display: false,
            },
            title: {
                display: true,
                text: 'Số lượng khóa học theo danh mục',
                position: 'bottom'
            }
        }
    });
    </script>
    
  </body>
</html>