<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Dashboard</title>

</head>
<body>
 <!-- Page Wrapper -->

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/admin">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3"> Admin</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>charts</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Lecture
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      
       <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/academy">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Academy</span></a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/user">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>User</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Lecture</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/onLecture">OnLecture</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/offLecture">OffLecture</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/loadMap">LoadMap</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/coupon">Coupon</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/history">Sales history</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Manager
      </div>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/notice">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Notice</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/review">
          <i class="fas fa-fw fa-table"></i>
          <span>Review</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->
    

</body>
</html>