<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
      <!-- Theme styles END -->
      <style>
      </style>
   </head>
   <!--DOC: menu-always-on-top class to the body element to set menu on top -->
   <body class="menu-always-on-top">
       
      <!-- Header -->
      
      <%@include file="common/Header.jsp" %>
      
      <!-- Header END -->
      <!-- Promo block BEGIN -->
      <div class="promo-block" id="promo-block">
         <div id="carousel-example-generic" class="carousel slide carousel-slider" style="margin-top: 60px;">
            <!-- Indicators -->
            <ol class="carousel-indicators">
               <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
               <li data-target="#carousel-example-generic" data-slide-to="1"></li>
               <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
               <!-- First slide -->
               <div class="item carousel-item-one active">
                  <div class="center-block">
                     <div class="center-block-wrap">
                        <div class="center-block-body">
                           <h2 class="margin-bottom-20 animate-delay carousel-title-v1" data-animation="animated fadeInDown">
                              Welcome To <span class="color-red">We Teach</span>
                           </h2>
                           <div class="animated flipInX">
                              <div class="hidden-xs">
                                 <i class="promo-like fa fa-thumbs-up"></i>
                                 <div class="promo-like-text">
                                    <h2>Let's just do it</h2>
                                    <h7>We Teach<br> Welcome We Teach<a href="javascript:void(0);"></a></h7>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- Second slide -->
               <div class="item carousel-item-two">
                  <h2 class="carousel-position-one animate-delay carousel-title-v1" data-animation="animated fadeInDown">
                     Extremely <span class="color-red">Responsive</span> design
                  </h2>
                  <img class="carousel-position-two hidden-sm hidden-xs animate-delay" src="assets/onepage/img/slider/Slide2_iphone_left.png" alt="Iphone" data-animation="animated fadeInUp">
                  <img class="carousel-position-three hidden-sm hidden-xs animate-delay" src="assets/onepage/img/slider/Slide2_iphone_right.png" alt="Iphone" data-animation="animated fadeInUp">
               </div>
               <!-- Third slide -->
               <div class="item carousel-item-three">
                  <div class="center-block">
                     <div class="center-block-wrap">
                        <div class="center-block-body">
                           <h3 class="margin-bottom-20 animate-delay carousel-title-v2" data-animation="animated fadeInDown">
                              The clearest way into the Universe <br/> is through a forest wilderness.
                           </h3>
                           <span class="carousel-subtitle-v1">We Teach</span>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
         </div>
      </div>
      <!-- Promo block END -->
      <!-- Team block BEGIN -->
      <div class="team-block content content-center margin-bottom-40" id="trainer">
         <div class="container">
            <h2><strong>Trainer</strong></h2>
            <h4>Welcome to WeTeach</h4>
            <div class="row">
               <div class="col-md-4 item">
                  <img src="assets/onepage/img/people/img6-large.jpg" alt="Marcus Doe" class="img-responsive">
                  <h3>Nguyen Van An</h3>
                  <em>Programer</em>
                  <h5>Rate: <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                     <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                  </h5>
                  <h6>Course: 20</h6>
                  <p>Life is a story, make yours the best seller.</p>
                  <div class="tb-socio">
                     <a href="javascript:void(0);" class="fa fa-facebook"></a>
                     <a href="javascript:void(0);" class="fa fa-google-plus"></a>
                  </div>
               </div>
               <div class="col-md-4 item">
                  <img src="assets/onepage/img/people/img7-large.jpg" alt="Elena Taylor" class="img-responsive">
                  <h3>Tran Thi Cuc</h3>
                  <em>Designer</em>
                  <h5>Rate: <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                     <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                  </h5>
                  <h6>Course: 50</h6>
                  <p>Life is a story, make yours the best seller.</p>
                  <div class="tb-socio">
                     <a href="javascript:void(0);" class="fa fa-facebook"></a>
                     <a href="javascript:void(0);" class="fa fa-google-plus"></a>
                  </div>
               </div>
               <div class="col-md-4 item">
                  <img src="assets/onepage/img/people/img8-large.jpg" alt="Cris Nilson" class="img-responsive">
                  <h3>Lam Chan Huy</h3>
                  <em>Developer</em>
                  <h5>Rate: <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                     <i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                  </h5>
                  <h6>Course: 66</h6>
                  <p>Life is a story, make yours the best seller.</p>
                  <div class="tb-socio">
                     <a href="javascript:void(0);" class="fa fa-facebook"></a>
                     <a href="javascript:void(0);" class="fa fa-google-plus"></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Team block END -->
      <!-- COURSE BEGIN -->
      <div class="about-block content content-center" id="about">
         <div class="container information generic">
            <h2 id="fittext2" class="title-start">Courses</h2>
            <p class="sub-title">Featured Courses THAT WE Take.</p>
            <div class="item col-md-4">
               <div class="blok-read-sm">
                  <a href="#" class="hover-image">
                  <img src="image/cricket.jpg" alt="image">
                  <span class="layer-block">Registration Available</span>
                  </a>
                  <div class="info-text visible-md visible-lg">
                     <span class="left-text">50$</span>
                     <span class="right-text">Intermediate</span>
                  </div>
                  <div class="content-block">
                     <span class="point-caption bg-blue-point"></span>
                     <span class="bottom-line bg-blue-point"></span>
                     <h4>The Web Developer</h4>
                     <p>Immediate FREE access to the course e-book "Best Resources for Web Design and Development with HTML5 & CSS3"</p>
                     <div class="button-main bg-fio-point">View More</div>
                     <div class="like-wrap">
                        <a href="#"><i class="fa fa-heart col-red"></i></a><span>224</span>
                        <a href="#"><i class="fa fa-comment col-green"></i></a><span>89</span>
                     </div>
                  </div>
               </div>
            </div>
            <div class="item col-md-4">
               <div class="blok-read-sm">
                  <a href="#" class="hover-image">
                  <img src="image/sports.jpg" alt="image">
                  <span class="layer-block">Registration Available</span>
                  </a>
                  <div class="info-text visible-md visible-lg">
                     <span class="left-text">100$</span>
                     <span class="right-text">Intermediate</span>
                  </div>
                  <div class="content-block">
                     <span class="point-caption bg-blue-point"></span>
                     <span class="bottom-line bg-blue-point"></span>
                     <h4>PHP OOP</h4>
                     <p>PHP OOP: Learn OOP PHP and Take your skills to another level. Make serious money by building awesome applications.</p>
                     <div class="button-main bg-fio-point">View More</div>
                     <div class="like-wrap">
                        <a href="#"><i class="fa fa-heart col-red"></i></a><span>224</span>
                        <a href="#"><i class="fa fa-comment col-green"></i></a><span>89</span>
                     </div>
                  </div>
               </div>
            </div>
            <div class="item col-md-4">
               <div class="blok-read-sm">
                  <a href="#" class="hover-image">
                  <img src="image/baseball.jpg" alt="image">
                  <span class="layer-block">Registration Available</span>
                  </a>
                  <div class="info-text visible-md visible-lg">
                     <span class="left-text">80$</span>
                     <span class="right-text">Intermediate</span>
                  </div>
                  <div class="content-block">
                     <span class="point-caption bg-blue-point"></span>
                     <span class="bottom-line bg-blue-point"></span>
                     <h4>Data Warehouse</h4>
                     <p>Learn to use PDO with PHP to build more secured applications. <br>
                        Learn to use PDO with PHP to build more secured applications.
                     </p>
                     <div class="button-main bg-fio-point">View More</div>
                     <div class="like-wrap">
                        <a href="#"><i class="fa fa-heart col-red"></i></a><span>224</span>
                        <a href="#"><i class="fa fa-comment col-green"></i></a><span>89</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- COURSE END -->
      <!-- Portfolio block BEGIN -->
      <div class="portfolio-block content content-center" id="popular">
         <div class="container">
            <h2 class="margin-bottom-50">Most <strong>Popular</strong></h2>
         </div>
         <div class="row">
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/2.jpg" alt="NAME" class="img-responsive">
               <a href="CourseDetail.html">
                  <div class="valign-center-elem">
                     <strong>The Web Developer</strong>
                     <em>Price: 50$</em>
                     <em>Nguyen Van a</em>
                     <b>Deteail</b>
                     
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/6.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/6.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>Angular 4</strong>
                     <em>Price: 60$</em>
                     <em>Tran Van Buoi</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/8.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/8.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>The Complete SQL</strong>
                     <em>Price: 90$</em>
                     <em>Tran Van Dat</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/3.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/3.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>The Complete Cyber</strong>
                     <em>Price: 50$</em>
                     <em>Nguyen Van a</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/5.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/5.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>The Web Developer</strong>
                     <em>Price: 50$</em>
                     <em>Nguyen Van a</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/4.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/4.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>The Web Developer</strong>
                     <em>Price: 50$</em>
                     <em>Nguyen Van a</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/1.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/1.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>The Web Developer</strong>
                     <em>Price: 50$</em>
                     <em>Nguyen Van a</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
            <div class="item col-md-3 col-sm-6 col-xs-12">
               <img src="assets/onepage/img/portfolio/10.jpg" alt="NAME" class="img-responsive">
               <a href="assets/onepage/img/portfolio/10.jpg" class="zoom valign-center">
                  <div class="valign-center-elem">
                     <strong>The Web Developer</strong>
                     <em>Price: 50$</em>
                     <em>Nguyen Van a</em>
                     <b>Details</b>
                  </div>
               </a>
            </div>
         </div>
      </div>
     
      
       
        <!-- Portfolio block END -->
        
       
       
      <!-- Testimonials block BEGIN -->
      <div class="testimonials-block content content-center margin-bottom-65" id="sol">
         <div class="container">
            <h2> <strong>We Teach</strong></h2>
            <h4>Welcome to WeTeach</h4>
            <div class="carousel slide" data-ride="carousel" id="testimonials-block">
               <!-- Wrapper for slides -->
               <div class="carousel-inner">
                  <!-- Carousel items -->
                  <div class="active item">
                     <blockquote>
                        <p>This is the most awesome, full featured, easy, costomizeble theme. It’s extremely responsive and very helpful to all suggestions.</p>
                     </blockquote>
                     <span class="testimonials-name">Mark Doe</span>
                  </div>
                  <!-- Carousel items -->
                  <div class="item">
                     <blockquote>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.</p>
                     </blockquote>
                     <span class="testimonials-name">Joe Smith</span>
                  </div>
                  <!-- Carousel items -->
                  <div class="item">
                     <blockquote>
                        <p>Williamsburg carles vegan helvetica. Cosby sweater eu banh mi, qui irure terry richardson ex squid Aliquip placeat salvia cillum iphone.</p>
                     </blockquote>
                     <span class="testimonials-name">Linda Adams</span>
                  </div>
               </div>
               <!-- Indicators -->
               <ol class="carousel-indicators">
                  <li data-target="#testimonials-block" data-slide-to="0" class="active"></li>
                  <li data-target="#testimonials-block" data-slide-to="1"></li>
                  <li data-target="#testimonials-block" data-slide-to="2"></li>
               </ol>
            </div>
         </div>
      </div>
      <!-- Testimonials block END -->
      <div class="container" id="blog">
         <div class="row text-center" id="heading">
            <div class= "bg-image">
               <div class= "col-md-6 col-md-offset-3 wow animated zoomInDown" id= "heading-text">
                  <h3>Last Activity</h3>
                  <p>Sharing knowledge, Accepting challenge.</p>
                  <hr class= "full">
                  <br/>
               </div>
            </div>
         </div>
         <div class= "row post">
            <div class= "main_content">
               <div class= "post-thumbnail col-md-5">
                  <div class= "frame">
                     <div class="post-format">
                        <span class="icon-picture">
                        <i class= "fa fa-laptop"></i>
                        </span>
                     </div>
                     <a href="#"><img class= "img-responsive" src="image/design1.png" alt=""/></a>
                  </div>
                  <img class="hidden-xs post-shadow" src="image/post-shadow.png" alt=""/>
               </div>
               <div class= "post-excerpt col-md-7">
                  <h2 class="title"><a href="#">FLAT &amp; MODERN TREND DESIGN</a></h2>
                  <div class="line-dotted"></div>
                  <p>
                     Get started by adding graphics from Canva's extensive design library. Choose from illustrations, photos, icons, frames, and so much more. With over a million free and premium images to choose from, you're sure to find a perfect fit for your business.
                     <a href="#">...Read more</a>
                  </p>
                  <div class="line-dotted"></div>
                  <p class="meta">
                     <strong>Date:</strong> 10/07/2017 <strong>By:</strong> Nguyen Van An <strong>In: </strong><a href="#">Photography</a>, <a href="#">Print</a>, <a href="#">Design</a>
                  </p>
                  <div class="line-dotted"></div>
                  <div class="post-share">
                     <p>Share this post:</p>
                     <div class="la">
                        <a href="javascript:void(0);" class="fa fa-facebook"></a>
                        <a href="javascript:void(0);" class="fa fa-google-plus"></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class= "row post">
            <div class= "main_content">
               <div class= "post-thumbnail col-md-5">
                  <div class= "frame">
                     <div class="post-format">
                        <span class="icon-picture">
                        <i class= "fa fa-laptop"></i>
                        </span>
                     </div>
                     <a href="#"><img class= "img-responsive" src="image/design1.png" alt=""/></a>
                  </div>
                  <img class="hidden-xs post-shadow" src="image/post-shadow.png" alt=""/>
               </div>
               <div class= "post-excerpt col-md-7">
                  <h2 class="title"><a href="#">FLAT &amp; Business</a></h2>
                  <div class="line-dotted"></div>
                  <p>
                     Boost the registration for your seminar with a professionally-designed poster that’s noticeable and attention-worthy. Use this modern poster featuring an orange image of people in business attire and a blue semi-transparent banner at the bottom. It also features white text in a mix of modern fonts.
                     <a href="#">...Read more</a>
                  </p>
                  <div class="line-dotted"></div>
                  <p class="meta">
                     <strong>Date:</strong> 10/07/2017 <strong>By:</strong> Nguyen Van An <strong>In: </strong><a href="#">Photography</a>, <a href="#">Print</a>, <a href="#">Design</a>
                  </p>
                  <div class="line-dotted"></div>
                  <div class= "post-share">
                     <p>Share this post:</p>
                     <div class="la">
                        <a href="javascript:void(0);" class="fa fa-facebook"></a>
                        <a href="javascript:void(0);" class="fa fa-google-plus"></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class= "row">
            <div class= "col-md-6 col-md-offset-3 text-center">
               <ul class="pagination">
                  <li class="disabled"><a href="#">&gt;&gt;</a></li>
                  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">>></a></li>
               </ul>
            </div>
         </div>
      </div>
      <!-- container -->
      <div class="" id="us">
         <div class="row">
            <div class="col-lg-12 text-center">
               <h2 class="section-heading">Contact Us</h2>
               <h3 class="section-subheading text-muted">Welcome to WeTeach</h3>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <form name="sentMessage" id="contactForm" novalidate>
                  <div class="row">
                     <div class="col-md-6 col-md-offset-3">
                        <div class="form-horizontal">
                           <div class="form-group">
                              <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                              <p class="help-block text-danger"></p>
                           </div>
                           <div class="form-group">
                              <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                              <p class="help-block text-danger"></p>
                           </div>
                           <div class="form-group">
                              <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                              <p class="help-block text-danger"></p>
                           </div>
                           <div class="form-group">
                              <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                              <p class="help-block text-danger"></p>
                           </div>
                           <div class="text-center">
                              <div id="success"></div>
                              <button type="submit" class="btn btn-success btn-xl">Send Message</button><br>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <!-- BEGIN FOOTER -->
    <%@include file="common/footer.jsp"%>
      <!-- END FOOTER -->
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
      <script>
         jQuery(document).ready(function() {
             Layout.init();
         });
      </script>
      <!-- Global js END -->
   </body>
</html>