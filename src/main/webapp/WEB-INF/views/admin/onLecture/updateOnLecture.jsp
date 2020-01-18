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
                                <li><a href="#">온라인 강의 수정</a></li>
                                <li class="active text-gray-silver"> - 온라인 강의들을 수정할 수 있는 페이지입니다.</li>
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
                            <h4>온라인 강의 수정</h4>
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
                    <form id="onLectureForm" action="${pageContext.request.contextPath}/admin/onLecture/update" method="post">
                        <div class="form-group">
                            <label>온라인 강의명</label>
                            <input type="hidden" class="form-control" placeholder="강의번호"
                                   name="onLectureNo" value="${onLecture.onLectureNo}">
                            <input type="text" class="form-control" placeholder="온라인 강의 명" name="onLectureName"
                                   value="${onLecture.onLectureName}">
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
                                   name="onLectureTeacher" value="${onLecture.onLectureTeacher}">
                        </div>
                        <div class="form-group">
                            <label>강의 가격</label>
                            <input type="number" class="form-control" placeholder="ex) 25000"
                                   name="onLecturePrice" value="${onLecture.onLecturePrice}">
                        </div>
                        <div class="form-group">
                            <label>강의 내용 설명</label>
                            <textarea class="form-control" name="onLectureContent" id="summernote" rows="7"
                                      placeholder="강의에 대한 설명을 쓰세요">${onLecture.onLectureContent}</textarea>
                        </div>
                        <div class="form-group">
                            <label>썸네일용 강의 설명</label>
                            <input type="text" class="form-control" placeholder="썸네일용 강의 설명"
                                   name="onLectureSummary" value="${onLecture.onLectureSummary}">
                        </div>

                        <br>
                        <br>
                        <h4>세부 강의 수정하기</h4>
                        <hr>
                        <c:forEach items="${list}" var="detail">
                            <div id="detail">
                                <div>
                                    <div class="form-group">
                                        <label>세부 강의 제목</label>
                                        <input id="title" type="text" class="form-control"
                                               placeholder="강의 제목을 입력하세요" name="onDetailName"
                                               value="${detail.onDetailName}">
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </form>

                    <div class="checkbox">
                        <br>
                        <button type="button" class="btn btn-dark" id="submit">강의 수정 완료</button>&nbsp;&nbsp;
                        <button type="button" class="btn btn-dark" id="outInsert">나가기</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>


</body>
<script>
    $("#submit").click(function () {
        $("#onLectureForm").submit();
    });
    $(function () {
        $('#outInsert').click(function () {
            location.href = '${pageContext.request.contextPath}/admin/onLecture/all/keyword/1'
        })

        $('#summernote').summernote({
            height: 300,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
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


</script>
</html>