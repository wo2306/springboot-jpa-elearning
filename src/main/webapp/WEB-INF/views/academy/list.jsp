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
  <title>LM company | Learning Machine | main</title>

  <!-- Favicon and Touch Icons -->
  <link href="${pageContext.request.contextPath}/images/favicon.png" rel="shortcut icon" type="image/png">
  <link href="${pageContext.request.contextPath}/images/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="${pageContext.request.contextPath}/images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
  <link href="${pageContext.request.contextPath}/images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
  <link href="${pageContext.request.contextPath}/images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

  <!-- Stylesheet -->
  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/css/css-plugin-collections.css" rel="stylesheet"/>
  <!-- CSS | menuzord megamenu skins -->
  <link id="menuzord-menu-skins" href="${pageContext.request.contextPath}/css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
  <!-- CSS | Main style file -->
  <link href="${pageContext.request.contextPath}/css/style-main.css" rel="stylesheet" type="text/css">
  <!-- CSS | Preloader Styles -->
  <link href="${pageContext.request.contextPath}/css/preloader.css" rel="stylesheet" type="text/css">
  <!-- CSS | Custom Margin Padding Collection -->
  <link href="${pageContext.request.contextPath}/css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
  <!-- CSS | Responsive media queries -->
  <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" type="text/css">
  <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
  <!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

  <!-- CSS | Theme Color -->
  <link href="${pageContext.request.contextPath}/css/colors/theme-skin-color-set-1.css" rel="stylesheet" type="text/css">

  <!-- external javascripts -->
  <script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <!-- JS | jquery plugin collection for this theme -->
  <script src="${pageContext.request.contextPath}/js/jquery-plugin-collection.js"></script>

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
              <h3 class="title text-white">Event List without Sidebar</h3>
              <ol class="breadcrumb text-center text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-theme-colored">Page Title</li>
                <li class="active text-theme-colored">Event List without Sidebar</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: event calendar -->
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="upcoming-events bg-white-f3 mb-20">
              <div class="row">
                <div class="col-sm-4 pr-0 pr-sm-15">
                  <div class="thumb p-15">
                    <img class="img-fullwidth" src="https://placehold.it/220x160" alt="...">
                  </div>
                </div>
                <div class="col-sm-4 pl-0 pl-sm-15">
                  <div class="event-details p-15 mt-20">
                    <h4 class="mt-0 text-uppercase font-weight-500">feed a hungry child</h4>
                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante Nulla vel metus scelerisque ante.</p>
                    <a href="#" class="btn btn-flat btn-dark btn-theme-colored btn-sm mt-10">Details <i class="fa fa-angle-double-right"></i></a>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="event-count p-15 mt-15">
                    <ul class="event-date list-inline font-16 text-uppercase mt-10 mb-20">
                      <li class="p-15 mr-5 bg-lightest">Dec</li>
                      <li class="p-15 pl-20 pr-20 mr-5 bg-lightest"> 31</li>
                      <li class="p-15 bg-lightest">2015</li>
                    </ul>
                    <ul>
                      <li class="mb-10"><a href="#"><i class="fa fa-clock-o mr-5"></i> at 5.00 pm - 7.30 pm</a></li>
                      <li><a href="#"><i class="fa fa-map-marker mr-5"></i> 25 Newyork City.</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="upcoming-events bg-white-f3 mb-20">
              <div class="row">
                <div class="col-sm-4 pr-0 pr-sm-15">
                  <div class="thumb p-15">
                    <img class="img-fullwidth" src="https://placehold.it/220x160" alt="...">
                  </div>
                </div>
                <div class="col-sm-4 pl-0 pl-sm-15">
                  <div class="event-details p-15 mt-20">
                    <h4 class="mt-0 text-uppercase font-weight-500">feed a hungry child</h4>
                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante Nulla vel metus scelerisque ante.</p>
                    <a href="#" class="btn btn-flat btn-dark btn-theme-colored btn-sm mt-10">Details <i class="fa fa-angle-double-right"></i></a>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="event-count p-15 mt-15">
                    <ul class="event-date list-inline font-16 text-uppercase mt-10 mb-20">
                      <li class="p-15 mr-5 bg-lightest">Dec</li>
                      <li class="p-15 pl-20 pr-20 mr-5 bg-lightest"> 31</li>
                      <li class="p-15 bg-lightest">2015</li>
                    </ul>
                    <ul>
                      <li class="mb-10"><a href="#"><i class="fa fa-clock-o mr-5"></i> at 5.00 pm - 7.30 pm</a></li>
                      <li><a href="#"><i class="fa fa-map-marker mr-5"></i> 25 Newyork City.</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="upcoming-events bg-white-f3 mb-20">
              <div class="row">
                <div class="col-sm-4 pr-0 pr-sm-15">
                  <div class="thumb p-15">
                    <img class="img-fullwidth" src="https://placehold.it/220x160" alt="...">
                  </div>
                </div>
                <div class="col-sm-4 pl-0 pl-sm-15">
                  <div class="event-details p-15 mt-20">
                    <h4 class="mt-0 text-uppercase font-weight-500">feed a hungry child</h4>
                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante Nulla vel metus scelerisque ante.</p>
                    <a href="#" class="btn btn-flat btn-dark btn-theme-colored btn-sm mt-10">Details <i class="fa fa-angle-double-right"></i></a>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="event-count p-15 mt-15">
                    <ul class="event-date list-inline font-16 text-uppercase mt-10 mb-20">
                      <li class="p-15 mr-5 bg-lightest">Dec</li>
                      <li class="p-15 pl-20 pr-20 mr-5 bg-lightest"> 31</li>
                      <li class="p-15 bg-lightest">2015</li>
                    </ul>
                    <ul>
                      <li class="mb-10"><a href="#"><i class="fa fa-clock-o mr-5"></i> at 5.00 pm - 7.30 pm</a></li>
                      <li><a href="#"><i class="fa fa-map-marker mr-5"></i> 25 Newyork City.</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <nav>
                  <ul class="pagination theme-colored pull-right xs-pull-center mb-xs-40">
                    <li> <a href="#" aria-label="Previous"> <span aria-hidden="true">Â«</span> </a> </li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">...</a></li>
                    <li> <a href="#" aria-label="Next"> <span aria-hidden="true">Â»</span> </a> </li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
</div>
</body>
</html>