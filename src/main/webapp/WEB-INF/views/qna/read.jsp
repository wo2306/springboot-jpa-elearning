<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<div id="wrapper" class="clearfix">
<section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="${pageContext.request.contextPath}/images/banner/qna3.jpg">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title text-white">Questions List Detail</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">Questions List</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<div class="container">

    <!-- Textblock -->
    <div class="esc-heading heading-line-bottom lr-line left-heading">
        <span class="text-highlight light" style="font-size: 25px;"> 작성자 : ${question.userdb.userdbNickname }</span>
    </div>
    <div class="row">
        <div class="col-md-12">
            <p>
                ${question.classQuestionContent }

            </p>
        </div>

    </div>
    <hr>

    <c:forEach items="${answers }" var="answer">
    <div class="esc-heading heading-line-bottom lr-line left-heading">
        <span class="text-highlight light" style="font-size: 25px;"> 답변 </span> <p>
        <span class="text-highlight light" style="font-size: 20px;"> 작성자 :${answer.userdb.userdbNickname }  </span>
    </div>
    <div class="row">
        <div class="col-md-12">
            <p>
               ${answer.classAnswerContent }
            </p>
        </div>
    </div>
    </c:forEach>
    
    
    <div class="col-md-6">

        <div class="heading-line-bottom">
            <span class="text-highlight light" style="font-size: 25px;">답변하기</span>
        </div>
        
        
        <form action="${pageContext.request.contextPath}/qna/answerInsert/" name="classAnswer">

            <div class="row">
                <div class="form-group col-md-12">
                    <label>내 용</label>
                    <input type="text" class="form-control" name="classAnswerContent">
                    <input type="hidden" value="${question.classQuestionNo }" name="classQuestion.classQuestionNo">
                	
                </div>
            </div>

            <div class="form-group">
                <button type="submit" id="answerInsert" class="btn btn-default">답글 입력</button>
            </div>
        </form>
        <br>
        <a href="/qna/list/1" style="text-decoration:none;">리스트로 돌아가기</a>
    </div>

</div>
</div>
<script>
   
</script>

</body>
</html>