<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="StudyPress | Education & Courses HTML Template" />
<meta name="keywords" content="academy, course, education, education html theme, elearning, learning," />
<meta name="author" content="ThemeMascot" />

<!-- Page Title -->
<title>StudyPress | Education & Courses HTML Template</title>

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
 
  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">로드맵 상세보기</h2>
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

    <section>
      <div class="container">
        <div class="section-content">
          <div class="row">
            <div class="product">
              <div class="col-md-5">
                <div class="product-image">
                  <div class="zoom-gallery">
                    <a href="http://placehold.it/460x460" title="Title Here 1"><img src="http://placehold.it/460x460" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="col-md-7">
                <div class="product-summary">
                  <h2 class="product-title">로드맵에 추가된 강의 1</h2>
                  <div class="product_review">
                    <ul class="review_text list-inline">
                      <li>
                        <div title="Rated 4.50 out of 5" class="star-rating"><span style="width: 90%;">4.50</span></div>
                      </li>
                      <li><a href="#"><span>2</span>Reviews</a></li>
                      <li><a href="#">Add reviews</a></li>
                    </ul>
                  </div>
                  <div class="price"> <del><span class="amount">$165.00</span></del> <ins><span class="amount">$160.00</span></ins> </div>
                  <div class="short-description">
                    <p>Donec volutpat purus tempor sem molestie, sed blandit lacus posuere. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut posuere mollis nulla ut consectetur.</p>
                  </div>
                  <div class="tags"><strong>SKU:</strong> EA34</div>
                  <div class="category"><strong>Category:</strong> <a href="#">Book</a>, <a href="#">Note Book</a></div>
                  <div class="tags"><strong>Tags:</strong> <a href="#">Bag</a>, <a href="#">Ladies Bag</a></div>
                  <div class="cart-form-wrapper mt-30">
                    <form enctype="multipart/form-data" method="post" class="cart">
                      <input type="hidden" value="productID" name="add-to-cart">
                      <table class="table variations no-border">
                        <tbody>
                          <tr>
                            <td class="name">Amount</td>
                            <td class="value">
                              <div class="quantity buttons_added">
                                <input type="button" class="minus" value="-">
                                <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                <input type="button" class="plus" value="+">
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <button class="single_add_to_cart_button btn btn-theme-colored" type="submit">강의 보러가기</button>
                    </form>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="horizontal-tab product-tab">
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab1" data-toggle="tab">Description</a></li>
                    <li><a href="#tab2" data-toggle="tab">Additional Information</a></li>
                    <li><a href="#tab3" data-toggle="tab">Reviews</a></li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1">
                      <h3>Product Description</h3>
                      <p>One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus voluptates nisi hic alias libero explicabo reiciendis sint ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae. One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus voluptates nisi hic alias libero explicabo reiciendis sint ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.</p>
                      <p>One Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, iste, architecto ullam tenetur quia nemo ratione tempora consectetur quos minus voluptates nisi hic alias libero explicabo reiciendis sint ut quo nulla ipsa aliquid neque molestias et qui sunt. Odit, molestiae.</p>
                    </div>
                    <div class="tab-pane fade" id="tab2">
                      <table class="table table-striped">
                        <tbody>
                          <tr>
                            <th>Brand</th>
                            <td><p>Envato</p></td>
                          </tr>
                          <tr>
                            <th>Color</th>
                            <td><p>Black</p></td>
                          </tr>
                          <tr>
                            <th>Size</th>
                            <td><p>Large, Medium</p></td>
                          </tr>
                          <tr>
                            <th>Weight</th>
                            <td>27 kg</td>
                          </tr>
                          <tr>
                            <th>Dimensions</th>
                            <td>16 x 22 x 123 cm</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="tab-pane fade" id="tab3">
                      <div class="reviews">
                        <ol class="commentlist">
                          <li class="comment">
                            <div class="media"> <a href="#" class="media-left"><img class="img-circle" alt="" src="https://placehold.it/75x75" width="75"></a>
                              <div class="media-body">
                                <ul class="review_text list-inline">
                                  <li>
                                    <div title="Rated 5.00 out of 5" class="star-rating"><span style="width: 100%;">5.00</span></div>
                                  </li>
                                  <li>
                                    <h5 class="media-heading meta"><span class="author">Tom Joe</span> â Mar 15, 2015:</h5>
                                  </li>
                                </ul>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat purus tempor sem molestie, sed blandit lacus posuere. Lorem ipsum dolor sit amet.</div>
                            </div>
                          </li>
                          <li class="comment">
                            <div class="media"> <a href="#" class="media-left"><img class="img-circle" alt="" src="https://placehold.it/75x75" width="75"></a>
                              <div class="media-body">
                                <ul class="review_text list-inline">
                                  <li>
                                    <div title="Rated 4.00 out of 5" class="star-rating"><span style="width: 80%;">4.00</span></div>
                                  </li>
                                  <li>
                                    <h5 class="media-heading meta"><span class="author">Mark Doe</span> â Jan 23, 2015:</h5>
                                  </li>
                                </ul>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat purus tempor sem molestie, sed blandit lacus posuere. Lorem ipsum dolor sit amet.</div>
                            </div>
                          </li>
                        </ol>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <h3 class="line-bottom">Related Products</h3>
              <div class="row multi-row-clearfix">
                <div class="products related">
                  <div class="col-sm-6 col-md-3 col-lg-3 mb-sm-30">
                    <div class="product">
                      <span class="tag-sale">Sale!</span>
                      <div class="product-thumb"> 
                        <img alt="" src="http://placehold.it/285x300" class="img-responsive img-fullwidth">
                        <div class="overlay">
                          <div class="btn-add-to-cart-wrapper">
                            <a class="btn btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                          </div>
                          <div class="btn-product-view-details">
                            <a class="btn btn-default btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">View detail</a>
                          </div>
                        </div>
                      </div>
                      <div class="product-details text-center">
                        <a href="#"><h5 class="product-title">Watch</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 80%;">3.50</span></div>
                        <div class="price"><del><span class="amount">$165.00</span></del><ins><span class="amount">$160.00</span></ins></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-6 col-md-3 col-lg-3 mb-sm-30">
                    <div class="product">
                      <span class="tag-sale">Sale!</span>
                      <div class="product-thumb"> 
                        <img alt="" src="http://placehold.it/285x300" class="img-responsive img-fullwidth">
                        <div class="overlay">
                          <div class="btn-add-to-cart-wrapper">
                            <a class="btn btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                          </div>
                          <div class="btn-product-view-details">
                            <a class="btn btn-default btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">View detail</a>
                          </div>
                        </div>
                      </div>
                      <div class="product-details text-center">
                        <a href="#"><h5 class="product-title">Color Box</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 32%;">3.50</span></div>
                        <div class="price"><del><span class="amount">$120.00</span></del><ins><span class="amount">$110.00</span></ins></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-6 col-md-3 col-lg-3 mb-sm-30">
                    <div class="product">
                      <div class="product-thumb"> 
                        <img alt="" src="http://placehold.it/285x300" class="img-responsive img-fullwidth">
                        <div class="overlay">
                          <div class="btn-add-to-cart-wrapper">
                            <a class="btn btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                          </div>
                          <div class="btn-product-view-details">
                            <a class="btn btn-default btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">View detail</a>
                          </div>
                        </div>
                      </div>
                      <div class="product-details text-center">
                        <a href="#"><h5 class="product-title">Pen</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 85%;">3.50</span></div>
                        <div class="price"><ins><span class="amount">$240.00</span></ins></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-6 col-md3 col-lg-3">
                    <div class="product">
                      <div class="product-thumb"> 
                        <img alt="" src="http://placehold.it/285x300" class="img-responsive img-fullwidth">
                        <div class="overlay">
                          <div class="btn-add-to-cart-wrapper">
                            <a class="btn btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                          </div>
                          <div class="btn-product-view-details">
                            <a class="btn btn-default btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">View detail</a>
                          </div>
                        </div>
                      </div>
                      <div class="product-details text-center">
                        <a href="#"><h5 class="product-title">Table Lamp</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 56%;">3.50</span></div>
                        <div class="price"><ins><span class="amount">$480.00</span></ins></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
  
  <!-- Footer -->
  <footer id="footer" class="footer" data-bg-color="#1f1f1f">
    <div class="container pt-70 pb-40">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <img src="images/logo-white-footer.png" alt="">
          <p class="font-12 mt-20 mb-20">NextEvent is a library of corporate and business templates with predefined web elements which helps you to build your own site. Lorem ipsum dolor sit amet elit.</p>
          <ul class="styled-icons flat medium list-inline mb-40">
            <li><a href="#"><i class="fa fa-facebook"></i></a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i></a> </li>
            <li><a href="#"><i class="fa fa-pinterest"></i></a> </li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a> </li>
            <li><a href="#"><i class="fa fa-youtube"></i></a> </li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h4 class="widget-title line-bottom-theme-colored-2">Opening Hours</h4>
            <div class="opening-hours">
              <ul class="list-border">
                <li class="clearfix"> <span> Mon - Tues :  </span>
                  <div class="value pull-right"> 6.00 am - 10.00 pm </div>
                </li>
                <li class="clearfix"> <span> Wednes - Thurs :</span>
                  <div class="value pull-right"> 8.00 am - 6.00 pm </div>
                </li>
                <li class="clearfix"> <span> Fri : </span>
                  <div class="value pull-right"> 3.00 pm - 8.00 pm </div>
                </li>
                <li class="clearfix"> <span> Sun : </span>
                  <div class="value pull-right"> Closed </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h4 class="widget-title">Useful Links</h4>
            <ul class="list angle-double-right list-border">
              <li><a href="page-about-style1.html">About Us</a></li>
              <li><a href="page-course-list.html">Our Courses</a></li>
              <li><a href="page-pricing-style1.html">Pricing Table</a></li>
              <li><a href="page-gallery-3col.html">Gallery</a></li>
              <li><a href="shop-category.html">Shop</a></li>              
            </ul>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
              <h5 class="widget-title">Tags</h5>
              <div class="tags">
                <a href="#">academy</a>
                <a href="#">education</a>
                <a href="#">courses</a>
                <a href="#">courte</a>
                <a href="#">elearning</a>
                <a href="#">learning</a>
                <a href="#">management</a>
                <a href="#">success</a>
                <a href="#">campus</a>
                <a href="#">university</a>
                <a href="#">system</a>
                <a href="#">support</a>
                <a href="#">features</a>
                <a href="#">evidence</a>
                <a href="#">teaching</a>
              </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="widget dark">
            <h4 class="widget-title line-bottom-theme-colored-2">Quick Contact</h4>
            <form id="quick_contact_form2" name="footer_quick_contact_form" class="quick-contact-form" action="includes/quickcontact.php" method="post">
              <div class="form-group">
                <input name="form_email" class="form-control" type="text" required="" placeholder="Enter Email">
              </div>
              <div class="form-group">
                <textarea name="form_message" class="form-control" required="" placeholder="Enter Message" rows="3"></textarea>
              </div>
              <div class="form-group">
                <input name="form_botcheck" class="form-control" type="hidden" value="" />
                <button type="submit" class="btn btn-default btn-flat btn-xs btn-quick-contact text-gray pt-5 pb-5" data-loading-text="Please wait...">Send Message</button>
              </div>
            </form>

            <!-- Quick Contact Form Validation-->
            <script type="text/javascript">
              $("#quick_contact_form2").validate({
                submitHandler: function(form) {
                  var form_btn = $(form).find('button[type="submit"]');
                  var form_result_div = '#form-result';
                  $(form_result_div).remove();
                  form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                  var form_btn_old_msg = form_btn.html();
                  form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                  $(form).ajaxSubmit({
                    dataType:  'json',
                    success: function(data) {
                      if( data.status == 'true' ) {
                        $(form).find('.form-control').val('');
                      }
                      form_btn.prop('disabled', false).html(form_btn_old_msg);
                      $(form_result_div).html(data.message).fadeIn('slow');
                      setTimeout(function(){ $(form_result_div).fadeOut('slow') }, 6000);
                    }
                  });
                }
              });
            </script>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom" data-bg-color="#2f2f2f">
      <div class="container pt-15 pb-10">
        <div class="row">
          <div class="col-md-6">
            <p class="font-11 text-black-777 m-0">Copyright &copy;2016 ThemeMascot. All Rights Reserved</p>
          </div>
          <div class="col-md-6 text-right">
            <div class="widget no-border m-0">
              <ul class="list-inline sm-text-center mt-5 font-12">
                <li>
                  <a href="#">FAQ</a>
                </li>
                <li>|</li>
                <li>
                  <a href="#">Help Desk</a>
                </li>
                <li>|</li>
                <li>
                  <a href="#">Support</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a> </div>
<!-- end wrapper --> 

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>