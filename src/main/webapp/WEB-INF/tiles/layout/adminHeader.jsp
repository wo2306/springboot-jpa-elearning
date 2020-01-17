<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/admin/css/sb-admin-2.min.css" rel="stylesheet">
  
    <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/admin/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/admin/js/sb-admin-2.min.js"></script>


<!-- 메인페이지 css -->
    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/css-plugin-collections.css" rel="stylesheet"/>
    <!-- CSS | menuzord megamenu skins -->
    <link id="menuzord-menu-skins"
          href="${pageContext.request.contextPath}/css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
    <!-- CSS | Main style file -->
    <link href="${pageContext.request.contextPath}/css/style-main.css" rel="stylesheet" type="text/css">
    <!-- CSS | Preloader Styles -->
    <link href="${pageContext.request.contextPath}/css/preloader.css" rel="stylesheet" type="text/css">
    <!-- CSS | Custom Margin Padding Collection -->
    <link href="${pageContext.request.contextPath}/css/custom-bootstrap-margin-padding.css" rel="stylesheet"
          type="text/css">
    <!-- CSS | Responsive media queries -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" type="text/css">
    <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">

    <!-- CSS | Theme Color -->
    <link href="${pageContext.request.contextPath}/css/colors/theme-skin-color-set-1.css" rel="stylesheet"
          type="text/css">

    <!-- external javascripts -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- JS | jquery plugin collection for this theme -->
    <script src="${pageContext.request.contextPath}/js/jquery-plugin-collection.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/chart.js"></script>
	<script src="${pageContext.request.contextPath}/js/datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/datepicker.min.js"></script>
<!--  -->

  <!-- Page level custom scripts -->
  <style type="text/css">
	.container-fluid:after{clear: both;}
	.container-fluid{ }
	#accordionSidebar{float: left;  margin-right: 40px;}
	.img-profile{width: 30px;  height: 30px; }
	a:link { color: black; text-decoration: none;}
	a:visited { color: black; text-decoration: none;}
	a:hover { color: gray; text-decoration: none;}
	.logout{padding-left: 20px;}
  
  </style>
</head>
<body>
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
		<a href="${pageContext.request.contextPath}/">메인 페이지로 가기</a>
          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">
            <div class="topbar-divider d-none d-sm-block"></div>
            <!-- Nav Item - User Information -->
            <sec:authorize access="isAuthenticated()">
            <sec:authentication var="user" property="principal"/>
            <li class="nav-item dropdown no-arrow">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${user.userdbNickname}님 </span>
                <img class="img-profile rounded-circle" src="https://pbs.twimg.com/profile_images/883779200653549572/7PmFtnjF_400x400.jpg">
              </li>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
           		 <li class="nav-item dropdown no-arrow logout">
                	<a href="${pageContext.request.contextPath}/logout"><span class="mr-2 d-none d-lg-inline text-gray-600 small">Logout</span></a>
              	</li>
              </sec:authorize>

          </ul>

        </nav>
        <!-- End of Topbar -->

</body>
</html>