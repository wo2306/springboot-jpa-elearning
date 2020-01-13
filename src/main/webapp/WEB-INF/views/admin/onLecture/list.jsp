<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

    <!-- Page Title -->
    <title>LM company | Learning Machine | main</title>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <![endif]-->
    <style>
        #out {
            horiz-align: center;
            text-align: center;
        }

        #in {
            margin: auto;
            width: 50%;
        }
    </style>
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
                            <h2 class="title text-white">관리자 페이지</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">온라인 강의 관리</a></li>
                                <li class="active text-gray-silver"> - 온라인 강의들을 등록, 수정, 삭제할 수 있는 페이지입니다.</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: About -->
        <section class="">
            <div class="container">
                <div class="section-content">
                    <div class="row" id="out">
                        <table class="table table-bordered" id="dataTable2" width="100%"
                               cellspacing="0">
                            <tr>
                                <th>강의번호</th>
                                <th>종류</th>
                                <th>이름</th>
                                <th>등록일</th>
                                <th colspan="2">기능</th>
                            </tr>
                            <c:forEach items="${requestScope.list}" var="list">
                                <tr>
                                    <td>${list.onLectureNo}</td>
                                    <td>${list.onLectureCategory}</td>
                                    <td>${list.onLectureName}</td>
                                    <td>${list.onLectureRegdate}</td>
                                    <input type=hidden name="offLectureNo" value="${list.onLectureNo}">
                                    <td>
                                        <button class="btn btn-dark">수정</button>
                                    </td>
                                    <td>
                                        <button name="deleteBtn" class="btn btn-dark" id=${list.onLectureNo}>삭제</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                        <div class="container" id="in">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <ul class="pagination">
                                            <c:choose>
                                                <c:when test="${page.hasPrevious() eq true}">
                                                    <li class="page-item">
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="page-item">
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number+1}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:if test="${page.totalPages ne 1}">
                                                <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                                    <li class="page-item">
                                                        <c:choose>
                                                            <c:when test="${page.number eq i.count-1}">
                                                                <a class="page-link"
                                                                   href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${i.count}">${i.count}</a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a class="page-link"
                                                                   href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${i.count}">${i.count}</a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </li>
                                                </c:forEach>
                                            </c:if>
                                            <li class="page-item">
                                                <c:choose>
                                                    <c:when test="${page.hasNext() eq true}">
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number+2}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number+1}"
                                                           aria-label="Previous"> <span aria-hidden="true">다음</span>
                                                        </a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </ul>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script>
</script>
</body>
</html>