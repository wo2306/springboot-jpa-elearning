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
		<div style="padding-left:400px; padding-top:50px;"> 
        <div class="author">
          <span class="author"><strong>글번호 : ${item.noticeNo} </strong></span>
        
          <span class="option" fxd-data="{&quot;id&quot;:20900,&quot;type&quot;:&quot;question&quot;}">
          </span>
        </div>

<div class="article_body">
	${question.classQuestionContent }
</div>
 
<div style="width: 500px; height:700px;"> 
<h4><span><strong>제목 : </strong></span><b>${item.noticeTitle}</b></h4>
<form>
<div style="border: 1px black solid; width:700px; height:500px;">${item.noticeContent}</div>
<br>
<div style="padding-left:300px;">
<input type="button" value="뒤로가기" style=" color : #FFFFFF; background : #202C45; padding : 5px 12px" onClick="location.href='${pageContext.request.contextPath}/notice'">
</form>
</div>
</div>
</div> 
</body>
</html>