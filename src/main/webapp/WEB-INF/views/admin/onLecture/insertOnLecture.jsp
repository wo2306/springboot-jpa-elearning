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
    <script src="https://api.dmcdn.net/all.js"></script>
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
                    <form id="onLectureForm" action="${pageContext.request.contextPath}/admin/onLecture/insert"
                          enctype="multipart/form-data" method="post">
                        <div class="form-group">
                            <label>온라인 강의명</label>
                            <input type="text" class="form-control" placeholder="온라인 강의 명" name="onLectureName">
                        </div>
                        <div class="form-group">
                            <label>강의 카테고리</label>
                            <select name="onLectureCategory" class="form-control">
                                <option>웹개발</option>
                                <option>모바일앱</option>
                                <option>게임개발</option>
                                <option>알고리즘</option>
                                <option>데이터사이언스</option>
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
                            <label>강의 요약 설명</label>
                            <input type="text" class="form-control" placeholder="썸네일용 강의 설명"
                                   name="onLectureSummary">
                        </div>
                        <div class="form-group">
                            <label>강의 썸네일용 이미지</label><br>
                            <input id="thumbnail" type="file" name="thumbnail">
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
                                    <input class="file" type="file" name="onLectureFile">
                                    <input type="hidden" name="videoLength"/>
                                    <input type="hidden" name="detailUrl"/>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="checkbox">
                        <br>
                        <input type="button" class="btn btn-dark" value="강의 추가하기" id="addForm">&nbsp;&nbsp;
                        <button type="button" class="btn btn-dark" id="submit">동영상 업로드</button>&nbsp;&nbsp;
                        <button type="button" class="btn btn-dark" id="formSubmit">강의 등록하기</button>&nbsp;&nbsp;
                        <button type="button" class="btn btn-dark" id="outInsert">나가기</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>


</body>
<script>
    $("#submit").on('click', function () {
        var fileList = $("input[name=onLectureFile]").get();
        var videoLengthList = $("input[name=videoLength]").get();
        var urlList = $("input[name=detailUrl]").get();
        arrSize = $("input[name=onLectureFile]").length;
        for (let i = 0; i < arrSize; i++) {
            var file = fileList[i].files[0];
            var data = new FormData()
            data.append('onLectureFile', file);
            if (file) {
                $.ajax({
                    url: upload_url,
                    type: "post",
                    dataType: "json",
                    data: data,
                    contentType: false,
                    processData: false,
                    success: function (result) {
                        videoLengthList[i].value = Math.floor(result.duration / 1000) + '분';
                        callurl = result.url;
                        $.ajax({
                            url: "https://api.dailymotion.com/me/videos",
                            type: "post",
                            dataType: "json",
                            data: {
                                url: callurl
                            },
                            beforeSend: function (xhr) {
                                xhr.setRequestHeader('Authorization', 'Bearer ' + access_token)
                            },
                            success: function (result) {
                                var videoid = result.id;
                                $.ajax({
                                    url: "https://api.dailymotion.com/video/" + videoid,
                                    type: "post",
                                    dataType: "json",
                                    data: {
                                        title: 'Learning Machine - video upload test',
                                        tags: 'dailymotion,api,sdk,test',
                                        channel: 'videogames',
                                        published: 'true'
                                    },
                                    beforeSend: function (xhr) {
                                        xhr.setRequestHeader('Authorization', 'Bearer ' + access_token)
                                    },
                                    success: function (result) {
                                        console.log(result)
                                        urlList[i].value = result.id;
                                    },
                                })
                            },
                        })
                    },
                })
            } else {
                alert("file을 선택해주세요");
            }
        }
    })


    $("#formSubmit").click(function () {
        $("#onLectureForm").submit();
    })

    var access_token = "";
    var upload_url = "";
    $(function () {
        $('#addForm').click(function () {
            var str = "";
            str += '<hr><div><div><label>세부 강의 제목</label><input type="text" class="form-control" placeholder="강의 제목을 입력하세요"';
            str += 'name="onDetailName"></div><div class="form-group"><br><label>동영상 업로드</label><br><input type="file" class="file" name="onLectureFile">';
            str += '<p class="help-block"></p><input type="hidden" name="videoLength"/><input type="hidden" name="detailUrl"/></div></div>';
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
        });
    })

    $(function () {
        DM.init({
            apiKey: '8e8896bcab8f31041dc3',
            apiSecret: 'c5c26cdec546f2f5fb757aab5a86e969127e26f2',
            status: true, // check login status
            cookie: true // enable cookies to allow the server to access the session
        });
        DM.login(function (response) {
            if (response.session) {
                access_token = response.session.access_token;
                DM.api('/file/upload', function (response) {
                    upload_url = response.upload_url;
                    ;
                });
            } else {
                alert('로그인에 실패하여 강의 리스트 화면으로 되돌아갑니다');
                location.href = '${pageContext.request.contextPath}/admin/onLecture/all/keyword/1'
            }
        });
    })

</script>
</html>