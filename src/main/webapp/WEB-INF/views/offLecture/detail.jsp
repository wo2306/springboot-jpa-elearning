<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine</title>

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
      <div class="container pt-60 pb-60">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12 text-center">
              <h2 class="font-28 text-white">Event Details 1</h2>
              <ol class="breadcrumb text-center text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-theme-colored">Page Title</li>
              </ol>
            </div>
          </div>
        </div>
      </div>      
    </section>

    <section class="bg-theme-colored">
      <div class="container pt-40 pb-40">
        <div class="row text-center">
          <div class="col-md-12">
            <h2 id="basic-coupon-clock" class="text-white"></h2>
            <!-- Final Countdown Timer Script -->
            <script type="text/javascript">
              $(document).ready(function() {
                $('#basic-coupon-clock').countdown('2020/10/10', function(event) {
                  $(this).html(event.strftime('%D days %H:%M:%S'));
                });
              });
            </script>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <ul>
              <li>
                <h5>Topics:</h5>
                <p>Web design & development, Graphics design</p>
              </li>
              <li>
                <h5>Host:</h5>
                <p>Kodesolution Lmd.</p>
              </li>
              <li>
                <h5>Location:</h5>
                <p>#405, Lan Streen, Los Vegas, USA</p>
              </li>
              <li>
                <h5>Start Date:</h5>
                <p>January 26, 2016</p>
              </li>
              <li>
                <h5>End Date:</h5>
                <p>February 10, 2016</p>
              </li>
              <li>
                <h5>Website:</h5>
                <p>kodesolution.com</p>
              </li>
              <li>
                <h5>Share:</h5>
                <div class="styled-icons icon-sm icon-gray icon-circled">
                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                  <a href="#"><i class="fa fa-google-plus"></i></a>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-md-8">
            <img src="https://placehold.it/755x480" alt="">
          </div>
        </div>
        <div class="row mt-60">
          <div class="col-md-6">
            <h4 class="mt-0">Event Description</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi id perspiciatis facilis nulla possimus quasi, amet qui. Ea rerum officia, aspernatur nulla neque nesciunt alias repudiandae doloremque, dolor, quam nostrum laudantium earum illum odio quasi excepturi mollitia corporis quas ipsa modi nihil, ad ex tempore.</p>
          </div>
          <div class="col-md-6">
            <blockquote>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
              <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
            </blockquote>
          </div>
        </div>
        <div class="row mt-40">
          <div class="col-md-12">
            <h4 class="mb-20">Keynote Speakers</h4>
            <div class="owl-carousel-6col" data-nav="true">
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/1.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Lawyer</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/2.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Businessman</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/3.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Student</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/4.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Lawyer</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/5.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Businessman</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/6.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Student</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/3.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Student</h6>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="attorney">
                  <div class="thumb"><img src="images/team/4.jpg" alt=""></div>
                  <div class="content text-center">
                    <h5 class="author mb-0"><a class="text-theme-colored" href="#">Alex Jacobson</a></h5>
                    <h6 class="title text-gray font-12 mt-0 mb-0">Lawyer</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Registration Form -->
    <section class="divider parallax layer-overlay overlay-white-8" data-bg-img="http://placehold.it/1920x1280">
      <div class="container-fluid">
        <div class="section-title">
          <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
              <h3 class="title text-theme-colored">Registration Form</h3>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <form id="booking-form" name="booking-form" action="includes/event-register.php" method="post" enctype="multipart/form-data">
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <input type="text" placeholder="Enter Name" name="register_name" required="" class="form-control">
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <input type="text" placeholder="Enter Email" name="register_email" class="form-control" required="">
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <input type="text" placeholder="Enter Phone" name="register_phone" class="form-control" required="">
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label>Ticket types</label>
                    <select name="ticket_type" class="form-control">
                      <option>One Person</option>
                      <option>Two Person</option>
                      <option>Family Pack</option>
                      <option>Premium</option>
                    </select>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label>Event types</label>
                    <select name="event_type" class="form-control">
                      <option>Event 1</option>
                      <option>Event 2</option>
                      <option>Event 3</option>
                      <option>All package</option>
                    </select>
                  </div>
                </div>
                <div class="col-sm-12">
                  <div class="form-group text-center">
                  	<input name="form_botcheck" class="form-control" type="hidden" value="" />
                    <button data-loading-text="Please wait..." class="btn btn-dark btn-theme-colored btn-sm btn-block mt-20 pt-10 pb-10" type="submit">Register now</button>
                  </div>
                </div>
              </div>
            </form>
            <!-- Job Form Validation-->
            <script type="text/javascript">
              $("#booking-form").validate({
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
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h4 class="mb-20">Photo Gallery</h4>
            <div class="owl-carousel-5col" data-nav="true">
              <div class="item"><img src="https://placehold.it/285x215" alt=""></div>
              <div class="item"><img src="https://placehold.it/285x215" alt=""></div>
              <div class="item"><img src="https://placehold.it/285x215" alt=""></div>
              <div class="item"><img src="https://placehold.it/285x215" alt=""></div>
              <div class="item"><img src="https://placehold.it/285x215" alt=""></div>
              <div class="item"><img src="https://placehold.it/285x215" alt=""></div>
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