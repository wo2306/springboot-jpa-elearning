<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | login</title>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body class="">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2.3.2/dist/email.min.js"></script>
<script type="text/javascript">
   (function(){
      emailjs.init("user_e0Y4c1wHj63WtwJ1gXx2Z");
   })();
</script>

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
              <h2 class="title text-white">My Account</h2>
              <ol class="breadcrumb text-left text-black mt-10">
                <li><a href="index">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-gray-silver">Page Title</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

      <section>
          <div class="container">
              <div class="row">
                  <div class="col-md-6 col-md-push-3">
                      <h4 class="text-gray mt-0 pt-5"> 패스워드 찾기</h4>
                      <hr>
                      <p>가입된 이메일로 임시 비밀번호를 발급해드립니다.</p>
                      <form name="login-form" class="clearfix" method="post"
                            action="${pageContext.request.contextPath}/findPwdResult">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"
                                 style="display:none">
                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="form_username_name">이름(NickName)</label>
                                  <input id="form_username_name" name="id" class="form-control" type="text">
                              </div>
                          </div>
                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="form_addr">이메일 주소</label>
                                  <input id="form_addr" name="email" class="form-control" type="text">
                				  <input id="from_pwd" name="tempPwd" type="hidden" value="${tempPwd }">
                	</div>
              </div>
             
              <div class="clear text-center pt-10">
                <button type="submit" id="pwdBtn" class="btn btn-dark btn-sm">찾기</button>
              </div>
           
          
           
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>


</body>
</html>