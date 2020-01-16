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
<section class="bg-white-f7">
    <div class="container pb-0">
        <div class="section-title">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="text-center">

                        <h2 class="title">${question.classQuestionTitle }</h2>
                        <p>등록일 : ${question.classQuestionRegdate }</p>
                    </div>
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

    <div class="col-md-6">

        <div class="heading-line-bottom">
            <span class="text-highlight light" style="font-size: 25px;">답변하기</span>
        </div>
        <form action="#">

            <div class="row">
                <div class="form-group col-md-12">
                    <label>내 용</label>
                    <input type="text" class="form-control" id="answerContent">
                    <input type="hidden" value="${question.classQuestionNo }" id="classQuestionNo">
                </div>
            </div>

            <div class="form-group">
                <button type="submit" id="answerInsert" class="btn btn-default">답글 입력</button>
            </div>
        </form>
        <br>
        <a href="/qna/list" style="text-decoration:none;">리스트로 돌아가기</a>
    </div>


</div>
<script>
    $("#answerInsert").on('click', function() {
        var answerContent=$("#answerContent").val();
        var questionNo = $("#classQuestionNo").val();

        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/qna/answerInsert",
            dataType: "json",
            success: function (result) {

            },
            error: function (err) {
                console.log("통신실패!!!! err : " + err);
            }
        });
    });
</script>

</body>
</html>