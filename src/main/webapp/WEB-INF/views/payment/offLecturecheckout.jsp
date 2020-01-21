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
                 data-bg-img="${pageContext.request.contextPath}/images/index/main2.png">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title text-white">강의 구매하기</h3>
                            <ul class="cartList-inline text-white">
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
                        <div class="col-md-12">
                            <h3>결제 목록</h3>
                            <table class="table table-striped table-bordered tbl-shopping-cart">
                                thead>
                                <tr>
                                    <th style="width:250px">이미지</th>
                                    <th style="width:700px"> 강의명</th>
                                    <th>가격</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="price_sum"
                                       value="${price_sum+offLecture.price}"/>
                                <td class="product-thumbnail"><a href="#"><img alt="member"
                                                                               src="${pageContext.request.contextPath}/resources/images/offLecture/${offLecture.offLectureNo}.png"></a>
                                </td>
                                <td><a href="#">${offLecture.offLectureName}</a></td>
                                <td><fmt:formatNumber value="${offLecture.price}"
                                                      pattern="₩#,###.##"/></td>
                                </tr>

                                <tr>
                                    <td>총 결제 금액</td>
                                    <td>&nbsp;</td>
                                    <td id="total_price" style="font-weight: bold"><fmt:formatNumber
                                            value="${price_sum}"
                                            pattern="₩#,###"/></td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold">최종 결제 금액</td>
                                    <td>&nbsp;</td>
                                    <td id="final_price" style="font-weight: bold"><fmt:formatNumber
                                            value="${price_sum}"
                                            pattern="₩#,###"/></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-6">
                            <h3 class="mb-30">결제 정보 입력</h3>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="checkuot-form-fname">이메일주소</label>
                                    <input id="checkuot-form-fname" type="email" class="form-control"
                                           placeholder="Name">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="checkuot-form-lname">전화번호</label>
                                    <input id="checkuot-form-lname" type="email" class="form-control"
                                           placeholder="Phone Number">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4>프로모션 코드 입력</h4>
                            <form class="form" action="#">
                                <table class="table no-border">
                                    <tbody>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td><input type="text" class="form-control" placeholder="쿠폰 번호 입력"
                                                   value=""></td>
                                    </tr>
                                    <tr>
                                        <td><input type="text" class="form-control" placeholder="Postcod/zip"
                                                   readonly="readonly" value="쿠폰 적용시 정보가 표시됩니다."></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button type="button" class="btn btn-default">할인 쿠폰 적용</button>
                                            <button type="button" class="btn btn-default">쿠폰 적용 취소</button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                        <div class="col-md-12">
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
                            </div>
                            <div class="text-right"><a class="btn btn-default" href='javascript:void(0);'
                                                       onclick="requestPay();">구매하기</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script>
    function requestPay() {
        var IMP = window.IMP; // 생략가능
        IMP.init('imp32416573');  // 가맹점 식별 코드
        IMP.request_pay({
            // name과 amount만 있어도 결제 진행가능
            pg: 'html5_inicis', // pg 사 선택
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: 'Learning Machine Paying',
            amount: $("#final_price").text().replace(",", "").replace("₩", ""),
            buyer_email: $("#checkuot-form-cname").val(),
            buyer_name: $("#checkuot-form-fname").val(),
            buyer_tel: $("#checkuot-form-lname").val(),
            buyer_addr: '서울특별시 강남구 삼성동',
            buyer_postcode: '42150',
        }, function (rsp) {
            if (rsp.success) {
                let msg = '결제가 완료되었습니다.';
                alert(msg);
                alert(rsp.pg_tid);
                location.href = '${pageContext.request.contextPath}/order/offInsert/${offLecture.offLectureNo}'
            } else {
                let msg = '결제에 실패하였습니다. 결제 정보를 확인해주세요.'
                alert(msg);
            }
        });
    }

    function fn(str) {
        var res;
        res = str.replace(/[^0-9]/g, "");
        return res;
    }

    $("#discountButton").click(function () {
        var couponCode = $("#couponCode").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/coupon/select/" + couponCode,
            type: "post",
            dataType: "json",
            success: function (result) {
                $("#couponName").val(result.couponName + " (" + result.couponDiscount + " % 할인)");
                console.log(result)
            },
            error: function (error) {
                alert(error);
            }
        })

    });
</script>
<!-- end main-content -->
</body>
</html>