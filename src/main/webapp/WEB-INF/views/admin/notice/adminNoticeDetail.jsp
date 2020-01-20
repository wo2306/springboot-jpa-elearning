<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

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
			<section
				class="inner-header divider parallax layer-overlay overlay-dark-5"
				data-bg-img="http://placehold.it/1920x1280">
				<div class="container pt-70 pb-20">
					<!-- Section Content -->
					<div class="section-content">
						<div class="row">
							<div class="col-md-12">
								<h2 class="title text-white">관리자 페이지</h2>
								<ol class="breadcrumb text-left text-black mt-10"  style="width: 1200px;">
									<li><a href="${pageContext.request.contextPath}/admin"><h3>Home</h3></a></li>
									<!-- Topbar Search -->
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Section: About -->
			<form style="padding-left: 150px">
			
				<span class="author" style="color: white">글번호 : ${item.noticeNo}</span>
			<h4>
				<span><strong>제목 : </strong></span><b>${item.noticeTitle}</b>
			</h4>
				<div style="padding: 10px; background-color: silver;">${item.noticeContent}</div>
				<br> 
				<div style="margin-left:; "> 
				<input type="button" class="btn btn-dark btn-sm" value="뒤로가기" style="color: #FFFFFF; background: #202C45; padding: 5px 12px"
					onClick="location.href='${pageContext.request.contextPath}/admin/notice/all/keyword/1'">
				<input type="button" class="btn btn-dark btn-sm" value="수정하기" style="color: #FFFFFF; background: #202C45; padding: 5px 12px; margin-left: 5px;"
					onClick="location.href='${pageContext.request.contextPath}/admin/notice/updateForm/${item.noticeNo}'">
				</div>
			</form>
			<!-- Divider: Call To Action -->
			<section class="bg-theme-color-2">
				<div class="container pt-10 pb-20">
					<div class="row">
						<div class="call-to-action">
							<div class="col-md-6">
								<!-- Mailchimp Subscription Form Starts Here -->
								<form id="mailchimp-subscription-form"
									class="newsletter-form mt-10">
									<div class="input-group">
										<span class="input-group-btn"> </span>
									</div>
								</form>
								<!-- Mailchimp Subscription Form Ends Here -->
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>