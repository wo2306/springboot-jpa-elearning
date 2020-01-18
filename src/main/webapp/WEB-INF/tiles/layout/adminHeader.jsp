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
	.logo{width:20px}
  </style>
</head>
<body>
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
        
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center"
       href="${pageContext.request.contextPath}/">
        <div class="">
           <img src="${pageContext.request.contextPath}/css/images/adminlogo2.png" alt=""></a>
        </div>
        <div class="sidebar-brand-text mx-3"></div>
    </a>
        
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