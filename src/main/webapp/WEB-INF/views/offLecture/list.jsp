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

<body class="">
	<div id="wrapper" class="clearfix">
		<!-- Start main-content -->
		<div class="main-content">
			<!-- Section: inner-header -->
			<section class="inner-header divider parallax layer-overlay overlay-dark-5"
					 data-bg-img="${pageContext.request.contextPath}/images/banner/offlist.jpg">
				<div class="container pt-70 pb-20">
					<!-- Section Content -->
					<div class="section-content">
						<div class="row">
							<div class="col-md-12">
								<h2 class="title text-white">오프라인 강의</h2>
								<ol class="breadcrumb text-left text-black mt-10">
									<li><a href="#">Home</a></li>
									<li><a href="#">Pages</a></li>
									<li class="active text-gray-silver">오프라인 강의 리스트</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Section: Upcoming Events -->
			<section id="upcoming-events"
				class="divider parallax layer-overlay overlay-white-8"
				data-bg-img="http://placehold.it/1920x1280">
				<div class="container pb-50 pt-80">
					<div class="section-content">
						<div class="row">

							<c:choose>
								<c:when test="${empty requestScope.list}">
									<b><span style="font-size: 9pt;">현재 진행 중인 오프라인 강의가
											없습니다.</span></b>
								</c:when>
								<c:otherwise>
									<c:forEach items="${requestScope.list}" var="list" varStatus="status">

										<div class="col-sm-6 col-md-4 col-lg-4">
											<div class="schedule-box maxwidth500 bg-light mb-30">
												<div class="thumb">
													<img class="img-fullwidth"
														src="${pageContext.request.contextPath}/images/offLecture/${list.offLectureNo}.png">
													<div class="overlay"></div>
												</div>

												<div class="schedule-details clearfix p-15 pt-10">
													<h5 class="font-16 title">
														<a
															href="${pageContext.request.contextPath}/offLecture/detail/${list.offLectureNo}">${list.offLectureName}</a>
													</h5>
													<ul class="list-inline font-11 mb-20">
														<li><i class="fa fa-calendar mr-5"></i>${list.offLectureDate}</li>
														<li><i class="fa fa-map-marker mr-5"></i>${list.academy.academyAddrCity}</li>
													</ul>
													 <p>강사님 이름 : ${list.offLectureTeacher}</p>
													<p>강의 설명 : ${list.offDetail}</p> 
													<p>남은 좌석수 : ${list.offLectureSeat-list.offLectureReservedseat}</p>
													
													<div class="mt-10">
															<a href="${pageContext.request.contextPath}/offLecture/detail/${list.offLectureNo}"
															class="btn btn-dark btn-sm mt-10">Details</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							
							<!-- 페이징처리 -->
							<div id="in" class="col-sm-12" id="paginationList">
                                <nav>
                                    <ul class="pagination theme-colored xs-pull-center m-0">
                                        <c:if test="${page.totalPages ne 1}">
                                            <c:choose>
                                                <c:when test="${page.hasPrevious() eq true}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/offLecture/list/${page.number}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/offLecture/list/${page.number+1}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <li class="active"><a
                                                                href="${pageContext.request.contextPath}/offLecture/list/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li>
                                                            <a href="${pageContext.request.contextPath}/offLecture/list/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/offLecture/list/${page.number+2}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/offLecture/list/${page.number+1}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
							<!-- 4 -->
						</div>
						
						<!-- 3 -->
					</div>
					<!-- 2 -->
					
				</div>
				<!-- 1 -->
				
			</section>
			
		</div>
		
	</div>
	<!-- end main-content -->

</body>
</html>