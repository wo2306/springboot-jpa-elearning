<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
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
								<h3 class="title text-white">교육원 소개</h3>
								<ol class="breadcrumb text-center text-black mt-10">
									<li><a href="#">Home</a></li>
									<li><a href="#">Pages</a></li>
									<li class="active text-theme-colored">Page Title</li>
									<li class="active text-theme-colored">Event List without
										Sidebar</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>
<!-- start -->
							<!-- Section: Registration Form -->
							<section class="divider parallax layer-overlay overlay-white-8"
								data-bg-img="http://placehold.it/1920x1280">
								<div class="container-fluid">
									<div class="section-title">
										<div class="row">
											<div class="col-md-6 col-md-offset-3 text-center">
												<h3 class="title text-theme-colored">등록 하기 Form</h3>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-md-offset-3">
											<form id="booking-form" name="booking-form"
												action="${pageContext.request.contextPath}/admin/offLecture/adminOffLectureRegister/insert.do" method="post"
												enctype="multipart/form-data">
												<div class="row">
													
													
													<div class="col-sm-6">
														<div class="form-group">
														<label>academyNo</label>
															<input type="text" placeholder="academyNo"
																name="academy.academyNo" required="" class="form-control">
														</div>
													</div>
													
													
													<div class="col-sm-6">
														<div class="form-group">
														<label>offLectureName</label>
															<input type="text" placeholder="offLectureName"
																name="offLectureName" required="" class="form-control">
														</div>
													</div>
													
													<div class="col-sm-6">
														<div class="form-group">
														<label>offLectureTeacher</label>
															<input type="text" placeholder="offLectureTeacher"
																name="offLectureTeacher" required="" class="form-control">
														</div>
													</div>
													
													
													<div class="col-sm-6">
														<div class="form-group">
														<label>category</label>
															<input type="text" placeholder="category"
																name="category" required="" class="form-control">
														</div>
													</div>
													
													
													<div class="col-sm-6">
														<div class="form-group">
														<label>offLectureSeat</label>
															<input type="text" placeholder="offLectureSeat"
																name="offLectureSeat" required="" class="form-control">
														</div>
													</div>
													
													
													
													<div class="col-sm-6">
														<div class="form-group">
														<label>Date: </label>
															<input type="text" id="datepicker"
																name="offLectureDate" required="" class="form-control">
														</div>
													</div>
													
													
													<div class="col-sm-12">
														<div class="form-group">
														<label>offDetail</label>
															<input type="text" placeholder="offDetail"
																name="offDetail" required="" class="form-control">
														</div>
													</div>
													
													<div class="col-sm-12">
														<div class="form-group">
														<label >file upload : </label>
															<input type="file" 
																name="file" >
														</div>
													</div>
													
										
													<div class="col-sm-12">
														<div class="form-group text-center">
															<input name="form_botcheck" class="form-control"
																type="hidden" value="" />
															<button data-loading-text="Please wait..."
																class="btn btn-dark btn-theme-colored btn-sm btn-block mt-20 pt-10 pb-10"
																type="submit">Insert now</button>
														</div>
													</div>
												</div>
											</form>
											<!-- End -->
			
	</div>
</body>
</html>
