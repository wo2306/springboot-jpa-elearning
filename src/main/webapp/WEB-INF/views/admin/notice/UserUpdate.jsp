<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | main</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
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
                        <ol class="breadcrumb text-center text-black mt-10">
                           <li><a href="${pageContext.request.contextPath}/admin/user">Home</a></li>
                        </ol>
                     </div>
                  </div>
               </div>
            </div>
         </section>
<!-- start -->
                     <!-- Section: Registration Form -->
                     <section class="divider parallax layer-overlay overlay-white-8" data-bg-img="http://placehold.it/1920x1280">
                        <div class="container-fluid">
                           <div class="section-title">
                              <div class="row">
                                 <div class="col-md-6 col-md-offset-3 text-center">
                                    <h3 class="title text-theme-colored">수정하기 Form</h3>
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-6 col-md-offset-3">
                                 <form id="booking-form" name="booking-form"
                                    action="${pageContext.request.contextPath}/admin/user/update" method="post">
                                    <div class="row">
                                       <div class="col-sm-6">
                                          <div class="form-group">
                                          <label>userdbNo</label>
                                             <input type="text" name="userdbNo" value=${item.userdbNo}
                                                name="userdbNo" readonly="readonly" required="" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>Email</label>
                                             <input type="text" name="userdbEmail" value=${item.userdbEmail}
                                                name="userdbEmail" required="" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>Password</label>
                                             <input type="password" name="Password" value=${item.userdbPassword}
                                                name="userdbEmail" readonly="readonly" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>Nickname</label>
                                             <input type="text" name="userdbNickname" value=${item.userdbNickname}
                                                name="userdbNickname" required="" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>Authority</label>
                                             <input type="text" name="authority" value=${item.authority}
                                                name="userdbauthority" readonly="readonly" required="" class="form-control">
                                          </div>
                                       </div>
                                    </div>
                                    <input type="submit" value="수정">
                                    <input type="button" value="취소" onClick="location.href='${pageContext.request.contextPath}/admin/user'">
                                 </form>
                                 </div>
                                 </div>
                                 </div>
                                 </section>
                                 <!-- End -->
         
   </div>
</body>
</html>