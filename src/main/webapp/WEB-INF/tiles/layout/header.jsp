<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>

    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="Learning Machine"/>
    <meta name="keywords" content="academy, course, education, learning machine, elearning, learning,
e-learning, code, coding, java, javascript, spring, 인터넷강의, 코딩, 코딩교육, 자바, 자바스크립트"/>
    <meta name="author" content="LM company"/>

    <!-- Favicon and Touch Icons -->
    <link href="${pageContext.request.contextPath}images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="${pageContext.request.contextPath}images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="${pageContext.request.contextPath}images/apple-touch-icon-72x72.png" rel="apple-touch-icon"
          sizes="72x72">
    <link href="${pageContext.request.contextPath}images/apple-touch-icon-114x114.png" rel="apple-touch-icon"
          sizes="114x114">
    <link href="${pageContext.request.contextPath}images/apple-touch-icon-144x144.png" rel="apple-touch-icon"
          sizes="144x144">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}css/animate.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}css/css-plugin-collections.css" rel="stylesheet"/>
    <!-- CSS | menuzord megamenu skins -->
    <link id="menuzord-menu-skins"
          href="${pageContext.request.contextPath}css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
    <!-- CSS | Main style file -->
    <link href="${pageContext.request.contextPath}css/style-main.css" rel="stylesheet" type="text/css">
    <!-- CSS | Preloader Styles -->
    <link href="${pageContext.request.contextPath}css/preloader.css" rel="stylesheet" type="text/css">
    <!-- CSS | Custom Margin Padding Collection -->
    <link href="${pageContext.request.contextPath}css/custom-bootstrap-margin-padding.css" rel="stylesheet"
          type="text/css">
    <!-- CSS | Responsive media queries -->
    <link href="${pageContext.request.contextPath}css/responsive.css" rel="stylesheet" type="text/css">
    <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
    <link href="${pageContext.request.contextPath}css/style.css" rel="stylesheet" type="text/css">

    <!-- CSS | Theme Color -->
    <link href="${pageContext.request.contextPath}css/colors/theme-skin-color-set-1.css" rel="stylesheet"
          type="text/css">

    <!-- external javascripts -->
    <script src="${pageContext.request.contextPath}js/jquery-2.2.4.min.js"></script>
    <script src="${pageContext.request.contextPath}js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}js/bootstrap.min.js"></script>
    <!-- JS | jquery plugin collection for this theme -->
    <script src="${pageContext.request.contextPath}js/jquery-plugin-collection.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>


