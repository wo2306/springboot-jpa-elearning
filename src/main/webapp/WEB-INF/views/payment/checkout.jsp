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
              <h2 class="title text-white">Shop Checkout</h3>
              <ul class="list-inline text-white">
                <li>Home /</li>
                <li><span class="text-gray">Shop Checkout</span></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="section-content">
          <div class="row mt-30">
            <form id="checkout-form" action="#">
              <div class="col-md-6">
                <div class="billing-details">
                  <h3 class="mb-30">Billing Details</h3>
                  <div class="row">
                    <div class="form-group col-md-6">
                      <label for="checkuot-form-fname">First Name</label>
                      <input id="checkuot-form-fname" type="email" class="form-control" placeholder="First Name">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="checkuot-form-lname">Last Name</label>
                      <input id="checkuot-form-lname" type="email" class="form-control" placeholder="Last Name">
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="checkuot-form-cname">Company Name</label>
                        <input id="checkuot-form-cname" type="email" class="form-control" placeholder="Company Name">
                      </div>
                      <div class="form-group">
                        <label for="checkuot-form-email">Email Address</label>
                        <input id="checkuot-form-email" type="email" class="form-control" placeholder="Email Address">
                      </div>
                      <div class="form-group">
                        <label for="checkuot-form-address">Address</label>
                        <input id="checkuot-form-address" type="email" class="form-control" placeholder="Street address">
                      </div>
                      <div class="form-group">
                        <input type="email" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                      </div>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="checkuot-form-city">City</label>
                      <input id="checkuot-form-city" type="email" class="form-control" placeholder="City">
                    </div>
                    <div class="form-group col-md-6">
                      <label>State/Province</label>
                      <select class="form-control">
                        <option>Select Country</option>
                        <option>Australia</option>
                        <option>UK</option>
                        <option>USA</option>
                      </select>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="checkuot-form-zip">Zip/Postal Code</label>
                      <input id="checkuot-form-zip" type="email" class="form-control" placeholder="Zip/Postal Code">
                    </div>
                    <div class="form-group col-md-6">
                      <label>Country</label>
                      <select class="form-control">
                        <option>Select Country</option>
                        <option>Australia</option>
                        <option>UK</option>
                        <option>USA</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="shipping-details">
                  <h3 class="mb-30"> Ship to a different address?
                    <span class="checkbox pull-right flip mt-0">
                      <label>
                        <input type="checkbox" id="checkbox-ship-to-different-address" value="option1" aria-label="...">
                      </label>
                    </span>
                  </h3>
                  <div id="checkout-shipping-address">
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label for="checkuot-form-fname2">First Name</label>
                        <input id="checkuot-form-fname2" type="email" class="form-control" placeholder="First Name">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="checkuot-form-lname2">Last Name</label>
                        <input id="checkuot-form-lname2" type="email" class="form-control" placeholder="Last Name">
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="checkuot-form-cname2">Company Name</label>
                          <input id="checkuot-form-cname2" type="email" class="form-control" placeholder="Company Name">
                        </div>
                        <div class="form-group">
                          <label for="checkuot-form-email2">Email Address</label>
                          <input id="checkuot-form-email2" type="email" class="form-control" placeholder="Email Address">
                        </div>
                        <div class="form-group">
                          <label for="checkuot-form-address2">Address</label>
                          <input id="checkuot-form-address2" type="email" class="form-control" placeholder="Street address">
                        </div>
                        <div class="form-group">
                          <input type="email" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                        </div>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="checkuot-form-city2">City</label>
                        <input id="checkuot-form-city2" type="email" class="form-control" placeholder="City">
                      </div>
                      <div class="form-group col-md-6">
                        <label>State/Province</label>
                        <select class="form-control">
                          <option>Select Country</option>
                          <option>Australia</option>
                          <option>UK</option>
                          <option>USA</option>
                        </select>
                      </div>
                      <div class="form-group col-md-6">
                        <label for="checkuot-form-zip2">Zip/Postal Code</label>
                        <input id="checkuot-form-zip2" type="email" class="form-control" placeholder="Zip/Postal Code">
                      </div>
                      <div class="form-group col-md-6">
                        <label>Country</label>
                        <select class="form-control">
                          <option>Select Country</option>
                          <option>Australia</option>
                          <option>UK</option>
                          <option>USA</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label>Order Notes</label>
                    <textarea class="form-control" placeholder="Notes about your order, e.g. special notes for delivery." rows="3"></textarea>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <h3>Your order</h3>
                <table class="table table-striped table-bordered tbl-shopping-cart">
                  <thead>
                    <tr>
                      <th>Photo</th>
                      <th>Product Name</th>
                      <th>Total</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td><a href="#">Helmets</a> x 2</td>
                      <td><span class="amount">$36.00</span></td>
                    </tr>
                    <tr>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td><a href="#">Saddles</a> x 3</td>
                      <td><span class="amount">$115.00</span></td>
                    </tr>
                    <tr>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td><a href="#">Vests</a> x 1</td>
                      <td><span class="amount">$68.00</span></td>
                    </tr>
                    <tr>
                      <td>Cart Subtotal</td>
                      <td>&nbsp;</td>
                      <td>$180.00</td>
                    </tr>
                    <tr>
                      <td>Shipping and Handling</td>
                      <td>&nbsp;</td>
                      <td>Free Shipping</td>
                    </tr>
                    <tr>
                      <td>Order Total</td>
                      <td>&nbsp;</td>
                      <td>$250.00</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="col-md-12">
                <h3>Payment Information</h3>
                <div class="payment-method">
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" value="option1" checked>
                      Direct Bank Transfer </label>
                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wonât be shipped until the funds have cleared in our account.</p>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" value="option2" checked>
                      Cheque Payment </label>
                    <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" value="option3" checked>
                      PayPal Payment </label>
                    <p>Please use your Order ID as the payment reference. Your order wonât be shipped until the funds have cleared in our account.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="text-right"> <a class="btn btn-default">Place Order</a> </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
  <!-- end main-content -->
</body>
</html>