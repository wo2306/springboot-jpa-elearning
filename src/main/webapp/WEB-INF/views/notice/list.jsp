<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>
<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

<style type="text/css">
.main-bg{
	background-image: url("${pageContext.request.contextPath}images/index/main2.png");
	background-repeat: no-repeat;
	background-size: 100%;
}
</style>

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
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="${pageContext.request.contextPath}/images/banner/notice.jpg">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h3 class="title text-white">공지사항</h3>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Schedule -->
    <section id="schedule" class="divider parallax layer-overlay overlay-white-8" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-80 pb-60">
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <table class="table table-striped table-schedule">
                <thead>
                  <tr class="bg-theme-colored">
                    <th>글번호</th>
                    <th>제목</th>
                    <th>등록일</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="notice"> 
                  <tr>
                    <td>${notice.noticeNo}</td>
                    <td><strong><a href="${pageContext.request.contextPath}/notice/detail/${notice.noticeNo}">${notice.noticeTitle}</a></strong></td>
                    <td>${notice.noticeRegdate}</td>
                  </tr>
                </c:forEach>  
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
</div>
</body>
</html>