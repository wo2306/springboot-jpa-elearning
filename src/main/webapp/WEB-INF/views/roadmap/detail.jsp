<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                    <a href="http://placehold.it/460x460" title="Title Here 1"><img src="http://placehold.it/320x320" alt=""></a>
                  </div>
                </div>
              </div>
              <div class="col-md-7">
                <div class="product-summary">
                  <h2 class="product-title">${roadmap.roadmapName}</h2>
                  <div class="product_review">
                    <ul class="review_text list-inline">
                      <li>
                        <div title="Rated 4.50 out of 5" class="star-rating"><span style="width: 90%;">4.50</span></div>
                      </li>
                      <li><a href="#"><span>2</span>Reviews</a></li>
                      <li><a href="#">Add reviews</a></li>
                    </ul>
                  </div>
                  	<br>
                     <p>등록일 : ${roadmap.roadmapRegdate}</p>
                  <div class="cart-form-wrapper mt-30">
                    <form enctype="multipart/form-data" method="post" class="cart">
                      <input type="hidden" value="productID" name="add-to-cart">
                      <table class="table variations no-border">
                        <tbody>
                          <tr>
                          <td> <div class="price"><ins><span class="amount">가격 : <fmt:formatNumber value="${roadmap.roadmapPrice}" pattern="₩#,###"/></span></ins> </div></td>
                            <td>포함된 강의수 ${fn:length(list)} </td>
                          </tr>
                        </tbody>
                      </table>
                      <br>
                      <button class="single_add_to_cart_button btn btn-theme-colored" type="submit">구매</button>
                    </form>
                  </div>
                </div>
              </div>
              <div class="col-md-12">
                <div class="horizontal-tab product-tab">
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab1" data-toggle="tab">로드맵 내용</a></li>
                    <li><a href="#tab2" data-toggle="tab">강의 정보</a></li>
                    <li><a href="#tab3" data-toggle="tab">강의 보기</a></li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1">
                      <h3>내용</h3>
                      <p>${roadmap.roadmapContent}</p>
                      <%-- 	<h3>로드맵의 강의들</h3>
                      <p>${roadmap.onLecture.onLectureName}</p>
                      <p>${roadmap.onLecture.onLectureContent}</p> --%>
                    </div>
                    <div class="tab-pane fade" id="tab2">
                      <table class="table table-striped">
                        <tbody>
                        <c:forEach items="${list}" var="r">
                          <tr>
                            <th>강의명</th>
                            <td><p>${r.onLecture.onLectureName}</p></td>
                          </tr>
                          <tr>
                            <th>강사명</th>
                            <td><p>${r.onLecture.onLectureTeacher}</p></td>
                          </tr>
                          <tr>
                            <th>강의요약</th>
                            <td>${r.onLecture.onLectureSummary}</td>
                          </tr>
                          <tr>
                            <th>등록일</th>
                            <td><fmt:formatDate value="${r.onLecture.onLectureRegdate}" pattern="yyyy-MM-dd"/></td>
                          </tr>
                          <tr>
                            <th>카테고리</th>
                            <td><p>${r.onLecture.onLectureCategory}</p></td>
                          </tr>
                          </c:forEach>                
                        </tbody>
                      </table>
                    </div>
                    <div class="tab-pane fade" id="tab3">
                      <div class="onLectures">
                        <ol class="onLectureList">
                          <c:forEach items="${list}" var="roadmap" varStatus="status">
                          <li class="comment">
                            <div class="media"> <a href="#" class="media-left"><img class="img-circle" alt="" src="https://placehold.it/75x75" width="75"></a>
                              <div class="media-body">
                                <ul class="review_text list-inline">
                                  <li>
                                    <div title="Rated 5.00 out of 5" class="star-rating"><span style="width: 100%;">5.00</span></div>
                                  </li>
                                  <li>
                                    <h5 class="media-heading meta"><span class="author">${roadmap.onLecture.onLectureName}</span> Category ${roadmap.onLecture.onLectureCategory}</h5>
                                  </li>
                                </ul>
                                ${roadmap.onLecture.onLectureContent}</div>
                            </div>
                          </li>
                          </c:forEach>
                        </ol>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <h3 class="line-bottom">등록된 강의</h3>
              <div class="row multi-row-clearfix">
                <div class="products related">
                 <c:forEach items="${list}" var="roadmap">
                  <div class="col-sm-6 col-md-3 col-lg-3 mb-sm-30">
                    <div class="product">
                      <div class="product-thumb"> 
                        <img alt="" src="${pageContext.request.contextPath}/images/onLecture/${roadmap.onLecture.onLectureNo}.png" class="img-responsive img-fullwidth">
                      </div>
                      <div class="product-details text-center">
                        <a href="#"><h5 class="product-title">${roadmap.onLecture.onLectureName}</h5></a>
                        <div class="star-rating" title="Rated 3.50 out of 5"><span style="width: 80%;">3.50</span></div>
                        <div class="price"><ins><span class="amount"><fmt:formatNumber value="${roadmap.onLecture.onLecturePrice}" pattern="₩#,###"/></span></ins></div>
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
  </div>
  <!-- end main-content -->
  
<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>