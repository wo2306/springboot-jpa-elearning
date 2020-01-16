<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>StudyPress | Education & Courses HTML Template</title>

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
              <h2 class="title text-white">결제 완료</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">장바구니</a></li>
                <li><a href="#">강의 구매</a></li>
                <li class="active text-gray-silver">결제 완료</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
            <h4 class="mt-0 pt-5"> 결제에 성공하였습니다 </h4>
            <hr>           
            <h5>Book - Learn Advanced PHP in 7 Days</h5>
            <p>Price $50.00</p>
            <h5>Book - Advanced JavaScript Tutorial</h5>
            <p>Price $35.00</p>
            <a href="/order/info" class="btn btn-dark btn-theme-colored">구매내역</a>
            <a href="/" class="btn btn-dark btn-theme-colored">메인으로</a>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
</div>
</body>
</html>