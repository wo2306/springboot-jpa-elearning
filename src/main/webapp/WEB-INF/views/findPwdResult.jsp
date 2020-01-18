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
                      <h3 class="text-gray mt-0 pt-5"> 패스워드 찾기</h3>
                      <hr>
                      <h4><p>${message }</p></h4>
                      <h5><p><a href="${pageContext.request.contextPath}/login">로그인 페이지로 돌아가기</a></p></h5>
                      <input id="id" type="hidden" value="${id }">
                      <input id="email" type="hidden" value="${email }">
                      <input id="tempPwd" type="hidden" value="${tempPwd }">

          </div>
        </div>
      </div>
      <script type="text/javascript">
$(document).ready(function(){
	var address = unescape(location.href);
	console.log(location.href)
	
	var id = $("#id").val();
	var email = $("#email").val();
	var tempPwd = $("#tempPwd").val();
	
	var host = "LearningMachine";
	var template_params = {
			   "give_men": email,
			   "host": "LearningMachine",
			   "content": "발급된 임시 비밀번호는 "+tempPwd+"입니다."
			}

			var service_id = "default_service";
			var template_id = "learningmachine";
			
			var state= ${state}
			if(state) {
			emailjs.send(service_id, template_id, template_params);
			}
});
           
           </script>
    </section>
  </div>
</div>


</body>
</html>