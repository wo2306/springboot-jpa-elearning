<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>
    <title>LM company | Learning Machine</title>
</head>

<body class="">
<div id="wrapper" class="clearfix">
    <!-- preloader -->
    <!-- Start main-content -->
    <div class="main-content">

        <!-- Section: inner-header -->
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="http://placehold.it/1920x1280">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title text-white">마이 페이지</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">마이페이지</a></li>
                                <li class="active text-gray-silver">구매내역 조회</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: Doctor Details -->
        <section class="">
            <div class="container">
                <div class="section-content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-8 col-md-12">
                            <div>
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#orders" aria-controls="orders"
                                                                              role="tab" data-toggle="tab"
                                                                              class="font-15 text-uppercase">온라인 강의
                                        <span class="badge">4</span></a></li>
                                    <li role="presentation"><a href="#free-orders" aria-controls="free-orders"
                                                               role="tab" data-toggle="tab"
                                                               class="font-15 text-uppercase">오프라인 강의 <span
                                            class="badge">3</span></a></li>
                                    <li role="presentation"><a href="wish-list" aria-controls="wishlisttab" role="tab"
                                                               data-toggle="tab" class="font-15 text-uppercase">위시리스트
                                        <span class="badge">5</span></a></li>
                                    <li role="presentation"><a href="#bookmarks" aria-controls="bookmarks" role="tab"
                                                               data-toggle="tab" class="font-15 text-uppercase">나의 질문
                                        <span class="badge">5</span></a></li>
                                    <li role="presentation"><a href="#bookmarks" aria-controls="bookmarks" role="tab"
                                                               data-toggle="tab" class="font-15 text-uppercase">나의 리뷰
                                        <span class="badge">5</span></a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="orders">
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>주문번호</th>
                                                    <th>주문날짜</th>
                                                    <th>결제수단</th>
                                                    <th>총 결제 금액</th>
                                                    <th>상세조회</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:choose>
                                                    <c:when test="list!=null">
                                                <c:forEach var="dto" items="list">
                                                    <tr>
                                                        <th scope="row">${dto.onOrderCode}</th>
                                                        <td>${dto.onOrderRegdate}</td>
                                                        <td>${dto.onOrderMethod}</td>
                                                        <td>${dto.onOrderPrice}</td>
                                                        <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <tr>
                                                            <td colspan="5" style="text-align: center">주문 내역이 존재하지 않습니다</td>
                                                        </tr>
                                                    </c:otherwise>
                                                </c:choose>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="free-orders">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>주문번호</th>
                                                <th>주문날짜</th>
                                                <th>결제수단</th>
                                                <th>총 결제 금액</th>
                                                <th>상세조회</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="bookmarks">
                                        <table class="table">
                                            <tbody>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>Web Development Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>Software Development Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>App Development Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>Photoshop Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="wish-list">
                                        <table class="table">
                                            <tbody>
                                            	<tr>
                                                    <th>위시리스트번호</th>
                                                    <th>강의번호</th>                                                  
                                                    <th></th>
                                           		</tr>
                                             <c:forEach var="wish" items="list">
                                                    <tr>
                                                        <td scope="row">${wish.wishListNo}</td>
                                                        <td>${wish.onLectureNo}</td>                                                        
                                                        <td><a class="btn btn-success btn-xs" href="/delete">삭제</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
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

</body>
</html>