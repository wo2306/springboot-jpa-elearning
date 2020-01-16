<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>
    <title>StudyPress | Education & Courses HTML Template</title>

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
                            <h2 class="title text-white">결제 완료</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">장바구니</a></li>
                                <li><a href="#">강의 구매</a></li>
                                <li class="active text-gray-silver">결제 완료</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-push-3">
                        <h4 class="mt-0 pt-5"> 결제에 성공하였습니다 </h4>
                        <hr>
                        <c:forEach var="dto" items="${list}">
                            <h5>${dto.onLecture.onLectureName}</h5>
                            <p>${dto.onLecture.onLecturePrice}</p>
                        </c:forEach>
                        <a href="${pageContext.request.contextPath}/myPage/info" class="btn btn-dark btn-theme-colored">구매내역</a>
                        <a href="${pageContext.request.contextPath}/" class="btn btn-dark btn-theme-colored">메인으로</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end main-content -->
</div>
</body>
</html>