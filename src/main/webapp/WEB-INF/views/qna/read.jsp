<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>


<!-- Page Title -->
<title>LM company | Learning Machine</title>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>

        <div class="author">
          <span class="author"><strong>작성자 : ${question.userdb.userdbNickname } </strong></span>
        
          <span class="option" fxd-data="{&quot;id&quot;:20900,&quot;type&quot;:&quot;question&quot;}">
          </span>
        </div>

<div class="article_body">
	${question.classQuestionContent }
</div>
  
<hr>
<h4><span style="color:red">A.</span><b>답변하기</b></h4>
<form >
<textarea name="classAnswerContent"  rows="17" cols="70"></textarea><br>
<button style=" color : #363636; background : #FFFFFF; padding : 5px 12px">답변 입력</button>
</form>
<button disabled="" style=" color : #FFFFFF; background : #FF7867; padding : 5px 12px">로그인 시 답변을 제출할 수 있습니다.</button>
 
</body>
</html>