<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Learning Machine" />
<meta name="keywords" content="academy, course, education, learning machine, elearning, learning, 
e-learning, code, coding, java, javascript, spring, 인터넷강의, 코딩, 코딩교육, 자바, 자바스크립트" />
<meta name="author" content="LM company" />

<!-- Page Title -->
<title>LM company | Learning Machine</title>

<!-- Favicon and Touch Icons -->
<link href="${pageContext.request.contextPath}/images/favicon.png" rel="shortcut icon" type="image/png">
<link href="${pageContext.request.contextPath}/images/apple-touch-icon.png" rel="apple-touch-icon">
<link href="${pageContext.request.contextPath}/images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
<link href="${pageContext.request.contextPath}/images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
<link href="${pageContext.request.contextPath}/images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/css-plugin-collections.css" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link id="menuzord-menu-skins" href="${pageContext.request.contextPath}/css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="${pageContext.request.contextPath}/css/style-main.css" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="${pageContext.request.contextPath}/css/preloader.css" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="${pageContext.request.contextPath}/css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- CSS | Theme Color -->
<link href="${pageContext.request.contextPath}/css/colors/theme-skin-color-set-1.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="${pageContext.request.contextPath}/js/jquery-plugin-collection.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">

<SCRIPT language=javascript>
function checkValid() {
    var f = window.document.writeForm;
		
	if ( f.modelNum.value == "") {
	    alert( "모델번호를 입력해 주세요." );
	    f.model_num.focus();
		return false;
    }
	if ( f.modelName.value == "" ) {
		alert( "모델이름을 입력해 주세요." );
		f.model_name.focus();
		return false;
	}
	if ( f.price.value == "" ) {
		alert( "가격을 입력해 주세요." );
		f.price.focus();
		return false;
	}
	if ( f.description.value == "" ) {
        alert( "상품 설명을 입력해 주세요." );
        f.description.focus();
        return false;
    }
	if ( f.password.value == "" ) {
        alert( "비밀번호를 입력해 주세요" );
        f.password.focus();
        return false;
    }
	
    return true;
}
</SCRIPT>


</HEAD>
<BODY>
 
<form name="writeForm" method="post" action="${pageContext.request.contextPath}/qna/insert"  >

<div class="container pt-80 pb-60">
		<div class="section-content">
			<div class="row">
				<div class="col-md-12">
				    <div class="media-content">
<table class="table table-striped table-schedule">
						<thead>
							<tr class="bg-theme-colored">
								<th colspan='2'><p align="center"><font color="white" size="3">질문 등록</p></th>
								
							</tr>
						</thead>
						<tbody>
	</tbody>
	<tr>
        <td >
            <p align="right"><b><span style="font-size:11pt;">제목</span></b></p>
        </td>
        <td><b><span style="font-size:11pt;">
		<input type=text name="classQuestionTitle" size="80"></span></b></td>
    </tr>

    <tr>
        <td >
            <p align="right"><b><span style="font-size:11pt;">내용</span></b></p>
        </td>
        <td ><b><span style="font-size:11pt;">
		<textarea name="classQuestionContent"  rows="25" cols="80"></textarea></span></b></td>
    </tr>
   
    <tr style="display:none">
        <td>
            <p align="right"><b><span style="font-size:9pt;">비밀번호</span></b></p>
        </td>
        <td >
        	<b><span style="font-size:9pt;">
        		<input type=password name="password" size="12">   (질문 수정, 삭제시 필요합니다.)
        	   </span></b>
        </td>
    </tr>
    <tr>
        <td ><b><span><input type=submit value=글쓰기  style="font-size:11pt; background-color: #fff; border-color: #dbdbdb; border-width: 1px; color: #363636;"> 
        <input type=reset value=다시쓰기 style="font-size:11pt; background-color: #fff; border-color: #dbdbdb; border-width: 1px; color: #363636;"></span></b></td>
    </tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	</div>
	</form>
	

<hr>
<div align=right><span style="font-size:9pt;">&lt;<a href="${pageContext.request.contextPath}/qna/list" style="text-decoration:none;">리스트로 돌아가기</a>&gt;</span></div>

</BODY>
</HTML>




     
      
</body>
</html>