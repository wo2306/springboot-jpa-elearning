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
              <h2 class="title text-white">Shop Cart</h3>
              <ul class="list-inline text-white">
                <li>Home /</li>
                <li><span class="text-gray">Shop Cart</span></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-striped table-bordered tbl-shopping-cart">
                  <thead>
                    <tr>
                      <th></th>
                      <th>Photo</th>
                      <th>Product Name</th>
                      <th>Price</th>
                      <th>Quantity</th>
                      <th>Total</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="cart_item">
                      <td class="product-remove"><a title="Remove this item" class="remove" href="#">Ã</a></td>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td class="product-name"><a href="#">Product Name</a>
                        <ul class="variation">
                          <li class="variation-size">Color: <span>Black</span></li>
                        </ul></td>
                      <td class="product-price"><span class="amount">$185.00</span></td>
                      <td class="product-quantity"><div class="quantity buttons_added">
                          <input type="button" class="minus" value="-">
                          <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                          <input type="button" class="plus" value="+">
                        </div></td>
                      <td class="product-subtotal"><span class="amount">$185.00</span></td>
                    </tr>
                    <tr class="cart_item">
                      <td class="product-remove"><a title="Remove this item" class="remove" href="#">Ã</a></td>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td class="product-name"><a href="#">Product Name</a>
                        <ul class="variation">
                          <li class="variation-size">Color: <span>Brown</span></li>
                        </ul></td>
                      <td class="product-price"><span class="amount">$115.00</span></td>
                      <td class="product-quantity"><div class="quantity buttons_added">
                          <input type="button" class="minus" value="-">
                          <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                          <input type="button" class="plus" value="+">
                        </div></td>
                      <td class="product-subtotal"><span class="amount">$115.00</span></td>
                    </tr>
                    <tr class="cart_item">
                      <td class="product-remove"><a title="Remove this item" class="remove" href="#">Ã</a></td>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td class="product-name"><a href="#">Product Name</a>
                        <ul class="variation">
                          <li class="variation-size">Size: <span>Large</span></li>
                        </ul></td>
                      <td class="product-price"><span class="amount">$68.00</span></td>
                      <td class="product-quantity"><div class="quantity buttons_added">
                          <input type="button" class="minus" value="-">
                          <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                          <input type="button" class="plus" value="+">
                        </div></td>
                      <td class="product-subtotal"><span class="amount">$68.00</span></td>
                    </tr>
                    <tr class="cart_item">
                      <td colspan="3"><div class="coupon">
                          <label for="cart-coupon">Coupon: </label>
                          <input id="cart-coupon" type="text" placeholder="Coupon code" value="" name="coupon_code">
                          <button type="button" class="btn">Apply Coupon</button>
                        </div></td>
                      <td colspan="2">&nbsp;</td>
                      <td><button type="button" class="btn">Update Cart</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="col-md-12 mt-30">
              <div class="row">
                <div class="col-md-6">
                  <h4>Calculate Shipping</h4>
                  <form class="form" action="#">
                    <table class="table no-border">
                      <tbody>
                        <tr>
                          <td><select class="form-control">
                              <option>Select Country</option>
                              <option>Australia</option>
                              <option>UK</option>
                              <option>USA</option>
                            </select></td>
                        </tr>
                        <tr>
                          <td><input type="text" class="form-control" placeholder="State/country" value=""></td>
                        </tr>
                        <tr>
                          <td><input type="text" class="form-control" placeholder="Postcod/zip" value=""></td>
                        </tr>
                        <tr>
                          <td><button type="button" class="btn btn-default">Update Totals</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </form>
                </div>
                <div class="col-md-6">
                  <h4>Cart Totals</h4>
                  <table class="table table-bordered">
                    <tbody>
                      <tr>
                        <td>Cart Subtotal</td>
                        <td>$180.00</td>
                      </tr>
                      <tr>
                        <td>Shipping and Handling</td>
                        <td>$70.00</td>
                      </tr>
                      <tr>
                        <td>Order Total</td>
                        <td>$250.00</td>
                      </tr>
                    </tbody>
                  </table>
                  <a class="btn btn-default">Proceed to Checkout</a> </div>
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