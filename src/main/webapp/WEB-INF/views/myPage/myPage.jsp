<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Learning Machine" />
<meta name="keywords" content="academy, course, education, learning machine, elearning, learning, 
e-learning, code, coding, java, javascript, spring, 인터넷강의, 코딩, 코딩교육, 자바, 자바스크립트" />
<meta name="author" content="LM company" />

<!-- Page Title -->
<title>LM company | Learning Machine</title>

<!-- Favicon and Touch Icons -->
<link href="images/favicon.png" rel="shortcut icon" type="image/png">
<link href="images/apple-touch-icon.png" rel="apple-touch-icon">
<link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
<link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
<link href="images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/css-plugin-collections.css" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link id="menuzord-menu-skins" href="css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="css/style-main.css" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="css/preloader.css" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- CSS | Theme Color -->
<link href="css/colors/theme-skin-color-set-1.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="js/jquery-plugin-collection.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="">
<div id="wrapper" class="clearfix">
  <!-- preloader -->
  <div id="preloader">
    <div id="spinner">
      <div class="preloader-dot-loading">
        <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
      </div>
    </div>
    <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
  </div>  
  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">My Account</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-gray-silver">Page Title</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
      
    <!-- Section: Doctor Details -->
    <section class="">
      <div class="container">
        <div class="section-content">
          <div class="row">
            <div class="col-sx-12 col-sm-4 col-md-4">
              <div class="doctor-thumb">
                <img src="http://placehold.it/400x470" alt="">
              </div>
              <div class="info p-20 bg-black-333">
                <h4 class="text-uppercase text-white">Jacob Smith</h4>
                <p class="text-gray-silver">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore atque officiis maxime suscipit expedita obcaecati nulla in ducimus.</p>
                <ul class="list angle-double-right m-0">
                  <li class="mt-0 text-gray-silver"><strong class="text-gray-lighter">Email</strong><br> smith@yourdomain.com</li>
                  <li class="text-gray-silver"><strong class="text-gray-lighter">Web</strong><br> www.yourdomain.com</li>
                </ul>
                <ul class="styled-icons icon-gray icon-circled icon-sm mt-15 mb-15">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-skype"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                </ul>
                <a class="btn btn-info btn-flat mt-10 mb-sm-30" href="#">Edit Profile</a>
                <a class="btn btn-danger btn-flat mt-10 mb-sm-30" href="#">Logout</a>
              </div>
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8">
              <div>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#orders" aria-controls="orders" role="tab" data-toggle="tab" class="font-15 text-uppercase">Orders <span class="badge">4</span></a></li>
                  <li role="presentation"><a href="#free-orders" aria-controls="free-orders" role="tab" data-toggle="tab" class="font-15 text-uppercase">Free Orders <span class="badge">3</span></a></li>
                  <li role="presentation"><a href="#bookmarks" aria-controls="bookmarks" role="tab" data-toggle="tab" class="font-15 text-uppercase">Bookmarks <span class="badge">5</span></a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane active" id="orders">
                    <div class="table-responsive">
                      <table class="table table-hover">
                         <thead>
                            <tr>
                               <th>Order ID</th>
                               <th>Date</th>
                               <th>Payment</th>
                               <th>Total</th>
                               <th></th>
                            </tr>
                         </thead>
                         <tbody>
                            <tr>
                               <th scope="row">#1264</th>
                               <td>24/07/2016</td>
                               <td>PayPal</td>
                               <td>$127.50</td>
                               <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                            </tr>
                            <tr>
                               <th scope="row">#1264</th>
                               <td>24/07/2016</td>
                               <td>PayPal</td>
                               <td>$127.50</td>
                               <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                            </tr>
                            <tr>
                               <th scope="row">#1264</th>
                               <td>24/07/2016</td>
                               <td>PayPal</td>
                               <td>$127.50</td>
                               <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                            </tr>
                            <tr>
                               <th scope="row">#1264</th>
                               <td>24/07/2016</td>
                               <td>PayPal</td>
                               <td>$127.50</td>
                               <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                            </tr>
                         </tbody>
                      </table>
                    </div>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="free-orders">
                    <table class="table table-hover">
                       <thead>
                          <tr>
                             <th>Order ID</th>
                             <th>Date</th>
                             <th>Payment</th>
                             <th>Total</th>
                             <th></th>
                          </tr>
                       </thead>
                       <tbody>
                          <tr>
                             <th scope="row">#1189</th>
                             <td>24/07/2016</td>
                             <td>PayPal</td>
                             <td>$127.50</td>
                             <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                          </tr>
                          <tr>
                             <th scope="row">#1189</th>
                             <td>24/07/2016</td>
                             <td>PayPal</td>
                             <td>$127.50</td>
                             <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                          </tr>
                          <tr>
                             <th scope="row">#1189</th>
                             <td>24/07/2016</td>
                             <td>PayPal</td>
                             <td>$127.50</td>
                             <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                          </tr>
                          <tr>
                             <th scope="row">#1189</th>
                             <td>24/07/2016</td>
                             <td>PayPal</td>
                             <td>$127.50</td>
                             <td><a class="btn btn-success btn-xs" href="#">View Order</a></td>
                          </tr>
                       </tbody>
                    </table>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="bookmarks">
                    <table class="table">
                       <tbody>
                          <tr>
                             <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                             <td><h4>Web Development Course</h3></h4>
                             <td><h4>$127.50</h3></h4>
                             <td><h4><a href="#"><i class="fa fa-close"></i></a></h3></h4>
                          </tr>
                          <tr>
                             <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                             <td><h4>Software Development Course</h3></h4>
                             <td><h4>$127.50</h3></h4>
                             <td><h4><a href="#"><i class="fa fa-close"></i></a></h3></h4>
                          </tr>
                          <tr>
                             <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                             <td><h4>App Development Course</h3></h4>
                             <td><h4>$127.50</h3></h4>
                             <td><h4><a href="#"><i class="fa fa-close"></i></a></h3></h4>
                          </tr>
                          <tr>
                             <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                             <td><h4>Photoshop Course</h3></h4>
                             <td><h4>$127.50</h3></h4>
                             <td><h4><a href="#"><i class="fa fa-close"></i></a></h3></h4>
                          </tr>
                       </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </div>
  </div>
  <!-- end main-content -->
  

</body>
</html>