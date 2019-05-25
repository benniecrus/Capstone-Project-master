<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
    <link href="assets/plugins/star-rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
    <!-- Theme styles END -->
    <style>
         @import url(http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700);

body {
    background-color:#F7F7F7;
    font-family: 'Open Sans', sans-serif;
}
/*Navbar*/
.navbar-default {
    background-color:#fff;
    border-bottom-color:#E3E3E3;
}
.navbar-default .navbar-nav>.active>a, 
.navbar-default .navbar-nav>.active>a:hover, 
.navbar-default .navbar-nav>.active>a:focus{
    background-color:transparent!important;
}
.navbar-default .btn-compose {
    padding-right:10px;
    border-right:1px solid #F0F0F0;
}
/*Forms setup*/
.form-control {
    border-radius:0;
    box-shadow:none;
    height:auto;
}
.float-label{
    font-size:10px;
}
input[type="text"].form-control,
input[type="search"].form-control{
    border:none;
    border-bottom:1px dotted #CFCFCF;
}
textarea {
    border:1px dotted #CFCFCF!important;
    height:130px!important;
}
/*Content Container*/
.content-container {
    background-color:#fff;
    padding:35px 20px;
    margin-bottom:20px;
}
h1.content-title{
    font-size:32px;
    font-weight:300;
    text-align:center;
    margin-top:0;
    margin-bottom:20px;
    font-family: 'Open Sans', sans-serif!important;
}
/*Compose*/
.btn-send{
    text-align:center;
    margin-top:20px;
}
/*mail list*/

ul.mail-list{
    padding:0;
    margin:0;
    list-style:none;
    margin-top:30px;
}
ul.mail-list li a{
    display:block;
    border-bottom:1px dotted #CFCFCF;
    padding:20px;
    text-decoration:none;
}
ul.mail-list li:last-child a{
    border-bottom:none;
}
ul.mail-list li a:hover{
    background-color:#DBF9FF;
}
ul.mail-list li span{
    display:block;
}
ul.mail-list li span.mail-sender{
    font-weight:600;
    color:#8F8F8F;
}
ul.mail-list li span.mail-subject{
    color:#8C8C8C;
}
ul.mail-list li span.mail-message-preview{
    display:block;
    color:#A8A8A8;
}
.mail-search{
    border-bottom-color:#7FBCC9!important; 
}

#mess {
padding-top: 80px;
}
    </style>
  </head>
  <!--DOC: menu-always-on-top class to the body element to set menu on top -->
  <body class="menu-always-on-top">
 
    <%@include file="common/Header.jsp" %>
    
    
    <div id="mess">
   <nav class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>

            </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="btn-compose pull-left">
                <a type="button" class="btn btn-danger navbar-btn" href="#compose" role="tab" data-toggle="tab"> <span class="glyphicon glyphicon-pencil"></span>Tin Nhắn Mới</a>
            </div>
            <ul class="nav navbar-nav">
                <li>
                    <a href="#inbox" role="tab" data-toggle="tab">
                        Tin Nhắn
                    </a>
                </li>
                <li><a href="#sent-mail" role="tab" data-toggle="tab">Tin Đã Gửi</a>

                </li>
              
            

            </ul>
            
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>




<div class="tab-content">
  <div class="tab-pane active" id="inbox">
      
      <div class="container">
           <div class="content-container clearfix">
               <div class="col-md-12">
                   <h1 class="content-title">Tin Nhắn</h1>
                   
                   <ul class="mail-list">
                   <s:iterator value="receivedMessages">
                       <li>
                       
                           <a href="">
                               <span class="mail-sender"><s:property value="sender.fullName"/></span>
                               <span class="mail-subject"><s:property value="subject"/></span>
                               <span class="mail-message-preview"><s:property value="content"/></span>
                           </a>
                       </li>
                       </s:iterator>
                   </ul>
               </div>
           </div>
       </div>
      
  </div>
  <div class="tab-pane" id="compose">
      <form action="sendMessage">
      <div class="container">
    <div class="content-container clearfix">
        <h1 class="content-title">Tin Nhắn Mới</h1>
        <div class="col-md-12">
            <div class="form-group">
                <input id="tokenfield" type="text" class="form-control" placeholder="Người nhận" name="userName" />
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Tiêu đề" name="subject" />
            </div>
            <textarea class="form-control" placeholder="nội dung tin nhắn" name="content"></textarea>
            <div class="btn-send">
            <button class="btn btn-success btn-lg"><span class="glyphicon glyphicon-send"></span> Gửi tin nhắn</button>
            </div>
        </div>
    </div>
