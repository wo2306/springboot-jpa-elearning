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
	   <!-- include libraries(jQuery, bootstrap) -->
	  <!--  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	 -->
		<!-- include summernote css/js-->
		<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>


</head>
<body>
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
									<li><a href="${pageContext.request.contextPath}/admin"><h3>Home</h3></a></li>
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
                                       name="noticeTitle" placeholder="subject" style="width:700px;" required>
                            </div>
                            <div class="form-group">
									<textarea class="form-control" id="summernote" name="noticeContent"  
                                              placeholder="content" maxlength="140" rows="7"><div>${item.noticeContent}</div></textarea>
                            </div>
                            
                            <button type="submit" id="submit" name="submit"
                                    class="btn btn-primary pull-right" style="margin-right:150px;">등록하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End -->
    </div>
</div>

<!-- summernote 작동시키기 -->
<script type="text/javascript">
    $(document).ready(function () {
        $('#summernote').summernote({
            width: 700,
        	height: 300,
            minHeight: null,
            maxHeight: null,
            focus: true,
            callbacks: {
                onImageUpload: function (files, editor, welEditable) {
                    for (var i = files.length - 1; i >= 0; i--) {
                        sendFile(files[i], this);
                    }
                }
            }
        });
    });
</script>
</body>
</html>