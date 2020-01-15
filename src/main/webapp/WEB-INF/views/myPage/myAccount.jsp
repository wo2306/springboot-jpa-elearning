<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<head>
<title>LM company | Learning Machine</title>
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
              <h2 class="title text-white">Edit profile</h2>
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
      
    <!-- Section: Doctor Details -->
    <section class="">
      <div class="container">
        <div class="section-content">
          <div class="row">
            <div class="col-xs-12 col-sm-8 col-md-8">
              <form name="form" method="post">
                <div class="icon-box mb-0 p-0">
                  <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                    <i class="fa fa-user"></i>
                  </a>
                  <h4 class="text-gray pt-10 mt-0 mb-30">Edit Profile</h4>
                </div>
                <hr>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>이메일</label>
                    <span>변경불가</span>
                    <input name="userdbEmail" class="form-control" type="email" readonly="readonly">
                  </div>
                  <div class="form-group col-md-6">
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>닉네임</label>
                    <input name="userdbNickname" class="form-control" type="text">
                  </div>
                </div>
                <div class="row">
                </div>
                <div class="form-group">
                  <button class="btn btn-dark btn-lg mt-15" type="submit">Update</button>
                </div>
              </form>
              
              <hr class="mt-30 mb-30">

              <form name="editprofile-form" method="post">
                <div class="icon-box mb-0 p-0">
                  <a href="#" class="icon icon-bordered icon-rounded icon-sm pull-left mb-0 mr-10">
                    <i class="fa fa-key"></i>
                  </a>
                  <h4 class="text-gray pt-10 mt-0 mb-30">Change Password</h4>
                </div>
                <hr>
                <div class="row">
                  <div class="form-group col-md-12">
                    <label>현재비밀번호</label>
                    <input name="userdbPassword0" class="form-control" type="text">
                    <span id="passwordCheck">입력한 비밀번호와 현재 비밀번호 일치 확인란</span>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>변경 비밀번호</label>
                    <input name="userdbPassword" class="form-control" type="text">
                  </div>
                  <div class="form-group col-md-6">
                    <label>비밀번호 확인</label>
                    <input name="userdbPassword2"  class="form-control" type="text">
                  </div>
                </div>
                <div class="form-group">
                  <button class="btn btn-dark btn-lg mt-15" type="submit">Update</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>

  </div>
</div>
  <!-- end main-content -->

	<script type="text/javascript">
		$(document).ready(function() {
			
			/*password 유호성체크 체크*/
			/*기존 비밀번호 확인하기*/

			$('[name=userdbPassword0]').keyup(function () {
				$.ajax({
					url : "${pageContext.request.contextPath}/myPage/myAccount/passwordCheck",
					type : "post",
					data : $("form[name=form]").serialize(),
					dataType : "text",
					success : function(result) {
						//0=비밀번호 일치, 1=비밀번호 불일치
						if (result == 0) {
							$('#passwordCheck').text('비밀번호가 확인되었습니다.');
						} else if (result == 1){
							$('#passwordCheck').text('비밀번호가 일치하지 않습니다. 확인바람');
						}
					},
					error : function(err) {
						alert("err : " + err);
					}
				})
			});///////
			
			
			/*password 유호성체크 체크*/
			$('[name=userdbPassword2]').keyup(function () {
				var password1 = $('[name=userdbPassword]').val();
				var password2 = $(this).val();
				
				if(password1===password2){
					$('#register').attr("disabled", false);
					$('#passwordCheck').text('비밀번호가 정확합니다.');
				}else{
					$('#register').attr("disabled", true);
					$('#passwordCheck').text('비밀번호가 다릅니다. 확인해주세요');
				}
			});
			


			/*닉네임 중복체크*/
			$('[name=userdbNickname]').keyup(function () {
				$.ajax({
					url : "${pageContext.request.contextPath}/nicknameCheck",
					type : "post",
					data : $("form[name=signUpForm]").serialize(),
					dataType : "text",
					success : function(result) {
						//0=중복, 1=사용가능
						if (result == 0) {
							$('#register').attr("disabled", true);
							$('#nickCheck').text('이미 사용중인 닉네임입니다.');

						} else if (result == 1){
							$('#register').attr("disabled", false);
							$('#nickCheck').text('사용 가능한 닉네임입니다.');
						}
					},
					error : function(err) {
						alert("err : " + err);
					}
				})
			});///////
			
			
			/*가입하기*/
			$('#register').click(function() {
				
					$.ajax({
						url : "${pageContext.request.contextPath}/signUp",
						type : "post",
						data : $("form[name=signUpForm]").serialize(),
						dataType : "text",
						success : function(result) {
							alert(result);
							if(result==1)
								alert('회원가입에 성공했습니다. 로그인 페이지로 이동합니다.');
							location.href = "${pageContext.request.contextPath}/login";
						},
						error : function(err) {
							alert("등록에 실패했습니다.");
							location.href = "${pageContext.request.contextPath}/";
						}
					})
			})


		})
	</script>


</body>
</html>