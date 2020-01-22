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
								<h2 class="title text-white">관리자 페이지</h2>
								<ol class="breadcrumb text-left text-black mt-10">
									<li><a href="${pageContext.request.contextPath}/admin"><h3>Home</h3></a></li>
									<!-- Topbar Search -->
									<li>
                                    <form name="searchForm" method="post" onsubmit="return searchform()">
                                        <div class="input-group" style="padding-left: 730px">
                                            <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
                                                <option value="all">전체</option>
                                                <option value="title">제목</option>
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
	              <h6 class="m-0 font-weight-bold text-primary">공지사항 리스트</h6>
	            </div>
	            <div class="card-body" >
	              <div class="table-responsive" >
                       <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
								<tr>
									<th style="width: 600px">제목</th>
									<th style="width: 200px">등록일</th>
									<th style="width: 30px">수정</th>
									<th style="width: 30px">삭제</th>
								</tr>
								<c:forEach items="${requestScope.list}" var="list">
									<tr>
										<td><a
											href="${pageContext.request.contextPath}/admin/notice/read/${list.noticeNo}">${list.noticeTitle}</a></td>
										<td>${list.noticeRegdate}</td>
                                    <td>
                                        <button type="button" name="updateBtn" class="btn btn-info btn-circle" onClick="location.href='${pageContext.request.contextPath}/admin/notice/updateForm/${list.noticeNo}'">
                                        <i class="fas fa-info-circle"></i>
                                        </button>
                                    </td>
                                    
                                    <td>
	                                    <button type="button" name="deletebtn" class="btn btn-danger btn-circle" id="${list.noticeNo}" value="${list.noticeNo}">
	                                    <i class="fas fa-trash"></i></button>
                                    </td>		
											
									</tr>
								</c:forEach>
							</table>
		                 </div>
			           </div>
			         </div>
			       </div>
		       </div>
		      </div> 
			</section>
			<div class="col-md-6">
				<a href="${pageContext.request.contextPath}/admin/notice/insertForm" class="btn btn-light btn-icon-split">
				<span class="icon text-gray-600"><i class="fas fa-arrow-right"></i></span>
				<span class="text">새로운 공지사항 등록</span></a>	
			</div>
			</div>
		</div>

			<!-- Divider: Call To Action -->
			<section class="bg-theme-color-2">
				<div class="container pt-10 pb-20">
					<div class="row">
					</div>
				</div>
			</section>

			<!-- 페이징 처리 -->
			<div class="container" id="in" style="align-content: center;">
				<div class="row">
					<div class="col" id="inin">
						<ul class="pagination">
							<c:if test="${page.totalPages ne 0}">
								<c:choose>
									<c:when test="${page.hasPrevious() eq true}">
										<li class="page-item"><a class="page-link"
											href="${pageContext.request.contextPath}/admin/notice/all/keyword/${page.number}"
											aria-label="Previous"> <span aria-hidden="true">이전</span>
										</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link"
											href="${pageContext.request.contextPath}/admin/notice/all/keyword/${page.number+1}"
											aria-label="Previous"> <span aria-hidden="true">이전</span>
										</a></li>
									</c:otherwise>
								</c:choose>

								<c:forEach varStatus="i" begin="1" end="${page.totalPages}">
									<li class="page-item"><c:choose>
											<c:when test="${page.number eq i.count-1}">
												<a class="page-link"
													href="${pageContext.request.contextPath}/admin/notice/all/keyword/${i.count}">${i.count}</a>
											</c:when>
											<c:otherwise>
												<a class="page-link"
													href="${pageContext.request.contextPath}/admin/notice/all/keyword/${i.count}">${i.count}</a>
											</c:otherwise>
										</c:choose></li>
								</c:forEach>

								<li class="page-item"><c:choose>
										<c:when test="${page.hasNext() eq true}">
											<a class="page-link"
												href="${pageContext.request.contextPath}/admin/notice/all/keyword/${page.number+2}"
												aria-label="Next"> <span aria-hidden="true">다음</span>
											</a>
										</c:when>
										<c:otherwise>
											<a class="page-link"
												href="${pageContext.request.contextPath}/admin/notice/all/keyword/${page.number+1}"
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
	<script type="text/javascript">
	 function searchform() {
	        var keyfield = $("#key option:selected").val();
	        var keyword = $("#keyword").val();
	        location.href = '${pageContext.request.contextPath}/admin/notice/' + keyfield + '/' + keyword + '/1';
	        return false;
	    }
	 
	  $(document).ready(function(){ 
          
          
          //전체레코드 가져오기
          function printnotice() {
             $.ajax({
                   type :"post",
                   url :"${pageContext.request.contextPath}/admin/notice/list",
                   dataType :"json",               
                   success : function(result){
                      //alert("통신성공!!!");
                      if(result!=null){
                      //alert(result);
                      $('#dataTable tr:gt(0)').empty();
                   var str = "";
                   $.each(result,function(index,item){
                      str+='<tr>';
                      str+='<td>'+item.noticeNo+'</td>';
                      str+='<td><a>'+item.noticeTitle+'</a></td>';
                      str+='<td>'+item.noticeContent+'</td>';
                      str+='<td><input type="submit" class="btn btn-dark" value="수정"></td>';
                      str+='<td><input type="button" class="btn btn-dark" value="삭제" id='+item.noticeNo+'></td>';
                      str+='</tr>';
                   });
                   $('#dataTable').append(str);
                      }else alert("등록된 공지사항이 없습니다.");
                     },
                  error : function(err){
                   alert("통신실패!!!! err : " + err);
               } 
               });
          }

          
          $("button[name='deletebtn']").on('click', function () {
              if (confirm("선택한 강의를 정말로 삭제하시겠습니까?")) {
                  location.href = "${pageContext.request.contextPath}/admin/notice/delete/"+ $(this).val();
              }
          }) 
          
          

        })
        function searchform() {
              var keyfield = $("#key option:selected").val();
              var keyword = $("#keyword").val();
              location.href = '${pageContext.request.contextPath}/admin/notice/' + keyfield + '/' + keyword + '/1';
              return false;
          }
	</script>
</body>
</html>