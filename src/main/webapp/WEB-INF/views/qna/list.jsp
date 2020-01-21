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
 <style>
        #out {
            horiz-align: center;
            text-align: center;
        }
        .pagination {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>

<body class="">
<div id="wrapper" class="clearfix">
 <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="${pageContext.request.contextPath}/images/banner/qna3.png">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title text-white">Questions List</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">Questions List</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

	<div class="container pt-80 pb-60">
		<div class="section-content">
			<div class="row">
				<div class="col-md-12">
				    <div class="media-content">
      <h4><span style="color:#1dc078">Q.</span> <a href="/qna/questionForm">질문등록</a></h4>
  
    </div>
					<table class="table table-striped table-schedule">
						<thead>
							<tr class="bg-theme-colored">
								<th style="color:white;">질문</th>
								<th style="color:white;">연관 강의</th>
								<th style="color:white;">제목<span style="font-size: 12px; color:gray">(상세 내용을 보려면 클릭하세요)</span></th>
								<th style="color:white;">등록일</th>
								<th style="color:white;">작성자</th>
							</tr>
						</thead>
						<tbody>
								<c:choose>
    <c:when test="${empty list}">
	<tr>
        <td colspan="5">
            <p align="center"><b><span style="font-size:9pt;">등록된 게시물이 없습니다.</span></b></p>
        </td>
    </tr>
    </c:when>
    <c:otherwise>
    <c:forEach items = "${list }" var="question">
    <tr class="">
    
    <th scope="row" style="width: 170px;"><img src="http://placehold.it/100x50"
															alt=""></th>
    <td style="width: 160px;">${question.onLecture.onLectureName }</td>
    <td><strong style="font-size: 16px;"><a href="${pageContext.request.contextPath}/qna/read/${question.classQuestionNo }">${question.classQuestionTitle }</a></strong></td>
    
    <td> 
    	<fmt:formatDate value="${question.classQuestionRegdate}"
                                                        pattern="yyyy. MM. dd"/>
    </td>
    <td style="width: 100px;">${question.userdb.userdbNickname }</td>
    
    </tr>
    	
    </c:forEach>
    </c:otherwise>
    </c:choose>

						</tbody>
					</table>
				</div>
			</div>
			    <ul class="pagination">
                                        <c:if test="${page.totalPages ne 0}">
                                        <c:choose>
                                            <c:when test="${page.hasPrevious() eq true}">
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/qna/list/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/qna/list/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                            <li class="page-item">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/qna/list/${i.count}">${i.count}</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/qna/list/${i.count}">${i.count}</a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item">
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/qna/list/${page.number+2}"
                                                       aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/qna/list/${page.number+1}"
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
</body>
</html>