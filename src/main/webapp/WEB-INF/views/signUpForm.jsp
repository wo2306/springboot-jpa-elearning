<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | SignUp</title>

</head>

<body class="">

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
							<h2 class="title text-white">Forms</h2>
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

		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="heading-line-bottom">
							<h4 class="heading-title">Don't have an Account? Register
								Now</h4>
						</div>
						<form method="post" name="signUpForm" onsubmit="return checkValid()">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" style="display: none">
							<div class="row">
								<div class="form-group col-md-12">
									<label>Id : Email Address</label> <input type="email"
										class="form-control" name="userdbEmail"> <input
										type="button" id="idCheck" value="아이디중복확인"> <span
										id="idResult">id중복 체크를 해주세요</span> <span id="emailResult">email
										타입으로 입력해주세요</span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-6">
									<label>Choose Password</label> <input type="password"
										class="form-control" name="userdbPassword">
								</div>
								<div class="form-group col-md-6">
									<label>Re-enter Password</label> <input type="password"
										class="form-control" name="userdbPassword2"> <span
										id="passwordCheck">비밀번호를 입력해주세요</span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-6">
									<label>Nick Name</label> <input type="text"
										class="form-control" name="userdbNickname"
										placeholder="닉네임을 입력해주세요"> <span id="nickCheck">닉네임을
										입력해주세요</span>
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-default" id="register"
									>회원가입</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</section>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			
			    
			
			/*
				email 키업시 일어나는 이벤트
				1. id중복체크 알람
				2. 이메일타입 유효성체크
			*/
			$('[name=userdbEmail]').keyup(function () {
				$('#register').attr("disabled", true);
				$('#idResult').text('id중복 체크를 해주세요');
				var email = $(this).val();
				var exptext = /^[_a-zA-Z0-9]+([-+.][_a-zA-Z0-9]+)*@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/i;
					if(exptext.test(email)==false){
						$('#emailResult').show();
						$('#emailResult').text('email 타입으로 적어줘');
						$('#idCheck').attr("disabled", true);
					}else{
						$('#emailResult').hide();
						$('#idCheck').attr("disabled", false);
					}
			});/////////키업시일어나는 이벤트
			
			/*아이디 중복체크*/
			$('#idCheck').click(function() {
				$.ajax({
					url : "${pageContext.request.contextPath}/idCheck",
					type : "post",
					data : $("form[name=signUpForm]").serialize(),
					dataType : "text",
					success : function(result) {
							//0=중복, 1=사용가능
						if (result==0) {
							alert('이미 사용중인 이메일입니다.');
							$('#register').attr("disabled", true);
							$('#idResult').text('id중복 체크를 해주세요');
						} else if(result==1){
							alert('사용가능합니다.');
							$('#register').attr("disabled", false);
							$('#idCheck').attr("disabled", false);
							$('#idResult').text('사용가능한 id입니다');
						}
					},
					error : function(err) {
						alert("err : " + err);
					}
				})
			});///아이디 중복체크
			
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
			});//////password 유효성체크
			


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
			});///////닉네임
			

})//레디 끝

	
	function checkValid() {
		var f = window.document.signUpForm;
		if ( f.userdbEmail.value == "" ) {
	        alert( "이메일을 입력해주세요" );
			f.userdbEmail.focus();
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
		})////가입하기끝
	}//else 끝
}//checkValid 끝
	</script>



</body>
</html>