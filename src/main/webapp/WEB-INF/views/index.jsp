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
    <!-- Section: home -->
    <section id="home" class="divider parallax fullscreen" data-parallax-ratio="0.1" data-bg-img="http://placehold.it/1920x1280">
      <div class="display-table">
        <div class="display-table-cell">
          <div class="container pt-150 pb-150">
            <div class="row">
              <div class="col-md-8 col-md-offset-2 text-center">
                <div class="pb-50 pt-30">
                   <h3 class="text-uppercase text-white bg-dark-transparent-light font-30 inline-block border-left-theme-color-2-4px border-right-theme-color-2-4px pl-30 pr-30 mb-5 pt-5 pb-5">World Best University</h3>
                  <h1 class="text-uppercase text-white mt-0 inline-block bg-theme-colored-transparent border-left-theme-color-2-6px border-right-theme-color-2-6px pl-40 pr-40 pt-5 pb-5 font-42">Education For Everyone</h1>
                  <p class="font-16 text-white">We provides always our best services for our clients and  always<br> try to achieve our client's trust and satisfaction.</p>
                  <a href="#" class="btn btn-colored btn-lg btn-theme-colored pl-20 pr-20">View Details</a> 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> 

    <!-- Section: welcome -->
    <section id="welcome" class="divider layer-overlay overlay-dark-6 parallax" data-parallax-ratio="0.1" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-150 pb-150">
        <div class="section-content">
          <div class="row">
            <div class="col-md-6">
              <h6 class="letter-space-4 text-gray-darkgray text-uppercase mt-0 mb-0">All About</h6>
              <h2 class="text-uppercase font-weight-600 text-gray-lightgray mt-0 font-28 line-bottom">The Worldâs Best Education in Our University</h2>
              <h4 class="text-theme-color-2">Lorem ipsum dolor sit amet soluta saepe odit error, maxime praesentium sunt udiandae!</h4>
              <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore atque officiis maxime suscipit expedita obcaecati nulla in ducimus iure quos quam recusandae dolor quas et perspiciatis voluptatum accusantium delectus nisi reprehenderit, eveniet fuga modi pariatur, eius vero. Ea vitae maiores.</p>
              <a class="btn btn-theme-colored btn-flat btn-lg mt-10 mb-sm-30" href="#">Know More â</a>
            </div>
            <div class="col-md-6">
              <div class="video-popup">                
                <a href="https://www.youtube.com/watch?v=pW1uVUg5wXM" data-lightbox-gallery="youtube-video" title="Video">
                  <img alt="" src="http://placehold.it/555x330" class="img-responsive img-fullwidth">
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Courses -->
    <section id="services" class="divider parallax layer-overlay overlay-dark-6" data-parallax-ratio="0.1" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">Our <span class="text-theme-color-2 font-weight-400"> Courses</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">Best Education & Courses HTML Template</p>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="owl-carousel-4col">
              <div class="item ">
                <div class="service-block bg-white">
                  <div class="thumb"> <img alt="featured project" src="http://placehold.it/265x195" class="img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price">$125</span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 class="line-bottom mb-10">Accounting Technologies</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.</p>
                   <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="page-courses-accounting-technologies.html">view details</a>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="service-block mb-md-30 bg-white">
                  <div class="thumb"> <img alt="featured project" src="http://placehold.it/265x195" class="img-responsive img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price">$125</span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 class="line-bottom mb-10">Computer Technologies</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.</p>
                   <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="page-courses-accounting-technologies.html">view details</a>
                 </div>
                </div>
              </div>
              <div class="item">
                <div class="service-block mb-md-30 bg-white">
                  <div class="thumb"> <img alt="featured project" src="http://placehold.it/265x195" class="img-responsive img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price">$125</span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 class="line-bottom mb-10">Development Studies</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.</p>
                   <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="page-courses-accounting-technologies.html">view details</a>
                 </div>
                </div>
              </div>
              <div class="item">
                <div class="service-block mb-md-30 bg-white">
                  <div class="thumb"> <img alt="featured project" src="http://placehold.it/265x195" class="img-responsive img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price">$125</span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 class="line-bottom mb-10">Electrical & Electronic</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.</p>
                    <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="page-courses-accounting-technologies.html">view details</a>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="service-block mb-md-30 bg-white">
                  <div class="thumb"> <img alt="featured project" src="http://placehold.it/265x195" class="img-responsive img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price">$125</span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 class="line-bottom mb-10">Chemical Engineering</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.</p>
                    <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="page-courses-accounting-technologies.html">view details</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Experts -->
    <section id="experts" class="divider parallax layer-overlay overlay-dark-4" data-parallax-ratio="0.1" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">Our <span class="text-theme-color-2 font-weight-400"> Teachers</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">Best Education & Courses HTML Template</p>
            </div>
          </div>
        </div>
        <div class="row mtli-row-clearfix">
          <div class="col-md-12">
            <div class="owl-carousel-4col">
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Jhon Anderson</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Zakaria Smith</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">David Matthews</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Andrew Smith</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Faruk Haydar</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: blog -->
    <section id="blog" class="divider parallax layer-overlay overlay-dark-6" data-parallax-ratio="0.1" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">Latest <span class="text-theme-color-2 font-weight-400"> News</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">Best Education & Courses HTML Template</p>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <div class="owl-carousel-3col">
                <div class="item">
                  <article class="post clearfix mb-30 bg-lighter">
                    <div class="entry-header">
                      <div class="post-thumb thumb"> 
                        <img src="http://placehold.it/330x225" alt="" class="img-responsive img-fullwidth"> 
                      </div>                    
                      <div class="entry-date media-left text-center flip bg-theme-colored border-top-theme-color-2-3px pt-5 pr-15 pb-5 pl-15">
                        <ul>
                          <li class="font-16 text-white font-weight-600">28</li>
                          <li class="font-12 text-white text-uppercase">Feb</li>
                        </ul>
                      </div>
                    </div>
                    <div class="entry-content p-15 pt-10 pb-10">
                      <div class="entry-meta media no-bg no-border mt-0 mb-10">
                        <div class="media-body pl-0">
                          <div class="event-content pull-left flip">
                            <h4 class="entry-title text-white text-uppercase font-weight-600 m-0 mt-5"><a href="blog-single-left-sidebar.html">Post title here</a></h4>
                            <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-commenting-o mr-5 text-theme-colored"></i> 214 Comments</span>
                            <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-heart-o mr-5 text-theme-colored"></i> 895 Likes</span>
                          </div>
                        </div>
                      </div>
                      <p class="mt-5">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Molestias eius illum libero dolor nobis deleniti<a class="text-theme-color-2 font-12 ml-5" href="blog-single-left-sidebar.html"> View Details</a></p>
                    </div>
                  </article>
                </div>
                <div class="item">
                  <article class="post clearfix mb-30 bg-lighter">
                    <div class="entry-header">
                      <div class="post-thumb thumb"> 
                        <img src="http://placehold.it/330x225" alt="" class="img-responsive img-fullwidth"> 
                      </div>                    
                      <div class="entry-date media-left text-center flip bg-theme-colored border-top-theme-color-2-3px pt-5 pr-15 pb-5 pl-15">
                        <ul>
                          <li class="font-16 text-white font-weight-600">28</li>
                          <li class="font-12 text-white text-uppercase">Feb</li>
                        </ul>
                      </div>
                    </div>
                    <div class="entry-content p-15 pt-10 pb-10">
                      <div class="entry-meta media no-bg no-border mt-0 mb-10">
                        <div class="media-body pl-0">
                          <div class="event-content pull-left flip">
                            <h4 class="entry-title text-white text-uppercase font-weight-600 m-0 mt-5"><a href="#">Post title here</a></h4>
                            <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-commenting-o mr-5 text-theme-colored"></i> 214 Comments</span>
                            <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-heart-o mr-5 text-theme-colored"></i> 895 Likes</span>                      
                          </div>
                        </div>
                      </div>
                      <p class="mt-5">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Molestias eius illum libero dolor nobis deleniti<a class="text-theme-color-2 font-12 ml-5" href="#"> View Details</a></p>
                    </div>
                  </article>
                </div>
                <div class="item">
                  <article class="post clearfix mb-30 bg-lighter">
                    <div class="entry-header">
                      <div class="post-thumb thumb"> 
                        <img src="http://placehold.it/570x390" alt="" class="img-responsive img-fullwidth"> 
                      </div>                    
                      <div class="entry-date media-left text-center flip bg-theme-colored border-top-theme-color-2-3px pt-5 pr-15 pb-5 pl-15">
                        <ul>
                          <li class="font-16 text-white font-weight-600">28</li>
                          <li class="font-12 text-white text-uppercase">Feb</li>
                        </ul>
                      </div>
                    </div>
                    <div class="entry-content p-15 pt-10 pb-10">
                      <div class="entry-meta media no-bg no-border mt-0 mb-10">
                        <div class="media-body pl-0">
                          <div class="event-content pull-left flip">
                            <h4 class="entry-title text-white text-uppercase font-weight-600 m-0 mt-5"><a href="blog-single-left-sidebar.html">Post title here</a></h4>
                            <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-commenting-o mr-5 text-theme-colored"></i> 214 Comments</span>
                            <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-heart-o mr-5 text-theme-colored"></i> 895 Likes</span>
                          </div>
                        </div>
                      </div>
                      <p class="mt-5">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Molestias eius illum libero dolor nobis deleniti<a class="text-theme-color-2 font-12 ml-5" href="blog-single-left-sidebar.html"> View Details</a></p>
                    </div>
                  </article>
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