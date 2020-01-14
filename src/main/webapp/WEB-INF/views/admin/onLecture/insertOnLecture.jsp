<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>


<head>
    <!-- Favicon and Touch Icons -->
    <link href="${pageContext.request.contextPath}/images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-72x72.png" rel="apple-touch-icon"
          sizes="72x72">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-114x114.png" rel="apple-touch-icon"
          sizes="114x114">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-144x144.png" rel="apple-touch-icon"
          sizes="144x144">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/css-plugin-collections.css" rel="stylesheet"/>
    <!-- CSS | menuzord megamenu skins -->
    <link id="menuzord-menu-skins"
          href="${pageContext.request.contextPath}/css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
    <!-- CSS | Main style file -->
    <link href="${pageContext.request.contextPath}/css/style-main.css" rel="stylesheet" type="text/css">
    <!-- CSS | Preloader Styles -->
    <link href="${pageContext.request.contextPath}/css/preloader.css" rel="stylesheet" type="text/css">
    <!-- CSS | Custom Margin Padding Collection -->
    <link href="${pageContext.request.contextPath}/css/custom-bootstrap-margin-padding.css" rel="stylesheet"
          type="text/css">
    <!-- CSS | Responsive media queries -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" type="text/css">
    <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">

    <!-- CSS | Theme Color -->
    <link href="${pageContext.request.contextPath}/css/colors/theme-skin-color-set-1.css" rel="stylesheet"
          type="text/css">

    <!-- external javascripts -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- JS | jquery plugin collection for this theme -->
    <script src="${pageContext.request.contextPath}/js/jquery-plugin-collection.js"></script>

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <!-- Page Title -->
    <title>LM company | Learning Machine | main</title>


</head>

<body class="">
<div id="wrapper" class="clearfix" style="padding-left: 400px; padding-right: 400px; padding-bottom: 100px;">

    <h1>강의 등록하기</h1>
    <hr>
    <form action="${pageContext.request.contextPath}/admin/onLecture/insert" method="post">
        <div class="form-group">
            <label>온라인 강의 명</label>
            <input type="text" class="form-control" placeholder="온라인 강의 명" name="onLectureName">
        </div>
        <div class="form-group">
            <label>강의 카테고리</label>
            <input type="text" class="form-control" placeholder="ex) java, 알고리즘, python ..." name="onLectureCategory">
        </div>
        <div class="form-group">
            <label>강의 선생님명</label>
            <input type="text" class="form-control" placeholder="ex) 장희정" name="onLectureTeacher">
        </div>
        <div class="form-group">
            <label>강의 가격</label>
            <input type="number" class="form-control" placeholder="ex) 25000" name="onLecturePrice">
        </div>
        <div class="form-group">
            <label>강의 내용설명</label>
            <input type="text" class="form-control" placeholder="강의에 대한 설명을 쓰세요" name="onLectureContent">
        </div>
        <div class="form-group">
            <label>썸네일용 강의 설명</label>
            <input type="text" class="form-control" placeholder="썸네일용 강의 설명" name="onLectureSummary">
        </div>

        <br>
        <br>
        <h3>세부 강의 등록하기</h3>
        <hr>
        <div id="detail">
            <div>
                <div class="form-group">
                    <label>세부 강의 제목</label>
                    <input id="title" type="text" class="form-control" placeholder="강의 제목을 입력하세요" name="onDetailName[]">
                </div>
                <div class="form-group">
                    <label>동영상 업로드</label>
                    <input id="file" type="file" name="onLectureFile[]">
                    <p class="help-block"></p>
                </div>
            </div>
        </div>
    </form>

    <div class="checkbox">
        <br>
        <input type="button" class="btn btn-default" value="강의 추가하기" id="addForm">&nbsp;&nbsp;
        <button type="submit" class="btn btn-default" id="submit">강의 등록 완료</button>
    </div>
