<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>
    <style>
        .pagination {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
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
                                <li><a href="#">온라인 강의 관리</a></li>
                                <li class="active text-gray-silver"> - 온라인 강의들을 등록, 수정, 삭제할 수 있는 페이지입니다.</li>
                                <!-- Topbar Search -->
                                <li>
                                    <form name="searchForm" method="post" onsubmit="return searchform()">
                                        <div class="input-group" style="padding-left: 730px">
                                            <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
                                                <option value="name">강의명</option>
                                                <option value="category">카테고리</option>
                                                <option value="teacher">강사명</option>
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
                                </li>
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
	          <div class="row">
			          
	          <!-- DataTales Example -->
	          <div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-primary">회원 가입 리스트</h6>
	            </div>
	            <div class="card-body" >
	              <div class="table-responsive" >
                       <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                         <thead>
                            <tr>
		                      <th width="200px">강의번호</th>
		                      <th width="200px">카테고리</th>
		                      <th width="200px">강사명</th>
		                      <th width="500px">이름</th>
		                      <th width="200px">등록일</th>
		                      <th width="200px">수정</th>
		                      <th width="200px">삭제</th>
                            </tr>
                         </thead>
                         <tbody>
                            <c:forEach items="${requestScope.list}" var="list">
                                <tr class="odd">
                                    <td class="sorting_1">${list.onLectureNo}</td>
                                    <td class="sorting_1">${list.onLectureCategory}</td>
                                    <td class="sorting_1">${list.onLectureTeacher}</td>
                                    <td class="sorting_1">${list.onLectureName}</td>
                                    <td><fmt:formatDate value="${list.onLectureRegdate}"
                                                        pattern="yyyy.MM.dd hh:mm"/></td>
                                    <input type=hidden name="offLectureNo" value="${list.onLectureNo}">
                                    <td>
                                        <button type="button" name="updateBtn" class="btn btn-info btn-circle"
                                                value="${list.onLectureNo}"><i class="fas fa-info-circle"></i>
                                        </button>
                                    </td>
                                    <td>
                                        <button type="button" name="deleteBtn" class="btn btn-danger btn-circle"
                                                value="${list.onLectureNo}"><i class="fas fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                         </tbody>
                      </table>
                   </div>
	           </div>
	         </div>
	       </div>
       </div>
      </div> 
     </section>
                        <div class="container" id="in">
                            <div class="row">
                                <div class="col" id="inin">
                                    <ul class="pagination">
                                        <c:if test="${page.totalPages ne 0}">
                                        <c:choose>
                                            <c:when test="${page.hasPrevious() eq true}">
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                            <li class="page-item">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <a style="color: silver" class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${i.count}">${i.count}</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${i.count}">${i.count}</a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item">
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number+2}"
                                                       aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/onLecture/${command}/${keyword}/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">다음</span>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                            </c:if>
                                        </li>
                                    </ul>
                                    <a href="${pageContext.request.contextPath}/callback/video" class="btn btn-light btn-icon-split">
                                    <span class="icon text-gray-600"><i class="fas fa-arrow-right"></i></span>
                    					<span class="text">새로운 강의 등록하기</span></a>
                                </div>
                            </div>
                        </div>
       
<script>
    function searchform() {
        var keyfield = $("#key option:selected").val();
        var keyword = $("#keyword").val();
        if (keyword!="") {
        location.href = '${pageContext.request.contextPath}/admin/onLecture/' + keyfield + '/' + keyword + '/1';

        } else {
            alert("검색어를 입력하세요");
        }
        return false;
    }

    $("button[name='deleteBtn']").on('click', function () {
        if (confirm("선택한 강의를 정말로 삭제하시겠습니까?")) {
            location.href = '${pageContext.request.contextPath}/admin/onLecture/delete/' + $(this).val();
        }
    })

    $("button[name='updateBtn']").on('click', function () {
        location.href = '${pageContext.request.contextPath}/admin/onLecture/updateForm/' + $(this).val();
    })
</script>
</body>
</html>