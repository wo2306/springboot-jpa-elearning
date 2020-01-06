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
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h3 class="title text-white">강의 구매하기</h3>
              <ul class="list-inline text-white">
                <li>장바구니 /</li>
                <li><span class="text-gray">강의 구매</span></li>
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
              <div class="col-md-12">
                <h3>수강 바구니</h3>
                <table class="table table-striped table-bordered tbl-shopping-cart">
                  <thead>
                    <tr>
                      <th>Image</th>
                      <th>Lecture Name</th>
                      <th>Price</th>
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
                      <td>총 결제 금액</td>
                      <td>&nbsp;</td>
                      <td>$250.00</td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <div class="col-md-6">
                <h3 class="mb-30">결제 정보 입력</h3>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="checkuot-form-fname">이름</label>
                    <input id="checkuot-form-fname" type="email" class="form-control" placeholder="Name">
                  </div>
                  <div class="form-group col-md-6">
                    <label for="checkuot-form-lname">전화번호</label>
                    <input id="checkuot-form-lname" type="email" class="form-control" placeholder="Phone Number">
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="checkuot-form-cname">이메일 주소</label>
                      <input id="checkuot-form-cname" type="email" class="form-control" placeholder="Email Address">
                    </div>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="checkuot-form-city">쿠폰 번호</label>
                    <input id="checkuot-form-city" type="email" class="form-control" placeholder="쿠폰 번호 입력">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <h3>결제 수단 선택</h3>
                <div class="payment-method">
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" value="option2" checked>
                      신용카드 결제 </label>
                    <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" value="option3" checked>
                      간편 결제 (카카오페이) </label>
                    <p>Please use your Order ID as the payment reference. Your order wonât be shipped until the funds have cleared in our account.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="text-right"> <a class="btn btn-default">구매하기</a> </div>
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