</div>
</body>
<script>
    $("#submit").on('click', function () {
        var file = $('#file').get(0).files[0];
        if (file) {
            $.ajax({
                url: VIDEOS_UPLOAD_SERVICE_URL,
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(metadata),
                beforeSend: function (request) {
                    request.setRequestHeader('Authorization', 'Bearer ' + access_token);
                },
            }).done(function (data, textStatus, jqXHR) {
                self.resumableUpload({
                    url: jqXHR.getResponseHeader('Location'),
                    file: file,
                    start: 0
                });
            });
        } else {
            alert("file을 선택해주세요");
        }

    })

    var access_token = "";
    $(function () {
        $.ajax({
            url: "https://www.googleapis.com/oauth2/v4/token",
            type: "post",
            dataType: "json",
            data: {
                code: "${code}",
                client_id: "1071666857106-008okgbmnmncv02m6sgdflovhk8ih49b.apps.googleusercontent.com",
                client_secret: "YW06D8o9k2GCHceDUYpM4e7L",
                redirect_uri: "http://localhost:8888/oauth2callback",
                grant_type: "authorization_code"
            },
            success: function (result) {
                access_token = result.access_token;
            },
            error: function (error) {
                console.log(error)
            }
        })
    })

    var metadata = {
        snippet: {
            title: $("#title").val(),
            description: "Learning Machine Video Upload",
            categoryId: 22
        },
    };

    var GOOGLE_PLUS_SCRIPT_URL = 'https://apis.google.com/js/client:plusone.js';
    var CHANNELS_SERVICE_URL = 'https://www.googleapis.com/youtube/v3/channels';
    var VIDEOS_UPLOAD_SERVICE_URL = 'https://www.googleapis.com/upload/youtube/v3/videos?uploadType=resumable&part=snippet';
    var VIDEOS_SERVICE_URL = 'https://www.googleapis.com/youtube/v3/videos';
    var INITIAL_STATUS_POLLING_INTERVAL_MS = 15 * 1000;


    resumableUpload = function (options) {
        var self = this;
        var ajax = $.ajax({
            url: options.url,
            method: 'PUT',
            contentType: options.file.type,
            headers: {
                'Content-Range': 'bytes ' + options.start + '-' + (options.file.size - 1) + '/' + options.file.size
            },
            xhr: function () {
                var xhr = $.ajaxSettings.xhr();
                if (xhr.upload) {
                    xhr.upload.addEventListener('progress', function (e) {
                            if (e.lengthComputable) {
                                var bytesTransferred = e.loaded;
                                var totalBytes = e.total;
                                var percentage = Math.round(100 * bytesTransferred / totalBytes);
                                $('.progress').show();
                                $(".progress-bar").attr({
                                    'style': 'width :' + percentage + '%',
                                });
                            }
                        },
                        false
                    );
                }
                return xhr;
            },
            processData: false,
            data: options.file
        });

        ajax.done(function (response) {
            $("#uploading").html("업로딩중 잠시만 기다려 주세요!");
            $('.progress-bar').addClass("progress-bar-striped active");
            videoId = response.id;
            self.checkVideoStatus(videoId, INITIAL_STATUS_POLLING_INTERVAL_MS);
        });
    }
    checkVideoStatus = function (videoId, waitFornextPoll) {
        var self = this;
        $.ajax({
            url: VIDEOS_SERVICE_URL,
            method: 'GET',
            headers: {
                Authorization: 'Bearer ' + access_token
            },
            data: {
                part: 'status,processingDetails,player',
                id: videoId
            }
        }).done(function (response) {
            var uploadStatus = response.items[0].status.uploadStatus;
            var embed = response.items[0].player.embedHtml;
            console.log(embed);
            console.log(uploadStatus);
            if (uploadStatus == 'uploaded') {
                setTimeout(function () {
                    self.checkVideoStatus(videoId, waitFornextPoll * 2);
                }, waitFornextPoll);
            } else {
                if (uploadStatus == 'processed') {
                    console.log("finally completed!");
                    $("#uploading").html("업로드 완료!!");
                    $("#uploading").hide();
                    $(".progress-bar").removeClass("progress-bar-striped active");
                    $('.container').find('.embed-responsive').append(embed);

                }
            }
        });
    }
    $(function () {
        $('#addForm').click(function () {
            var str = "";
            str += '<hr><div><div><label>세부 강의 제목</label><input type="text" class="form-control" placeholder="강의 제목을 입력하세요"';
            str += 'name="onDetailName"></div><div class="form-group"><br><label>동영상 업로드</label><input type="file" name="onLectureFile">';
            str += '<p class="help-block"></p></div></div>';
            $("#detail").parent().append(str);
        });

    });

</script>
</html>