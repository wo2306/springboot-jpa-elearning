<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>

<!-- Page Title -->
<title>StudyPress | Education & Courses HTML Template</title>

</head>
<body class="">
<div id="wrapper" class="clearfix">
  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="${pageContext.request.contextPath}/images/banner/roadmap.jpg">>
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">로드맵 리스트</h2>
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

    <section class="">
      <div class="container">
        <div class="section-content">
          <div class="row">
            <div class="col-sm-12 col-md-9">
              <div class="row multi-row-clearfix">
                <div class="products">
                <c:forEach items="${roadmapList}" var="list">
                  <div class="col-sm-6 col-md-4 col-lg-4 mb-30">
                    <div class="product">
                      <div class="product-thumb"> 
                        <img alt="" src="${pageContext.request.contextPath}/images/roadmap/${list.roadmapNo}.png" class="img-responsive img-fullwidth">
                        <div class="overlay">
                          <div class="btn-add-to-cart-wrapper">
                          </div>
                          <div class="btn-product-view-details">
                            <a class="btn btn-default btn-theme-colored btn-sm btn-flat pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="detail/${list.roadmapName}">로드맵 상세보기</a>
                          </div>
                        </div>
                      </div>
                      <div class="product-details text-center">
                        <a href="#"><h5 class="product-title">${list.roadmapName}</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 67%;">3.50</span></div>
                        <div class="price"><ins><span class="amount"><fmt:formatNumber value="${list.roadmapPrice}" pattern="₩#,###"/></span></ins></div>
                      </div>
                    </div>
                  </div>
                 </c:forEach>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-3">
              <div class="sidebar sidebar-right mt-sm-30">
                <div class="widget">
                  <h5 class="widget-title line-bottom">Search box</h5>
                  <div class="search-form">
                    <form>
                      <div class="input-group">
                        <input type="text" placeholder="Click to Search" class="form-control search-input">
                        <span class="input-group-btn">
                        <button type="submit" class="btn search-button"><i class="fa fa-search"></i></button>
                        </span>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="widget">
                  <h5 class="widget-title line-bottom">Categories</h5>
                  <div class="categories">
                    <ul class="list list-border angle-double-right">
                      <li><a href="#">Creative<span>(19)</span></a></li>
                      <li><a href="#">Portfolio<span>(21)</span></a></li>
                      <li><a href="#">Fitness<span>(15)</span></a></li>
                      <li><a href="#">Gym<span>(35)</span></a></li>
                      <li><a href="#">Personal<span>(16)</span></a></li>
                    </ul>
                  </div>
                </div>
                <div class="widget">
                  <h5 class="widget-title line-bottom">Top Sellers</h5>
                  <div class="top-sellers">
                    <article class="post media-post clearfix pb-0 mb-10">
                      <a class="post-thumb" href="#"><img src="http://placehold.it/85x85" alt=""></a>
                      <div class="post-right">
                        <h5 class="post-title font-weight-600 mt-0 mb-0"><a href="#">Brake Disk</a></h5>
                        <div class="product-detail">
                          <div class="price mb-10"><ins><span class="amount">$480.00</span></ins></div>
                          <div title="Rated 3.50 out of 5" class="star-rating ml-0"><span style="width: 60%;">3.50</span></div>
                        </div>
                      </div>
                    </article>
                    <article class="post media-post clearfix pb-0 mb-10">
                      <a class="post-thumb" href="#"><img src="http://placehold.it/85x85" alt=""></a>
                      <div class="post-right">
                        <h5 class="post-title font-weight-600 mt-0 mb-0"><a href="#">Brake Disk</a></h5>
                        <div class="product-detail">
                          <div class="price mb-10"><ins><span class="amount">$480.00</span></ins></div>
                          <div title="Rated 3.50 out of 5" class="star-rating ml-0"><span style="width: 60%;">3.50</span></div>
                        </div>
                      </div>
                    </article>
                    <article class="post media-post clearfix pb-0 mb-10">
                      <a class="post-thumb" href="#"><img src="http://placehold.it/85x85" alt=""></a>
                      <div class="post-right">
                        <h5 class="post-title font-weight-600 mt-0 mb-0"><a href="#">Brake Disk</a></h5>
                        <div class="product-detail">
                          <div class="price mb-10"><ins><span class="amount">$480.00</span></ins></div>
                          <div title="Rated 3.50 out of 5" class="star-rating ml-0"><span style="width: 60%;">3.50</span></div>
                        </div>
                      </div>
                    </article>
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
  </div>
<!-- end wrapper --> 

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>