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
                      <h4 class="text-gray mt-0 pt-5"> Login</h4>
                      <hr>
                      <p>Lorem ipsum dolor sit amet, consectetur elit.</p>
                      <form name="login-form" class="clearfix" method="post"
                            action="${pageContext.request.contextPath}/loginCheck">
                          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"
                                 style="display:none">
                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="form_username_email">Username/Email</label>
                                  <input id="form_username_email" name="id" class="form-control" type="text">
                              </div>
                          </div>
                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="form_password">Password</label>
                                  <input id="form_password" name="password" class="form-control" type="password">
                </div>
              </div>
              <div class="checkbox pull-left mt-15">
                <label for="form_checkbox">
                  <input id="form_checkbox" name="form_checkbox" type="checkbox">
                  Remember me </label>
              </div>
              <div class="form-group pull-right mt-10">
                <button type="submit" class="btn btn-dark btn-sm">Login</button>
              </div>
              <div class="clear text-center pt-10">
                <a class="text-theme-colored font-weight-600 font-12" href="#">Forgot Your Password?</a>
              </div>
              <div class="clear text-center pt-10">
                <a class="btn btn-dark btn-lg btn-block no-border" href="signUpForm" data-bg-color="red">Sign Up</a>
              </div>
              
				<div class="form-group">
				
				<!-- 카카오로그인 -->
					<a id="custom-login-btn" href="javascript:loginWithKakao()">
						<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300" />
					</a>
				</div>
              
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>

<script type='text/javascript'>

var userdbEmail;
var userdbNickname;

  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('5ffb824695870cc524f35aa0dc3e2323');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
    	Kakao.Auth.createLoginButton({
            container: '#custom-login-btn',
            success: function(authObj) {
              Kakao.API.request({
                url: '/v1/user/me',
                success: function(res) {
                      alert(JSON.stringify(res));
                      alert(JSON.stringify(authObj));
                      console.log(res.id);
                      userdbEmail = res.kaccount_email;
                      userdbNickname = res.properties['nickname'];
                      console.log(userdbEmail)
                      console.log(userdbNickname)
                      console.log(authObj.access_token);
                    }
                  })
                },
                fail: function(error) {
                  alert(JSON.stringify(error));
                }
              });
    };
    
    
  //]]>
</script>
</body>
>>>>>>> branch 'master' of https://github.com/noguri08/LM.git
</html>