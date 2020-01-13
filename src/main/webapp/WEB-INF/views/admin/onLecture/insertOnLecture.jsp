<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>


<head>
   <!-- Favicon and Touch Icons -->
    <link href="${pageContext.request.contextPath}/images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-72x72.png" rel="apple-touch-icon"
          sizes="72x72">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-114x114.png" rel="apple-touch-icon"
          sizes="114x114">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-144x144.png" rel="apple-touch-icon"
          sizes="144x144">

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

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

 
</head>

<body class="">
	<div id="wrapper" class="clearfix">
	
	<h1>온렉쳐 인설트 양식</h1>
	
	<form>
	  <div class="form-group">
	    <label for="exampleInputEmail2">Email address</label>
	    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword2">Password</label>
	    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile2">File input</label>
	    <input type="file" id="exampleInputFile2">
	    <p class="help-block">Example block-level help text here.</p>
	  </div>
	  <div class="checkbox">
	    <label>
	      <input type="checkbox"> Check me out
	    </label>
	  </div>
	  <button type="submit" class="btn btn-default">Submit</button>
	</form>  
	
	</div>
</body>
</html>