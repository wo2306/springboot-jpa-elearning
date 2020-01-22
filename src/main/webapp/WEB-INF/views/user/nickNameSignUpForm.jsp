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
                </div>
                <div class="row">
                  <div class="form-group col-md-6">
                    <label>닉네임</label>
                    <input id="kakaoNickname" name="userdbNickname" type="text" class="form-control" value=${list[1]}>
                  	<span id="nickCheck">닉네임중복확인란</span>
                  </div>
                </div>
                <div class="row">
                </div>
                <div class="form-group">
					<input type="text" value=${list[0]} name="id" id="kakaoId" style="display: none;">
					<input id="password" name="password" value="1234" type="password" style="display: none">
					<input type="hidden" id="kakaoToken" value=${list[2]} name="${_csrf.parameterName}" style="display:none">
                  <button class="btn btn-dark btn-lg mt-15" id="nickBtn"  type="button" onClick="javascript:checkValid()">Nickname Update</button>
                </div>
              </form>
              
              <hr class="mt-30 mb-30">

            </div>
          </div>
        </div>
      </div>
    </section>

  </div>
</div>
  <!-- end main-content -->

	<script type="text/javascript">

		var f = window.document.form;

		$(function(){ 
				/*닉네임 중복체크*/
				$('[name=userdbNickname]').keyup(function () {
					var nickName = $('[name=userdbNickname]').val();
					$.ajax({
						url : "${pageContext.request.contextPath}/user/nicknameCheck",
						type : "post",
						data : $("form").serialize(),
						dataType : "text",
						success : function(result) {
							//0=중복, 1=사용가능
							if (result == 0) {
									$('#nickBtn').attr("disabled", true);
									$('#nickCheck').text('이미 사용중인 닉네임입니다.');
							} else if (result == 1){
								$('#nickBtn').attr("disabled", false);
								$('#nickCheck').text('사용 가능한 닉네임입니다.');
							}
						},
						error : function(request, status, error) {
				            alert(request.status + ": " + request.responseText + " : " + error + "오류 발생");
				         }
					})
				});
		});/////////////
			
	function checkValid() {
		if ( f.kakaoNickname.value == "" ) {
			alert( "닉네임을 입력해 주세요." );
			f.kakaoNickname.focus();
			return false;
		}else{
			$.ajax({
				url : "${pageContext.request.contextPath}/user/kakaoLogin",
				type : "post",
				data : $("form").serialize(),
				dataType : "text",
				success : function(result) {
					$("form[name=form]").attr("action", "${pageContext.request.contextPath}/loginCheck");
					if(result==0){
                      	$("form[name=form]").submit();
					}else if(result==2){
                      	$("form[name=form]").submit();
					}
				},
				error : function(err) {
					alert("등록에 실패했습니다.");
					location.href = "${pageContext.request.contextPath}/";
				}
			})
		}
	}

	////////////////////////////
$(function(){ 
	function loginAjax() {
		/*로그인하기*/
				$.ajax({
					url : "${pageContext.request.contextPath}/user/kakaoLogin",
					type : "post",
					data : $("form").serialize(),
					dataType : "text",
					success : function(result) {
						$("form[name=form]").attr("action", "${pageContext.request.contextPath}/loginCheck");
						if(result==0){
	                      	$("form[name=form]").submit();
						}else if(result==2){
	                      	$("form[name=form]").submit();
						}
					},
					error : function(err) {
						alert("등록에 실패했습니다.");
						location.href = "${pageContext.request.contextPath}/";
					}
				})
		}////로그인하기
})	


	</script>


</body>
</html>