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
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-gray-silver">Page Title</li>
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
                     <table class="table table-bordered" id="dataTable" width="100%"
                        cellspacing="0">
                        <tr>
                           <th>userdbNo</th>
                           <th>userdbEmail</th>
                           <th>userdbNickname</th>
                           <th>수정</th>
                           <th>삭제</th>
                        </tr>
                        <c:forEach items="${requestScope.list}" var="list">
                           <tr>
                              <td>${list.userdbNo}</td>
                              <td>${list.userdbEmail}</td>
                              <td>${list.userdbNickname}</td>
                              <td><input type="button" value="수정" onClick="location.href='${pageContext.request.contextPath}/admin/user/updateForm/${list.userdbNo}'"></td>
                              <td><input type="button" value="삭제" id=${list.userdbNo}></td>
                           </tr>
                        </c:forEach>
                     </table>
                                 <div class="col-md-6">
                                    <div class="video-popup">
                                       <a href="https://www.youtube.com/watch?v=pW1uVUg5wXM"
                                          data-lightbox-gallery="youtube-video" title="Video"> </a>
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
                  <input type="email" value="" name="EMAIL" placeholder="Your Email" class="form-control input-lg font-16" data-height="45px" id="mce-EMAIL-footer">
                  <span class="input-group-btn">
                    <button data-height="45px" class="btn bg-theme-colored text-white btn-xs m-0 font-14" type="submit">Subscribe</button>
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
		<!-- Mailchimp Subscription Form Validation-->
              <script type="text/javascript">
      $(function(){ 
                
      })
              </script>

</body>
</html>