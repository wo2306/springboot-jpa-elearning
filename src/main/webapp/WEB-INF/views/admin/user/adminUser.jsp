<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

  <!-- Page Title -->
  <title>LM company | Learning Machine | main</title>

 
<script type="text/javascript">
$(document).ready(function(){ 
	$('#search').click(function() {
       var command = $("#key option:selected").val();
       var keyword = $("#keyword").val();
       if(keyword==''){
    	   alert('검색어를 입력해주세요');
    	   $("#keyword").focus();
    	   return false;
       }
    	   $('form[name=searchForm]').attr('type','submit')
       location.href = '${pageContext.request.contextPath}/admin/user/' + command + '/' + keyword + '/1';
       return false;
	})
    function searchform() {
        var keyfield = $("#key option:selected").val();
        var keyword = $("#keyword").val();
        location.href = '${pageContext.request.contextPath}/admin/user/search/' + keyfield + '/' + keyword + '/1';
        return false;
    }

	$('form[name=form]').on('submit', function () {
		if(confirm('정말 삭제하시겠습니까?')) return true;			
		else{
			alert('회원 삭제가 취소되었습니다.')
			return false;
		}
	})
})
	

</script>

</head>
<body class="" id="page-top">
<div id="wrapper" class="clearfix">

  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
          <ol class="breadcrumb text-left text-black mt-10">
           <!-- Page Heading -->
	          <a class="h3 mb-2 text-gray-800" href="${pageContext.request.contextPath}/admin/user/all/keword/1">회원 관리 페이지</a>
	          <p class="mb-4">
          		회원삭제 사용시엔 다시 한 번 유의깊게 생각해주세요. 회원 수정은 닉네임만 변경 가능합니다. 권한은 0=Admin, 1=Member, 2=KaKao입니다.</br>
	           <!-- Topbar Search -->
                 <li>
                     <form name="searchForm" method="get">
                         <div class="input-group" style="padding-left: 730px">
                             <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
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
   </section>

    <!-- Section: About -->
    <section class="">
      <div class="container">
        <div class="section-content">
          <div class="row">
		          <!--  -->
		          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">회원 가입 리스트</h6>
            </div>
            <div class="card-body" >
              <div class="table-responsive" >
		          <form name="form" action="${pageContext.request.contextPath}/admin/user/delete">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th width="500px">회원 Email</th>
                      <th width="500px">회원 닉네임</th>
                      <th width="500px">회원 가입일</th>
                      <th width="200px">권한</th>
                      <th width="200px">수정</th>
                      <th width="200px">삭제</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${requestScope.list}" var="list">
                       <tr class="odd">
                          <td class="sorting_1">${list.userdbEmail}</td>
                          <td class="sorting_1"><input type="text" name="userdbNickname" value=${list.userdbNickname} style="display: none">${list.userdbNickname}</td>
                          <td class="sorting_1">${list.regDate}</td>
                          <td class="sorting_1">${list.authority}</td>
                          <td><button type="button" class="btn btn-info btn-circle" onClick="location.href='${pageContext.request.contextPath}/admin/user/updateForm/${list.userdbNo}'">
                          <i class="fas fa-info-circle"></i></button></td>
                          <td><button type="submit" class="btn btn-danger btn-circle" name="userdbNo" value=${list.userdbNo }><i class="fas fa-trash"></i></button></td>
                       </tr>
                    </c:forEach>
                  </tbody>
                </table>
                     </form>
              </div>
            </div>
          </div>
        </div>
        </div>
        </div>
        <!-- /.container-fluid -->
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
                                            </ul>
              </div>
           </div>
        </div>
     </section>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
</body>
</html>