<!-- Header -->
<header id="header" class="header">
    <div class="header-top bg-theme-color-2 sm-text-center p-0">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="widget no-border m-0">
                        <ul class="list-inline font-13 sm-text-center mt-5">
                            <li>
                                <a class="text-white" href="#">FAQ</a>
                            </li>
                            <li class="text-white">|</li>
                            <li>
                                <a class="text-white" href="#">Help Desk</a>
                            </li>
                            <li class="text-white">|</li>
                            <li>
                                <a class="text-white" href="#">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="widget m-0 pull-right sm-pull-none sm-text-center">
                        <ul class="list-inline pull-right">
                            <li class="mb-0 pb-0">
                                <div class="top-dropdown-outer pt-5 pb-10">
                                    <a class="top-cart-link has-dropdown text-white text-hover-theme-colored"><i
                                            class="fa fa-shopping-cart font-13"></i> (12)</a>
                                    <ul class="dropdown">
                                        <li>
                                            <!-- dropdown cart -->
                                            <div class="dropdown-cart">
                                                <table class="table cart-table-list table-responsive">
                                                    <tbody>
                                                    <tr>
                                                        <td><a href="#"><img alt="" src="http://placehold.it/85x85"></a>
                                                        </td>
                                                        <td><a href="#"> Product Title</a></td>
                                                        <td>X3</td>
                                                        <td>$ 100.00</td>
                                                        <td><a class="close" href="#"><i
                                                                class="fa fa-close font-13"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a href="#"><img alt="" src="http://placehold.it/85x85"></a>
                                                        </td>
                                                        <td><a href="#"> Product Title</a></td>
                                                        <td>X2</td>
                                                        <td>$ 70.00</td>
                                                        <td><a class="close" href="#"><i
                                                                class="fa fa-close font-13"></i></a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <div class="total-cart text-right">
                                                    <table class="table table-responsive">
                                                        <tbody>
                                                        <tr>
                                                            <td>Cart Subtotal</td>
                                                            <td>$170.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Shipping and Handling</td>
                                                            <td>$20.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Order Total</td>
                                                            <td>$190.00</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="cart-btn text-right">
                                                    <a class="btn btn-theme-colored btn-xs" href="shop-cart.html"> View
                                                        cart</a>
                                                    <a class="btn btn-dark btn-xs" href="shop-checkout.html">
                                                        Checkout</a>
                                                </div>
                                            </div>
                                            <!-- dropdown cart ends -->
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="mb-0 pb-0">
                                <div class="top-dropdown-outer pt-5 pb-10">
                                    <a class="top-search-box has-dropdown text-white text-hover-theme-colored"><i
                                            class="fa fa-search font-13"></i> &nbsp;</a>
                                    <ul class="dropdown">
                                        <li>
                                            <div class="search-form-wrapper">
                                                <form method="get" class="mt-10">
                                                    <input type="text"
                                                           onfocus="if(this.value =='Enter your search') { this.value = ''; }"
                                                           onblur="if(this.value == '') { this.value ='Enter your search'; }"
                                                           value="Enter your search" id="searchinput" name="s" class="">
                                                    <label><input type="submit" name="submit" value=""></label>
                                                </form>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="widget no-border m-0 mr-15 pull-right flip sm-pull-none sm-text-center">
                        <ul class="styled-icons icon-circled icon-sm pull-right flip sm-pull-none sm-text-center mt-sm-15">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-middle p-0 bg-lightest xs-text-center">
        <div class="container pt-0 pb-0">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-5">
                    <div class="widget no-border m-0">
                        <a class="menuzord-brand pull-left flip xs-pull-center mb-15" href="javascript:void(0)"><img
                                src="images/logo-wide22.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <div class="widget no-border pull-right sm-pull-none sm-text-center mt-10 mb-10 m-0">
                        <ul class="list-inline">
                            <li><i class="fa fa-phone-square text-theme-colored font-36 mt-5 sm-display-block"></i></li>
                            <li>
                                <a href="#" class="font-12 text-gray text-uppercase">Call us today!</a>
                                <h5 class="font-14 m-0"> +(012) 345 6789</h5>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="widget no-border pull-right sm-pull-none sm-text-center mt-10 mb-10 m-0">
                        <ul class="list-inline">
                            <li><i class="fa fa-clock-o text-theme-colored font-36 mt-5 sm-display-block"></i></li>
                            <li>
                                <a href="#" class="font-12 text-gray text-uppercase">We are open!</a>
                                <h5 class="font-13 text-black m-0"> Mon-Fri 8:00-16:00</h5>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-nav-wrapper navbar-scrolltofixed bg-theme-colored border-bottom-theme-color-2-1px"
         style="z-index: auto; position: static; top: auto;">
        <div class="container">
            <nav id="menuzord" class="menuzord bg-theme-colored pull-left flip menuzord-responsive"><a
                    href="javascript:void(0)" class="showhide" style="display: none;"><em></em><em></em><em></em></a>
                <ul class="menuzord-menu onepage-nav menuzord-indented scrollable" style="max-height: 400px;">
                    <li><a href="notice">공지사항</a></li>
                    <li><a href="academy">교육원</a></li>
                    <li><a href="offlecture">오프라인 강의</a></li>
                    <li><a href="onlecture">온라인 강의</a></li>
                    <li><a href="roadmap">로드맵</a></li>
                    <li><a href="community">커뮤니티</a></li>
                    <li class="scrollable-fix"></li>
                </ul>
                <ul class="pull-right flip hidden-sm hidden-xs">
                    <li>
                        <!-- Modal: Book Now Starts -->
                        <a class="btn btn-colored btn-flat bg-theme-color-2 text-white font-14 bs-modal-ajax-load mt-0 p-25 pr-15 pl-15"
                           data-toggle="modal" data-target="#BSParentModal" href="ajax-load/reservation-form.html">마이
                            페이지</a>
                        <!-- Modal: Book Now End -->
                    </li>
                </ul>
                <div id="top-search-bar" class="collapse">
                    <div class="container">
                        <form role="search" action="#" class="search_form_top" method="get">
                            <input type="text" placeholder="Type text and press Enter..." name="s" class="form-control"
                                   autocomplete="off">
                            <span class="search-close"><i class="fa fa-search"></i></span>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>


</body>
</html>