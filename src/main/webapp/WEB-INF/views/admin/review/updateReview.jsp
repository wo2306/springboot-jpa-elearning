<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

    <!-- Page Title -->
    <title>LM company | Learning Machine | main</title>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <![endif]-->
    <style>
        #out {
            horiz-align: center;
            text-align: center;
        }

        #in {
            margin: auto;
            width: 50%;
        }

        #inin {
            margin: auto;
            width: 50%;
        }
    </style>
</head>
<body class="">
<div id="wrapper" class="clearfix">

    <!-- Start main-content -->
    <div class="main-content">

        <!-- Section: inner-header -->
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="http://placehold.it/1920x1280">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">리뷰 수정 페이지</a></li>
                                <li class="active text-gray-silver"> - 관리자가 리뷰를 수정하는 페이지 입니다.</li>
                               
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: About -->
        <section class="">
            <div class="container">
                <div class="section-content">
                    <div class="row" id="out">

							<form name = "review" id="booking-form" name="booking-form" action="${pageContext.request.contextPath}/admin/review/update"
								method="post">
								 <div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label>리뷰 번호</label> <input type="text" name="reviewNo"
												value="${review.reviewNo }" readonly="true"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-6" >
										<div class="form-group">
											<label>작성자</label> <input type="text" name="userdb.userdbNickname"
												value="${review.userdb.userdbNickname }" readonly="true"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label>리뷰 내용</label> <input type="text" name="reviewContent"
												value="${review.reviewContent }"
												class="form-control">
										</div>
									</div>
									<script>
										$("input[readonly='true']").on('click', function(){
											alert("내용만 수정 가능합니다!");
										})
									</script>
									<p>
									
									
								</div>
								<br>
								<div class="col-sm-12">
														<div class="form-group text-center">
															<input name="form_botcheck" class="form-control"
																type="hidden" value="" />
															<button data-loading-text="Please wait..."
																class="btn btn-dark btn-theme-colored btn-sm btn-block mt-20 pt-10 pb-10"
																type="submit">수 정 하 기</button>
														</div>
													</div> 
							</form>

                        
                       
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

</body>
</html>