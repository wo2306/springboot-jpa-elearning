<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
  <![endif]-->
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
                <li><a href="${pageContext.request.contextPath}/admin"><h3>Home</h3></a></li>
	                 <!-- Topbar Search -->
	            <li>
	            	<form name="serchForm" method="post">
		            <div class="input-group" style="padding-left: 730px">
			           	<select name="key" style="background-color:#F8F9FC; margin-right: 10px;" >
						    <option value="">메뉴</option>
						    <option value="noticeNo">글번호</option>
						    <option value="noticeTitle">제목</option>
						    <option value="noticeRegdate">등록일</option>
						</select>
		              <input type="text" name="value" style="padding-left: 10px" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
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
                     <table class="table table-bordered" id="dataTable" cellspacing="0">
                        <tr>
                           <th style="width:100px">글번호</th>
                           <th style="width:500px">제목</th>
                           <th style="width:300px">등록일</th>
                           <th>수정</th>
                           <th>삭제</th>
                        </tr>
                        <c:forEach items="${requestScope.list}" var="list">
                           <tr>
                              <td>${list.noticeNo}</td>
                              <td><a href="${pageContext.request.contextPath}/admin/notice/read/${list.noticeNo}">${list.noticeTitle}</a></td>
                              <td>${list.noticeRegdate}</td>
                              <td><input type="button" class="btn btn-dark" value="수정" onClick="location.href='${pageContext.request.contextPath}/admin/notice/updateForm/${list.noticeNo}'"></td>
                              <td><input type="button" class="btn btn-dark" value="삭제" id=${list.noticeNo}></td>
                           </tr>
                        </c:forEach>
                     </table>
                                 <div class="col-md-6">
                                    <div class="video-popup">
                                       <input type="button" class="btn btn-dark" value="등록" style="width: 500px; margin-left:150px"
                                       onClick="location.href='${pageContext.request.contextPath}/admin/notice/insertForm'">
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </section>

                     <!-- Divider: Call To Action -->
    <section class="bg-theme-color-2">
      <div class="container pt-10 pb-20">
        <div class="row">
          <div class="call-to-action">
            <div class="col-md-6">
              <h3 class="mt-5 mb-5 text-white vertical-align-middle"><i class="pe-7s-mail mr-10 font-48 vertical-align-middle"></i> SUBSCRIBE TO OUR NEWSLETTER</h3>
            </div>
            <div class="col-md-6">
              <!-- Mailchimp Subscription Form Starts Here -->
              <form id="mailchimp-subscription-form" class="newsletter-form mt-10">
                <div class="input-group">
                  <span class="input-group-btn">
                  </span>
                </div>
              </form>
              <!-- Mailchimp Subscription Form Ends Here -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
	<script type="text/javascript">
	 function searchform() {
	        var keyfield = $("#key option:selected").val();
	        var keyword = $("#keyword").val();
	        location.href = '${pageContext.request.contextPath}/admin/notice/' + keyfield + '/' + keyword + '/1';
	        return false;
	    }
	</script>
</body>
</html>