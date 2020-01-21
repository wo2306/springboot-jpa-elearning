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
			<section
				class="inner-header divider parallax layer-overlay overlay-dark-5"
				data-bg-img="http://placehold.it/1920x1280">
				<div class="container pt-70 pb-20">
					<!-- Section Content -->
					<div class="section-content">
						<div class="row">
							<div class="col-md-12">
								<ol class="breadcrumb text-left text-black mt-10">
									<li><a href="#">관리자 질문 관리 페이지</a></li>
									<li class="active text-gray-silver">- 관리자가 사용자의 질문을 수정,
										삭제할 수 있는 페이지 입니다.</li>
										<!-- Topbar Search -->
                               <!--  <li>
                                    <form name="searchForm" method="post" onsubmit="return searchform()">
                                        <div class="input-group" style="padding-left: 730px">
                                            <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
                                                <option value="name">작성자</option>
                                                <option value="title">질문 제목</option>
                                            </select>
                                            <input id="keyword" type="text" name="value" style="padding-left: 10px"
                                                   class="form-control bg-light border-0 small"
                                                   placeholder="Search for..." aria-label="Search"
                                                   aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit" id="search">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </li> -->

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
							<table class="table table-bordered" id="dataTable2" width="100%"
								cellspacing="0">
								<tr>
									<th>질문번호</th>
									<th>작성자</th>
									<th>질문제목 <span style="font-size: 12px;">(상세 내용을 보려면
											클릭하세요.)</span></th>
									<th colspan="2">기능</th>
								</tr>

								<c:forEach items="${list}" var="question">
									<tr>
										<td>${question.classQuestionNo}</td>
										<td>${question.userdb.userdbNickname}</td>
										<td><button name="questionDetail" class="btn btn-default">${question.classQuestionTitle}</button>
											<br>
											<div class="btn btn-light" style="display: none;">
												<h3 class="dialog__title">질문 상세 내용</h3>
												<p class="dialog__content">${question.classQuestionContent }</p>
												<button class="btn btn-dark" name="detailClose">닫 기</button>
											</div></td>


										<td>
											<button type="button" name="updateBtn" class="btn btn-dark"
												value="${question.classQuestionNo}">수정</button>
										</td>
										<td>
											<button type="button" name="deleteBtn" class="btn btn-dark"
												value="${question.classQuestionNo}">삭제</button>
										</td>
									</tr>
								</c:forEach>
							</table>
							<div class="container" id="in">
								<div class="row">
									<div class="col" id="inin">
										<ul class="pagination">
											<c:if test="${page.totalPages ne 0}">
												<c:choose>
													<c:when test="${page.hasPrevious() eq true}">
														<li class="page-item"><a class="page-link"
															href="${pageContext.request.contextPath}/admin/qna/questionList/${page.number}"
															aria-label="Previous"> <span aria-hidden="true">이전</span>
														</a></li>
													</c:when>
													<c:otherwise>
														<li class="page-item"><a class="page-link"
															href="${pageContext.request.contextPath}/admin/qna/questionList/${page.number+1}"
															aria-label="Previous"> <span aria-hidden="true">이전</span>
														</a></li>
													</c:otherwise>
												</c:choose>

												<c:forEach varStatus="i" begin="1" end="${page.totalPages}">
													<li class="page-item"><c:choose>
															<c:when test="${page.number eq i.count-1}">
																<a class="page-link"
																	href="${pageContext.request.contextPath}/admin/qna/questionList/${i.count}">${i.count}</a>
															</c:when>
															<c:otherwise>
																<a class="page-link"
																	href="${pageContext.request.contextPath}/admin/qna/questionList/${i.count}">${i.count}</a>
															</c:otherwise>
														</c:choose></li>
												</c:forEach>

												<li class="page-item"><c:choose>
														<c:when test="${page.hasNext() eq true}">
															<a class="page-link"
																href="${pageContext.request.contextPath}/admin/qna/questionList/${page.number+2}"
																aria-label="Next"> <span aria-hidden="true">다음</span>
															</a>
														</c:when>
														<c:otherwise>
															<a class="page-link"
																href="${pageContext.request.contextPath}/admin/qna/questionList/${page.number+1}"
																aria-label="Previous"> <span aria-hidden="true">다음</span>
															</a>
														</c:otherwise>
													</c:choose>
											</c:if>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<script>
    function searchform() {
        var keyfield = $("#key option:selected").val();
        var keyword = $("#keyword").val();
     alert(keyfield);
     alert(keyword);
        if (keyword=="") {
        
        location.href = '${pageContext.request.contextPath}/admin/qna/questionList/1';
        
        } else {
        	location.href = '${pageContext.request.contextPath}/admin/qna/' + keyfield + '/' + keyword + '/1';
        	 }
        return false;
    }
	$("button[name='questionDetail']").on('click', function(){
		$(this).next().next().show();
	});
	
	$("button[name='detailClose']").on("click", function(){
		$(this).parent().hide();
	});

    $("button[name='deleteBtn']").on('click', function () {
    	if(confirm("선택된 리뷰를 정말로 삭제하시겠습니까?")){
        location.href = '${pageContext.request.contextPath}/admin/qna/questionDelete/'+$(this).val();
    		}
    })

    $("button[name='updateBtn']").on('click', function () {
    	location.href = '${pageContext.request.contextPath}/admin/qna/questionUpdate/'+$(this).val();
    })
</script>
</body>
</html>