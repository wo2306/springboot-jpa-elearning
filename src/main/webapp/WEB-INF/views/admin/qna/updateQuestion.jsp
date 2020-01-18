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
                                <li><a href="#">답변 수정 페이지</a></li>
                                <li class="active text-gray-silver"> - 관리자가 사용자의 답변을  수정하는 페이지 입니다.</li>
                               
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

							<form name="classQuestion" id="booking-form" name="booking-form" action="${pageContext.request.contextPath}/admin/qna/questionUpdate/update"
								method="post">
								 <div class="row">
									<div class="col-sm-3">
										<div class="form-group">
											<label>질문 번호</label> <input type="text"
												value="${classQuestion.classQuestionNo }" readonly="true"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-3" >
										<div class="form-group">
											<label>작성자</label> <input type="text"
												value="${classQuestion.userdb.userdbNickname }" readonly="true"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>관련 강의 제목</label> <input type="text"
												value="${classQuestion.onLecture.onLectureName }" readonly="true"
												class="form-control">
										</div>
									</div>
									<script>
										$("input[readonly='true']").on('click', function(){
											alert("내용만 수정 가능합니다!");
										})
									</script>
									<p>
									<div class="col-sm-12">
										<div class="form-group">
											<label>질문 제목</label> <input type="text"
												value="${classQuestion.classQuestionTitle }"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label>질문 내용</label> <input type="text"
												value="${classQuestion.classQuestionContent }"
												class="form-control">
										</div>
									</div>
									
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

							<%--  <c:forEach items="${list}" var="answer">
                                <tr>
                                    <td>${answer.classAnswerNo}</td>
                                    <td>${answer.classQuestion.classQuestionNo}</td>
                                    <td>${answer.userdb.userdbNickname}</td>
                                    <td>${answer.classAnswerContent}</td>
                                     <td>
                                        <button type="button" name="updateBtn" class="btn btn-dark"
                                                value="${answer.classAnswerNo}">수정</button>
                                    </td>
                                    <td>
                                        <button  type="button" name="deleteBtn" class="btn btn-dark"
                                                value="${answer.classAnswerNo}">삭제
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach> --%>
                        
                       
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

</body>
</html>