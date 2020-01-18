<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

  <!-- Page Title -->
  <title>LM company | Learning Machine | main</title>

 
<script type="text/javascript">
$(document).ready(function(){ 

	$('.deleteBtn').click(function() {
        alert('정말삭제한다아')
        $('.deleteBtn').attr('type','submit')
        return true;
	})
	
	
	$('#search').click(function() {
        alert('서치클릭')
       var command = $("#key option:selected").val();
       var keyword = $("#keyword").val();
    	   $('form[name=searchForm]').attr('type','submit')
       location.href = '${pageContext.request.contextPath}/admin/user/' + command + '/' + keyword + '/1';
       return false;
    /* 	   $('form[name=searchForm]').attr('action','submit')
        return true;
    	   
     */
    	   
    	   
	})
        	 
        	 
         function searchform() {
       	  alert(2222);
             var keyfield = $("#key option:selected").val();
             var keyword = $("#keyword").val();
             location.href = '${pageContext.request.contextPath}/admin/user/search/' + keyfield + '/' + keyword + '/1';
             return false;
         }
         
})
</script>

</head>
<body class="">
<div id="wrapper" class="clearfix">

  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">관리자 페이지</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="${pageContext.request.contextPath}/admin"><h3>Home</h3></a>- 사용자들을  수정, 삭제할 수 있는 페이지입니다.</li>
	                
	           <!-- Topbar Search -->
                 <li>
                     <form name="searchForm" method="get">
                         <div class="input-group" style="padding-left: 730px">
                             <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
                                 <option value="all">전체</option>
                                 <option value="userdbNo">학생번호</option>
                                 <option value="userdbEmail">이메일</option>
                                 <option value="userdbNickname">닉네임</option>
                             </select>
                             <input id="keyword" type="text" name="keyword" style="padding-left: 10px"
                                    class="form-control bg-light border-0 small"
                                    placeholder="Search for..." aria-label="Search"
                                    aria-describedby="basic-addon2">
                             <div class="input-group-append">
                                 <button class="btn btn-primary" type="button" id="search">
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
		          <form name="form" action="${pageContext.request.contextPath}/admin/user/delete" >
                     <table class="table table-bordered" id="dataTable" cellspacing="0">
                        <tr>
                           <th style="width:200px">UserNo</th>
                           <th style="width:350px">Email</th>
                           <th style="width:350px">Nickname</th>
                           <th>수정</th>
                           <th>삭제</th>
                        </tr>
                        <c:forEach items="${requestScope.list}" var="list">
                           <tr>
                              <td>${list.userdbNo}</td>
                              <td>${list.userdbEmail}</td>
                              <td><input type="text" name="userdbNickname" value=${list.userdbNickname} style="display: none">${list.userdbNickname}</td>
                              <td><input type="button" class="btn btn-dark" value="수정" onClick="location.href='${pageContext.request.contextPath}/admin/user/updateForm/${list.userdbNo}'"></td>
                              <td><button type="button" class="btn btn-dark deleteBtn" name="userdbNo" value=${list.userdbNo }>삭제</button></td>
                           </tr>
                        </c:forEach>
                     </table>
		          </form>
		          <!-- 페이징처리 -->
                        <div class="container" id="in">
                            <div class="row">
                                <div class="col" id="inin">
                                    <ul class="pagination">
                                        <c:if test="${page.totalPages ne 0}">
                                        <c:choose>
                                            <c:when test="${page.hasPrevious() eq true}">
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/user/${command}/${keyword}/${page.number}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/user/${command}/${keyword}/${page.number+1}"
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
                                                           href="${pageContext.request.contextPath}/admin/user/${command}/${keyword}/${i.count}">${i.count}</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/user/${command}/${keyword}/${i.count}">${i.count}</a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item">
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/user/${command}/${keyword}/${page.number+2}"
                                                       aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/user/${command}/${keyword}/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">다음</span>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                            </c:if>
              </div>
           </div>
        </div>
     </section>

</body>
</html>