<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

    <!-- Page Title -->
    <title>LM company | Learning Machine | main</title>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <![endif]-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <style>
        #out {
            horiz-align: center;
            text-align: center;
        }

        label {
            font-weight: bold;
        }

        #in {
            margin: auto;
            width: 50%;
        }
    </style>
</head>

<body class="">
<div id="wrapper" class="clearfix">

    <!-- Start main-content -->
    <div class="main-content">

        <!-- Section: inner-header -->
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="http://placehold.it/1920x1280">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">온라인 강의 등록</a></li>
                                <li class="active text-gray-silver"> - 온라인 강의들을 등록할 수 있는 페이지입니다.</li>
                                <!-- Topbar Search -->
                                <li>
                                    <form name="searchForm" method="post" onsubmit="return searchform()">
                                        <div class="input-group" style="padding-left: 730px">
                                            <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
                                                <option value="all">전체</option>
                                                <option value="category">카테고리</option>
                                                <option value="name">강의명</option>
                                                <option value="teacher">강사명</option>
                                            </select>
                                            <input id="keyword" type="text" name="value" style="padding-left: 10px"
                                                   class="form-control bg-light border-0 small"
                                                   placeholder="Search for..." aria-label="Search"
                                                   aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit" id="search">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </li>
                            </ol>
                            <br>
                            <h4>온라인 강의 등록</h4>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: About -->
        <section class="">
            <div class="container">
                <div class="section-content">
                    <div class="row" id="out">

                    </div>
                    <hr>
                    <form id="onLectureForm" action="${pageContext.request.contextPath}/onLecture/insert" method="post">
                        <div class="form-group">
                            <label>온라인 강의명</label>
                            <input type="text" class="form-control" placeholder="온라인 강의 명" name="onLectureName">
                        </div>
                        <div class="form-group">
                            <label>강의 카테고리</label>
                            <select name="onLectureCategory" class="form-control">
                                <option>---카테고리 선택---</option>
                                <option>웹개발</option>
                                <option>모바일앱</option>
                                <option>게임개발</option>
                                <option>알고리즘</option>
                                <option>데이터베이스</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>강사명</label>
                            <input type="text" class="form-control" placeholder="ex) 장희정"
                                   name="onLectureTeacher">
                        </div>
                        <div class="form-group">
                            <label>강의 가격</label>
                            <input type="number" class="form-control" placeholder="ex) 25000"
                                   name="onLecturePrice">
                        </div>
                        <div class="form-group">
                            <label>강의 내용 설명</label>
                            <textarea class="form-control" name="onLectureContent" id="summernote" rows="7"
                                      placeholder="강의에 대한 설명을 쓰세요"></textarea>
                        </div>
                        <div class="form-group">
                            <label>썸네일용 강의 설명</label>
                            <input type="text" class="form-control" placeholder="썸네일용 강의 설명"
                                   name="onLectureSummary">
                        </div>

                        <br>
                        <br>
                        <h4>세부 강의 등록하기</h4>
                        <hr>
                        <div id="detail">
                            <div>
                                <div class="form-group">
                                    <label>세부 강의 제목</label>
                                    <input id="title" type="text" class="form-control"
                                           placeholder="강의 제목을 입력하세요" name="onDetailName">
                                </div>
                                <div class="form-group">
                                    <label>동영상 업로드</label>
                                    <br>
                                    <input id="file" class="file" type="file" name="onLectureFile">
                                    <input type="hidden" id="videoLength" name="videoLength" value=""/>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="detailUrl" name="detailUrl" value=""/>
                    </form>

                    <div class="checkbox">
                        <br>
                        <input type="button" class="btn btn-dark" value="강의 추가하기" id="addForm">&nbsp;&nbsp;
                        <button type="button" class="btn btn-dark" id="submit">강의 등록 완료</button>&nbsp;&nbsp;
                        <button type="button" class="btn btn-dark" id="outInsert">나가기</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>


</body>
<script>
    document.querySelector('.file').addEventListener('change', function () {
        var vid = document.createElement('video');
        var fileURL = URL.createObjectURL(this.files[0]);
        vid.src = fileURL;
        vid.ondurationchange = function () {
            console.log(this.duration);
            dur = this.duration;
            $("#videoLength").val(Math.floor(dur) + '분')
        };
    });

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
                this.resumableUpload({
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
            title: "test",
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
            videoId = response.id;
            this.checkVideoStatus(videoId, INITIAL_STATUS_POLLING_INTERVAL_MS);
        });
    }

    checkVideoStatus = function (videoId, waitFornextPoll) {
        $.ajax({
            url: VIDEOS_SERVICE_URL,
            method: 'GET',
            headers: {
                Authorization: 'Bearer ' + accessToken
            },
            data: {
                part: 'status,processingDetails,player',
                id: videoId
            }
        }).done(function(response){
            var uploadStatus = response.items[0].status.uploadStatus;
            var embed = response.items[0].player.embedHtml;
            console.log(embed);
            console.log(uploadStatus);
            if(uploadStatus == 'uploaded'){
                setTimeout(function(){
                    this.checkVideoStatus(videoId, waitFornextPoll * 2);
                }, waitFornextPoll);
            }else{
                if(uploadStatus == 'processed'){
                    console.log("finally completed!");
                    $("#uploading").hide();
                    $(".progress-bar").removeClass("progress-bar-striped active");
                    $('.container').find('.embed-responsive').append(embed);
                }
            }
        });
    },


        $(function () {
            $('#addForm').click(function () {
                var str = "";
                str += '<hr><div><div><label>세부 강의 제목</label><input type="text" class="form-control" placeholder="강의 제목을 입력하세요"';
                str += 'name="onDetailName"></div><div class="form-group"><br><label>동영상 업로드</label><br><input type="file" name="onLectureFile">';
                str += '<p class="help-block"></p><input type="hidden" name="videoLength" value=""/></div></div>';
                $("#detail").parent().append(str);
            });

            $('#outInsert').click(function () {
                location.href = '${pageContext.request.contextPath}/admin/onLecture/all/keyword/1'
            })
            $('#summernote').summernote({
                height: 300,                 // set editor height
                minHeight: null,             // set minimum height of editor
                maxHeight: null,             // set maximum height of editor
                focus: true,
                callbacks: {
                    onImageUpload: function (files, editor, welEditable) {
                        for (var i = files.length - 1; i >= 0; i--) {
                            sendFile(files[i], this);
                        }
                    },
                    onMediaDelete: function (files) {
                        var filename = files.attr('src').split('/')[5];
                        deleteFile(filename);
                    }
                }
            });

            function sendFile(file, el) {
                var form_data = new FormData();
                form_data.append('file', file);
                $.ajax({
                    data: form_data,
                    type: "POST",
                    url: '${pageContext.request.contextPath}/uploadImage',
                    cache: false,
                    contentType: false,
                    enctype: 'multipart/form-data',
                    processData: false,
                    success: function (url) {
                        $(el).summernote('editor.insertImage', url);
                    }
                });
            }

            function deleteFile(file) {
                $.post('${pageContext.request.contextPath}/deleteImage', {'filename': file});
            }
        });

</script>
</html>