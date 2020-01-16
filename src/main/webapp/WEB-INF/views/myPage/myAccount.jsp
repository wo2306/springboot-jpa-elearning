<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<head>
<title>LM company | Learning Machine</title>
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
              <form name="form" method="post" onSubmit="return checkValid()">
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
                    <input name="userdbEmail" class="form-control" type="email" readonly="readonly" value=${item.userdbEmail}>
                  </div>
                  <div class="form-group col-md-6">
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>닉네임</label>
                    <input name="userdbNickname" class="form-control" type="text" value=${item.userdbNickname}>
                  	<span id="nickCheck">닉네임중복확인란</span>
                  </div>
                </div>
                <div class="row">
                </div>
                <div class="form-group">
                  <button class="btn btn-dark btn-lg mt-15" type="submit" id="nickBtn">Nickname Update</button>
                </div>
              </form>
              
              <hr class="mt-30 mb-30">

              <form name="formPassword" method="post" onSubmit="return checkValidPw()">
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
                    <input name="userdbPassword0" class="form-control" type="password">
                    <span id="passwordCheck">입력한 비밀번호와 현재 비밀번호 일치 확인란</span>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>변경 비밀번호</label>
                    <input name="userdbPassword1" class="form-control" type="password">
                    <span id="passwordCheck2">비밀번호를 입력하시오</span>
                  </div>
                  <div class="form-group col-md-6">
                    <label>비밀번호 확인</label>
                    <input name="userdbPassword2"  class="form-control" type="password">
                    <span id="passwordCheck3">비밀번호를 입력하시오</span>
                  </div>
                </div>
                <div class="form-group">
                  <button class="btn btn-dark btn-lg mt-15" type="submit">Password Update</button>
                  
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

	var userNickname = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.userdbNickname}';
	console.log(userNickname);

	function checkValidPw() {
		var f = window.document.formPassword;
		if ( f.userdbPassword0.value == "" ) {
	        alert( "비밀번호0를 입력해 주세요" );
			f.userdbPassword0.focus();
			return false;
		}
		if ( f.userdbPassword1.value == "" ) {
	        alert( "비밀번호1를 입력해 주세요" );
	        f.userdbPassword1.focus();
	        return false;
	    }
		if ( f.userdbPassword2.value == "" ) {
	        alert( "비밀번호2를 입력해 주세요" );
	        f.userdbPassword2.focus();
	        return false;
	    }else{
			$.ajax({
				url : "${pageContext.request.contextPath}/myPage/myAccount/pwUpdate",
				type : "post",
				data : $("form").serialize(),
				dataType : "text",
				success : function(a) {
					alert(a);
					alert('비밀번호가 수정되었습니다.');
				},
				error : function(err) {
					alert('수정에 실패했습니다.');
				}
			})
		}
	}
	
	
	function checkValid() {
		var f = window.document.form;
		if ( f.userdbNickname.value == "" ) {
			alert( "닉네임을 입력해 주세요." );
			f.userdbNickname.focus();
			return false;
		}else{
			$.ajax({
				url : "${pageContext.request.contextPath}/myPage/myAccount/nickUpdate",
				type : "post",
				data : $("form").serialize(),
				dataType : "text",
				success : function() {
					alert('수정되었습니다.');
				},
				error : function(err) {
					alert('수정에 실패했습니다.');
				}
			})
		}
	}
	
		$(document).ready(function() {
			/*password 유호성체크 체크*/
			/*기존 비밀번호 확인하기*/
			$('[name=userdbPassword0]').keyup(function () {
				$.ajax({
					url : "${pageContext.request.contextPath}/myPage/myAccount/passwordCheck",
					type : "post",
					data : $("form[name=formPassword]").serialize(),
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
			/*기존 비번이랑 다른지 체크*/
			$('[name=userdbPassword1]').keyup(function () {
				var password1 = $('[name=userdbPassword0]').val();
				var password2 = $(this).val();
				
				if(password1===password2){
					$('#register').attr("disabled", false);
					$('#passwordCheck2').text('현재 비밀번호와 다를게 없소!!! 증말 바꿀꺼요??');
				}else{
					$('#register').attr("disabled", true);
					$('#passwordCheck2').text('오 그래 지금 비밀번호와 다르군');
				}
			});
			
			
			/*password 유호성체크 체크*/
			$('[name=userdbPassword2]').keyup(function () {
				var password1 = $('[name=userdbPassword1]').val();
				var password2 = $(this).val();
				
				if(password1===password2){
					$('#register').attr("disabled", false);
					$('#passwordCheck3').text('비밀번호가 정확합니다.');
				}else{
					$('#register').attr("disabled", true);
					$('#passwordCheck3').text('비밀번호가 다릅니다. 확인해주세요');
				}
			});
			


			/*닉네임 중복체크*/
			$('[name=userdbNickname]').keyup(function () {
				var nickName = $('[name=userdbNickname]').val();
				$.ajax({
					url : "${pageContext.request.contextPath}/nicknameCheck",
					type : "post",
					data : $("form").serialize(),
					dataType : "text",
					success : function(result) {
						//0=중복, 1=사용가능
						if (result == 0) {
							if(userNickname==nickName){
								$('#nickBtn').attr("disabled", false);
								$('#nickCheck').text('현재 닉네임과 동일합니다.');
							}else{
								$('#nickBtn').attr("disabled", true);
								$('#nickCheck').text('이미 사용중인 닉네임입니다.');
							}
						} else if (result == 1){
							$('#nickBtn').attr("disabled", false);
							$('#nickCheck').text('사용 가능한 닉네임입니다.');
						}
					},
					error : function(err) {
						alert("err : " + err);
					}
				})
			});///////
		})
		


	</script>


</body>
</html>