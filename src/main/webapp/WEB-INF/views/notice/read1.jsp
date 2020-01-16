<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
</head>

<!-- Start main-content -->
<div class="main-content">
	<!-- Section: inner-header -->
	 <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="${pageContext.request.contextPath}/images/banner/notice.jpg">
		<div class="container pt-70 pb-20">
			<!-- Section Content -->
			<div class="section-content">
				<div class="row">
					<div class="col-md-12">
						<h2 class="title text-white">공지사항</h2>
						<ol class="breadcrumb text-left text-black mt-10">
							<li><a href="#">Home</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section>
		<div class="container">

			<!-- Textblock -->
			<div>
				<span class="text-highlight light" style="font-size: 25px;">${item.noticeTitle}</span>
			</div>
			<form style="padding-bottom: 50px;">
				<div class="row">
					<div class="col-md-12">${item.noticeContent}</div>
				</div>
			
			</form>
			<input type="button" value="뒤로가기"
				style="color: #FFFFFF; background: #202C45; padding: 5px 12px"
				onClick="location.href='${pageContext.request.contextPath}/notice'">
		</div>
	</section>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>