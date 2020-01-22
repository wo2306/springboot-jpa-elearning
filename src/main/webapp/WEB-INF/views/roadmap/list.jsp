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

    <!-- 로드맵 리스트 -->
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
                        <a href="detail/${list.roadmapName}"><h5 class="product-title">${list.roadmapName}</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 67%;">3.50</span></div>
                        <div class="price"><ins><span class="amount"><fmt:formatNumber value="${list.roadmapPrice}" pattern="₩#,###"/></span></ins></div>
                      </div>
                    </div>
                  </div>
                 </c:forEach>
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