</div>
      </form>
  </div>
  
  
  <div class="tab-pane" id="sent-mail">
      
      <div class="container">
           <div class="content-container clearfix">
               <div class="col-md-12">
                   <h1 class="content-title">Tin Đã Gửi</h1>
                   <ul class="mail-list">
                   <s:iterator value="sentMessages">
                       <li>
                           <a href="">
                               <span class="mail-sender"><s:property value="receiver.fullName"/></span>
                               <span class="mail-subject"><s:property value="subject"/></span>
                               <span class="mail-message-preview"><s:property value="content"/></span>
                           </a>
                       </li>
                       </s:iterator>
                   </ul>
               </div>
           </div>
       </div>
      
  </div>
  

</div>
</div>
    
 
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
     <script src="assets/plugins/star-rating/js/star-rating.js" type="text/javascript"></script>
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
    <script>
    !function(a,b){function g(b,c){this.$element=a(b),this.settings=a.extend({},f,c),this.init()}var e="floatlabel",f={slideInput:!0,labelStartTop:"20px",labelEndTop:"10px",paddingOffset:"10px",transitionDuration:.3,transitionEasing:"ease-in-out",labelClass:"",typeMatches:/text|password|email|number|search|url/};g.prototype={init:function(){var a=this,c=this.settings,d=c.transitionDuration,e=c.transitionEasing,f=this.$element,g={"-webkit-transition":"all "+d+"s "+e,"-moz-transition":"all "+d+"s "+e,"-o-transition":"all "+d+"s "+e,"-ms-transition":"all "+d+"s "+e,transition:"all "+d+"s "+e};if("INPUT"===f.prop("tagName").toUpperCase()&&c.typeMatches.test(f.attr("type"))){var h=f.attr("id");h||(h=Math.floor(100*Math.random())+1,f.attr("id",h));var i=f.attr("placeholder"),j=f.data("label"),k=f.data("class");k||(k=""),i&&""!==i||(i="You forgot to add placeholder attribute!"),j&&""!==j||(j=i),this.inputPaddingTop=parseFloat(f.css("padding-top"))+parseFloat(c.paddingOffset),f.wrap('<div class="floatlabel-wrapper" style="position:relative"></div>'),f.before('<label for="'+h+'" class="label-floatlabel '+c.labelClass+" "+k+'">'+j+"</label>"),this.$label=f.prev("label"),this.$label.css({position:"absolute",top:c.labelStartTop,left:f.css("padding-left"),display:"none","-moz-opacity":"0","-khtml-opacity":"0","-webkit-opacity":"0",opacity:"0"}),c.slideInput||f.css({"padding-top":this.inputPaddingTop}),f.on("keyup blur change",function(b){a.checkValue(b)}),b.setTimeout(function(){a.$label.css(g),a.$element.css(g)},100),this.checkValue()}},checkValue:function(a){if(a){var b=a.keyCode||a.which;if(9===b)return}var c=this.$element,d=c.data("flout");""!==c.val()&&c.data("flout","1"),""===c.val()&&c.data("flout","0"),"1"===c.data("flout")&&"1"!==d&&this.showLabel(),"0"===c.data("flout")&&"0"!==d&&this.hideLabel()},showLabel:function(){var a=this;a.$label.css({display:"block"}),b.setTimeout(function(){a.$label.css({top:a.settings.labelEndTop,"-moz-opacity":"1","-khtml-opacity":"1","-webkit-opacity":"1",opacity:"1"}),a.settings.slideInput&&a.$element.css({"padding-top":a.inputPaddingTop}),a.$element.addClass("active-floatlabel")},50)},hideLabel:function(){var a=this;a.$label.css({top:a.settings.labelStartTop,"-moz-opacity":"0","-khtml-opacity":"0","-webkit-opacity":"0",opacity:"0"}),a.settings.slideInput&&a.$element.css({"padding-top":parseFloat(a.inputPaddingTop)-parseFloat(this.settings.paddingOffset)}),a.$element.removeClass("active-floatlabel"),b.setTimeout(function(){a.$label.css({display:"none"})},1e3*a.settings.transitionDuration)}},a.fn[e]=function(b){return this.each(function(){a.data(this,"plugin_"+e)||a.data(this,"plugin_"+e,new g(this,b))})}}(jQuery,window,document);


    $(document).ready(function(){
        $('.form-control').floatlabel({
            labelClass: 'float-label',
            labelEndTop: 5
        });
    });
      jQuery(document).ready(function() {
          Layout.init();
      });
    </script>
    <!-- Global js END -->
  </body>
</html>