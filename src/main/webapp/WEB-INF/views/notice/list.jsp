<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>
<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

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
				data-bg-img="${pageContext.request.contextPath}/images/banner/notice.jpg">
				<div class="container pt-70 pb-20">
					<!-- Section Content -->
					<div class="section-content">
						<div class="row">
							<div class="col-md-12">
								<h2 class="title text-white">
									공지사항
									</h3>
									<ol class="breadcrumb text-left text-black mt-10">
										<li><a href="${pageContext.request.contextPath}/">Home</a></li>
									</ol>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Section: Schedule -->
			<section id="schedule"
				class="divider parallax layer-overlay overlay-white-8"
				data-bg-img="http://placehold.it/1920x1280">
				<div class="container pt-80 pb-60">
					<div class="section-content">
						<div class="row">
							<div class="col-md-12">
								<table class="table table-striped table-schedule">
									<thead>
										<tr class="bg-theme-colored">
											<th style="color: white; width: 800px; padding-left: 30px;">제목</th>
											<th style="color: white;">등록일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="notice">
											<tr>
												<td style="padding-left: 28px;"><strong><a
														href="${pageContext.request.contextPath}/notice/detail/${notice.noticeNo}">${notice.noticeTitle}</a></strong></td>
												<td>${notice.noticeRegdate}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							<!-- 페이징 처리 -->
			<div class="col-sm-12" id="paginationList">
                                <nav >
                                    <ul class="pagination theme-colored xs-pull-center m-0" id="in">
                                        <c:if test="${page.totalPages ne 1}">
                                            <c:choose>
                                                <c:when test="${page.hasPrevious() eq true}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/notice/list/${page.number}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/notice/list/${page.number+1}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <li class="active"><a
                                                                href="${pageContext.request.contextPath}/notice/list/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li>
                                                            <a href="${pageContext.request.contextPath}/notice/list/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/notice/list/${page.number+2}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span>
                                                        </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/notice/list/${page.number+1}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span>
                                                        </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
			
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- end main-content -->
</body>
</html>