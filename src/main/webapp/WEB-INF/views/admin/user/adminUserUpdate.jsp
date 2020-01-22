<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

<script type="text/javascript">
</script>
</head>
<body class="">
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
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>이메일</label>
                                             <input type="text" name="userdbEmail" value=${item.userdbEmail}
                                                name="userdbEmail" readonly="readonly" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>패스워드</label>
                                             <input type="password" name="Password" value=${item.userdbPassword}
                                                name="userdbPassword" readonly="readonly" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>닉네임</label>
                                             <input type="text" name="userdbNickname" value=${item.userdbNickname}
                                                name="userdbNickname" required="" class="form-control">
                                          </div>
                                       </div>
                                       <div class="col-sm-12">
                                          <div class="form-group">
                                          <label>가입일</label>
                                             <input type="text" name="authority" value=${item.regDate}
                                                name="userdbauthority" class="form-control">
                                          </div>
                                       </div>
                                    </div>
                                    <input type="submit" value="수정">
                                    <input type="button" value="취소" onClick="location.href='${pageContext.request.contextPath}/admin/user/all/keyword/1'">
                                 </form>
                                 </div>
                                 </div>
                                 </div>
                                 </section>
                                 <!-- End -->
</body>
</html>