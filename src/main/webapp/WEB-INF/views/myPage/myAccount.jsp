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
              <form name="form" method="post" >
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
                    <input name="baseNickname" type="text" value=${item.userdbNickname} style="display:none">
                  	<span id="nickCheck">닉네임중복확인란</span>
                  </div>
                </div>
                <div class="row">
                </div>
                <div class="form-group">
                  <button class="btn btn-dark btn-lg mt-15" type="button" id="nickBtn">Nickname Update</button>
                </div>
              </form>
              
              <hr class="mt-30 mb-30">

              <form name="formPassword" method="post" >
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
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>변경 비밀번호</label>
                    <input name="userdbPassword1" class="form-control" type="password">
                  </div>
                  <div class="form-group col-md-6">
                    <label>비밀번호 확인</label>
                    <input name="userdbPassword2"  class="form-control" type="password">
                  </div>
                </div>
                <div class="form-group">
                  <button class="btn btn-dark btn-lg mt-15" id="updatePwBtn" type="button" >Password Update</button>
                  
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
	$('#nickBtn').on('click',function(){
		if($('[name=userdbNickname]').val()==''){
			alert('닉네임을 입력주세요')
			$('[name=userdbNickname]').focus();
		}else{
			$.ajax({
				url : "${pageContext.request.contextPath}/myPage/myAccount/nickUpdate",
				type : "post",
				data : $("form").serialize(),
				dataType : "text",
				success : function() {
					alert('닉네임이 수정되었습니다.');
					location.replace('${pageContext.request.contextPath}/myPage/myAccount/');
				},
				error : function(err) {
					alert('이미 사용중인 닉네임입니다.');
				}
			})//////
		}	
	})///닉네임변경끝
		
	/*password 유호성체크 체크*/
	/*기존 비밀번호 확인하기*/
	$('#updatePwBtn').on('click',function(){
		if($('[name=userdbPassword0]').val()==''){
			alert('비밀번호를 입력해주세요')
			$('[name=userdbPassword0]').focus()
			return;
		}
		if($('[name=userdbPassword1]').val()==''){
			alert('비밀번호를 입력해주세요')
			$('[name=userdbPassword1]').focus()
			return;
		}
		if($('[name=userdbPassword2]').val()==''){
			alert('비밀번호를 입력해주세요')
			$('[name=userdbPassword2]').focus()
			return;
		}
		if($('[name=userdbPassword1]').val()!=$('[name=userdbPassword2]').val()){
			alert('변경 비밀번호가 일치하지 않습니다')
			return;
		}
		else{
			$.ajax({
				url : "${pageContext.request.contextPath}/myPage/myAccount/passwordCheck",
				type : "post",
				data : $("form[name=formPassword]").serialize(),
				dataType : "text",
				success : function(result) {
					//0=비밀번호 일치, 1=비밀번호 불일치
					if (result == 0) {
						$.ajax({
							url : "${pageContext.request.contextPath}/myPage/myAccount/pwUpdate",
							type : "post",
							data : $("form").serialize(),
							dataType : "text",
							success : function(result) {
								if(result==0){
									alert('수정이 완료되었습니다')
									location.replace('${pageContext.request.contextPath}/myPage/myAccount/');
								}
							},
							error : function(err) {
								alert('수정에 실패했습니다.');
							}
						})
					}if(result==1){
						alert('현재 비밀번호가 일치하지 않습니다.')
						return;
					}
				},
				error : function(err) {
					pwCheck=1;
				}
			})
		}
	})//기본비밀번호 확인끝

})//ready끝

</script>


</body>
</html>