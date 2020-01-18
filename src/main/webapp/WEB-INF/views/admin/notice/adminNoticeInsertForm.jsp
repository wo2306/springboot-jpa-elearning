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
								<ol class="breadcrumb text-left text-black mt-10">
									<li><a href="#">교육원 등록</a></li>
									<li class="active text-gray-silver"></li>
									
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- Section: Registration Form -->
        <section class="divider parallax layer-overlay overlay-white-8"
                 data-bg-img="http://placehold.it/1920x1280">
            <div class="container-fluid">
                <div class="section-title">
						<div class="row" style="margin-left: 170px; margin-top: 30px;">
							<div class="col-md-6 col-md-offset-3 text-center">
								<h3 class="title text-theme-colored">[  REGISTER FORM  ]</h3>
							</div>
						</div>
					</div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <form id="articleForm" role="form"
                              action="${pageContext.request.contextPath}/admin/notice/insert"
                              method="post">
                            <br style="clear: both">
                            <div class="form-group">
                                <input type="text" class="form-control" id="subject" value="${item.noticeTitle}"
                                       name="noticeTitle" placeholder="subject" style="width:700px; height: 40px;" required>
                            </div>
                            <div class="form-group">
									<textarea class="form-control" id="summernote" name="noticeContent"  
                                              placeholder="content" maxlength="140" rows="7"><div>${item.noticeContent}</div></textarea>
                            </div>
                            
                            <button type="submit" id="submit" name="submit"
                                    class="btn btn-primary pull-right" style=" width: 700px; margin-right:-160px;">등록하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End -->
    </div>
</div>

	</div>
</body>
</html>
