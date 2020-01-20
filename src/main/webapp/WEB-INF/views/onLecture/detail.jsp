<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

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
    <style>
        #sidebox {
            position: absolute;
            width: 400px;
            right: 0px;
            padding: 3px 30px
        }
    </style>
</head>


<body class="">
<div id="wrapper" class="clearfix">
    <!-- Start main-content -->
    <div class="main-content">
        <!-- Section: inner-header -->
        <section
                class="inner-header divider parallax layer-overlay overlay-dark-5"
                data-bg-img="${pageContext.request.contextPath}/images/banner/ondetail.jpg">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title text-white">${onLecture.onLectureName}</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">강의 상세 조회</a></li>
                                <li class="active text-gray-silver">${onLecture.onLectureName}</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: Blog -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 blog-pull-right">
                        <div class="single-service">
                            <img src="${pageContext.request.contextPath}/resources/images/onLecture/${onLecture.onLectureNo}.png"
                                 style="width: 750px; height: 500px" alt="">
                            <h3 class="text-theme-colored line-bottom text-theme-colored">${onLecture.onLectureName}</h3>
                            <ul class="review_text list-inline">
                                <li>
                                    <!--리뷰 평점 평균내서 -->
                                    <div class="star-rating" title="Rated 4.50 out of 5"><span
                                            style="width: 90%;">4.50</span></div>
                                </li>
                            </ul>
                            <h5><em>${onLecture.onLectureSummary}</em></h5>
                            <p>${onLecture.onLectureContent}</p>
                            <br>

                            <h4 class="widget-title line-bottom">강의 등록 일자</h4>
                            <p>${onLecture.onLectureRegdate}</p>
                            <br>
                            <h4 class="widget-title line-bottom">
                                함께 학습하면 좋은 <span class="text-theme-color-2">로드맵</span>
                            </h4>
                            <div class="services-list">
                                <ul class="list list-border angle-double-right">
                                    <c:forEach var="dto" items="${roadmapList}">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/roadmap/detail/${dto.roadmapName}">${dto.roadmapName}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <br>
                            <h4 class="widget-title line-bottom">${onLecture.onLectureTeacher}<span
                                    class="text-theme-color-2">님의 다른 강의</span>
                            </h4>
                            <ul class="list-border">
                                <c:forEach items="${teacherList}" var="teacherLecture">
                                    <c:if
                                            test="${teacherLecture.onLectureName ne onLecture.onLectureName}">
                                        <li class="clearfix"><span> <a
                                            href="${pageContext.request.contextPath}/onLecture/detail/${teacherLecture.onLectureNo}">${teacherLecture.onLectureName}
                                    </a>
                                        </span>
                                        <div class="value pull-right"></div>
                                    </c:if>
                                    </li>
                                </c:forEach>
                            </ul>
                            <br>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="small">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td
                                                    class="text-center font-16 font-weight-600 bg-theme-color-2 text-white"
                                                    colspan="2">교육 과정
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>강의명</th>
                                            <th width="100">강의 길이</th>
                                            <tbody>
                                            <c:forEach items="${detailList}" var="onDetail">
                                                <tr>
                                                    <td scope="row"><a>${onDetail.onDetailName}</a></td>
                                                    <td>${onDetail.onDetailPlaytime}분</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                    </table>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${empty reviewList }">
                                </c:when>
                                <c:otherwise>
                                    <div id="myTabContent" class="tab-content">
                                        <div class="tab-pane fade in active" id="small">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <td
                                                            class="text-center font-16 font-weight-600 bg-theme-color-2 text-white"
                                                            colspan="3">리뷰 리스트
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>작성자</th>
                                                    <th>평점</th>
                                                    <th>내용</th>
                                                </tr>
                                                <tbody>
                                                <c:forEach items="${reviewList}" var="review">
                                                    <tr>
                                                        <td>${review.userdb.userdbNickname }</td>
                                                        <td><c:forEach var="i" begin="1"
                                                                       end="${review.reviewScore }">
																		<span class="fa-hover"><i
                                                                                class="fa fa-star"></i>
																		</span>
                                                        </c:forEach> <c:forEach var="i" begin="${review.reviewScore }"
                                                                                end="4">
                                                            <span class="fa-hover"><i class="fa fa-star-o"></i></span>
                                                        </c:forEach></td>
                                                        <td>${review.reviewContent }</td>
                                                    </tr>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div id="sidebox">
                            <div class="sidebar sidebar-left mt-sm-30 ml-40">
                                <div class="widget" style="padding: 30px; border: outset 1px">
                                    <h4 class="widget-title line-bottom">
                                        강의 <span class="text-theme-color-2">구매하기</span>
                                    </h4>
                                    <form id="quick_contact_form_sidebar"
                                          name="footer_quick_contact_form" class="quick-contact-form"
                                          action="includes/quickcontact.php" method="post">
                                        <div class="form-group">
                                            <p>
                                            <h2>
                                                <fmt:formatNumber
                                                        value="${onLecture.onLecturePrice-onLecture.onLectureDiscount/100*onLecture.onLecturePrice}"
                                                        pattern="₩#,###"/>
                                            </h2>
                                            <c:if test="${onLecture.onLectureDiscount ne 0}">
													<span
                                                            style="text-decoration: line-through; color: darkgrey">
														<fmt:formatNumber value="${onLecture.onLecturePrice}"
                                                                          pattern="₩#,###"/>
													</span>
                                                <span style="color: red">&nbsp;
														현재&nbsp;${onLecture.onLectureDiscount}% 할인중 </span>
                                            </c:if>
                                            <hr>
                                            <p>
													<span style="font-weight: bold">지식공유자 -
                                                        ${onLecture.onLectureTeacher}</span><br>
                                                총&nbsp;${detailList.size()}회 수업<br> 평생 무제한 시청<br>
                                                완강시 수료증 발급<br>
                                            <hr>
                                            <p></p>
                                        </div>
                                        <div class="form-group"></div>
                                    </form>
                                    <div class="form-group">
                                        <input name="form_botcheck" class="form-control"
                                               type="hidden" value=""/>
                                        <button type="button"
                                                onclick="location.href='${pageContext.request.contextPath}/order/buynow/${onLecture.onLectureNo}'"
                                                class="btn btn-theme-colored btn-flat btn-xs btn-quick-contact pt-10 pb-10"
                                                data-loading-text="Please wait...">바로 구매하기
                                        </button>
                                        &nbsp&nbsp
                                        <button type="button" onclick="cartInsert()"
                                                class="btn btn-theme-colored btn-flat btn-xs btn-quick-contact pt-10 pb-10"
                                                data-loading-text="Please wait...">장바구니에 담기
                                        </button>
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
</section>
</div>
</div>
<!-- end main-content -->
<script>
    //구매했으면 구매 사이드바 숨기고 학습하기 UI 보여줌
    $(".relatedRoadmapList").hover(function () {
        $(this).attr('class', 'active')
    }, function () {
        $(this).attr('class', 'relatedRoadmapList')
    })

    var currentPosition = parseInt($("#sidebox").css("top"));
    $(window).scroll(function () {
        var position = $(window).scrollTop();
        if (position > 400 && position < 1300)
            $("#sidebox").stop().animate({"top": position + currentPosition - 400 + "px"}, 0);
    });

    function cartInsert() {
        $.ajax({
            url: "${pageContext.request.contextPath}/cart/insert/" + ${onLecture.onLectureNo},
            type: "post",
            dataType: "text",
            success: function () {
                if (confirm("강의를 수강바구니에 담았습니다. \n지금 장바구니로 이동하시겠습니까?")) {
                    location.href = '${pageContext.request.contextPath}/cart/list';
                }
                cartList()
                console.log("성공했다");
            },
            error: function (xmlHttpRequest, status, error) {
                var err = eval("(" + xmlHttpRequest.responseText + ")");
                alert(err.message);
                cartList()
            }
        })
    }

</script>
</body>
</html>