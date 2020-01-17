<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="http://placehold.it/1920x1280">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title text-white">수강바구니</h3>
                            <ul class="list-inline text-white">
                                <li>홈 /</li>
                                <li><span class="text-gray">수강바구니</span></li>
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
                                        <th>이미지</th>
                                        <th>강의명</th>
                                        <th>가격</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${cartList!=null}">
                                            <c:forEach var="cartDTO" items="${cartList}">
                                                <c:set var="total_price"
                                                       value="${total_price+cartDTO.onLecture.onLecturePrice}"/>
                                                <c:set var="discount_sum"
                                                       value="${discount_sum+cartDTO.onLecture.onLecturePrice*cartDTO.onLecture.onLectureDiscount/100}"/>
                                                <tr class="cart_item">
                                                    <td class="product-thumbnail"><a href="#"><img alt="member"
                                                                                                   src="${pageContext.request.contextPath}/images/onLecture/${cartDTO.onLecture.onLectureNo}.png"></a>
                                                    </td>
                                                    <td class="product-name"><a href="#">${cartDTO.onLecture.onLectureName}</a>
                                                        <ul class="variation">
                                                        </ul>
                                                    </td>
                                                    <td class="product-price"><span class="amount"><fmt:formatNumber value="${cartDTO.onLecture.onLecturePrice}" pattern="₩#,###.##"/> </span></td>
                                                    <td class="product-remove" width="200">
                                                        <button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/cart/wishList/${cartDTO.cartNo}'">위시리스트로 이동</button>
                                                        <p></p>
                                                        <button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/cart/deleteCart/${cartDTO.cartNo}'">장바구니에서 삭제</button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="4" style="text-align: center">수강바구니에 담긴 강의가 없습니다.</td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12 mt-30">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>프로모션 코드 입력</h4>
                                    <form class="form" id="discountForm" action="#">
                                        <table class="table no-border">
                                            <tbody>
                                            <tr>
                                            </tr>
                                            <tr>
                                                <td><input id="couponCode" type="text" class="form-control"
                                                           placeholder="쿠폰 번호 입력"
                                                           value=""></td>
                                            </tr>
                                            <tr>
                                                <td><input id="couponName" type="text" class="form-control"
                                                           placeholder="Postcod/zip"
                                                           readonly="readonly" value="쿠폰 적용시 정보가 표시됩니다."></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <button type="button" id="discountButton" class="btn btn-default">할인 쿠폰 적용
                                                    </button>
                                                    <button type="reset" class="btn btn-default">쿠폰 적용 취소</button>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                                <div class="col-md-6">
                                    <h4>수강바구니 합계</h4>
                                    <table class="table table-bordered">
                                        <tbody>
                                        <tr>
                                            <td>총 결제 금액</td>
                                            <td><fmt:formatNumber value="${total_price}" pattern="₩#,###"/></td>
                                        </tr>
                                        <tr>
                                            <td>강의 기본 할인</td>
                                            <td style="color: red"><fmt:formatNumber value="${discount_sum}" pattern="₩#,###"/></td>
                                        </tr>
                                        <tr>
                                            <td>최종 결제 금액</td>
                                            <td style="font-weight: bold"><fmt:formatNumber value="${total_price-discount_sum}" pattern="₩#,###"/></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <a id="checkout" class="btn btn-default" href="${pageContext.request.contextPath}/cart/checkout">확인 후 결제 진행하기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<!-- end main-content -->
<script>
    $("#discountButton").click(function () {
        var couponCode = $("#couponCode").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/coupon/select/" + couponCode,
            type: "post",
            dataType: "json",
            success: function (result) {
                $("#couponName").val(result.couponName + " (최종 결제 금액에서 " + result.couponDiscount + " % 추가 할인)");
                $("#checkout").attr('href', $("#checkout").attr('href')+"/"+result.couponCode)
                console.log(result)
            },
            error: function (error) {
                alert(error);
            }
        })

    });
</script>
</body>
</html>