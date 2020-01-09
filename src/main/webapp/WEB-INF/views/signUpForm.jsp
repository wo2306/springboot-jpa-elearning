<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | SignUp</title>
	
</head>

<body class="">
  
  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">Forms</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-gray-silver">Page Title</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="heading-line-bottom">
              <h4 class="heading-title">Don't have an Account? Register Now</h4>
            </div>
            <form action="${pageContext.request.contextPath}/signUp" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" style:"display:none">
              <div class="row">
                <div class="form-group col-md-12">
                  <label>Id : Email Address</label>
                  <input type="text" class="form-control" name="userdbEmail">
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-6">
                  <label>Choose Password</label>
                  <input type="password" class="form-control" name="userdbPassword">
                </div>
                <div class="form-group col-md-6">
                  <label>Re-enter Password</label>
                  <input type="password" class="form-control" name="userdbPassword2">
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-6">
                  <label>Nick Name</label>
                  <input type="text" class="form-control" name="userdbNickname">
                </div>
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-default">Register Now</button>
              </div>
            </form>
          </div>
          </div>
          </div>
          </section>
          </div>
</body>
</html>