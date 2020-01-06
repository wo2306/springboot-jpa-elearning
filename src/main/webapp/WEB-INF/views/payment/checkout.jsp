<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
                                <h3>결제 목록</h3>
                                <table class="table table-striped table-bordered tbl-shopping-cart">
                                    <thead>
                                    <tr>
                                        <th>이미지</th>
                                        <th>강의명</th>
                                        <th>가격</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="list!=null">
                                            <c:forEach items="list" var="dto">
                                                <c:set var="price_sum" value="${price_sum+dto.onLecturePrice}"/>
                                                <tr>
                                                    <td class="product-thumbnail"><a href="#"><img alt="member"
                                                                                                   src="${pageContext.request.contextPath}/onlecture/images/${dto.onLectureName}"></a>
                                                    </td>
                                                    <td><a href="#">${dto.onLectureName}</a></td>
                                                    <td>${dto.onLecturePrice}</td>
                                                </tr>
                                            </c:forEach>
                                            <tr>
                                                <td>총 결제 금액</td>
                                                <td>&nbsp;</td>
                                                <td id="total_price">100<c:out value="${price_sum}"/></td>
                                            </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td colspan="3" style="text-align: center">수강바구니에 담긴 강의가 없습니다</td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-6">
                                <h3 class="mb-30">결제 정보 입력</h3>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="checkuot-form-fname">이름</label>
                                        <input id="checkuot-form-fname" type="email" class="form-control"
                                               placeholder="Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="checkuot-form-lname">전화번호</label>
                                        <input id="checkuot-form-lname" type="email" class="form-control"
                                               placeholder="Phone Number">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="checkuot-form-cname">이메일 주소</label>
                                            <input id="checkuot-form-cname" type="email" class="form-control"
                                                   placeholder="Email Address">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="checkuot-form-city">쿠폰 번호</label>
                                        <input id="checkuot-form-city" type="email" class="form-control"
                                               placeholder="쿠폰 번호 입력">
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
                                        <p>Please send your cheque to Store Name, Store Street, Store Town, Store
                                            State
                                            / County, Store Postcode.</p>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optionsRadios" value="option3" checked>
                                            무통장 입금 </label>
                                        <p>Please use your Order ID as the payment reference. Your order won't be
                                            shipped until the funds have cleared in our account.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="text-right"><a class="btn btn-default" href='javascript:void(0);'
                                                           onclick="requestPay();">구매하기</a></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>


<script>
    function requestPay() {
        var IMP = window.IMP; // 생략가능
        IMP.init('iamport');  // 가맹점 식별 코드
        IMP.request_pay({
            // name과 amount만 있어도 결제 진행가능
            pg: 'html5_inicis', // pg 사 선택
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '주문명:결제테스트',
            amount: 100,
            buyer_email: 'iamport@siot.do',
            buyer_name: "고한별",
            buyer_tel: '010-1234-5678',
            buyer_addr: '서울특별시 강남구 삼성동',
            buyer_postcode: '123-456',
            m_redirect_url: '${pageContext.request.contextPath}/order/success'
        }, function (rsp) {
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                alert(msg);
            } else {
                var msg = '결제에 실패하였습니다. 결제 확인창으로 돌아갑니다.'
                alert(msg);
                location.href = "${pageContext.request.contextPath}/order/checkout";
            }
        });
    }
</script>
<!-- end main-content -->
</body>
</html>