<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>

    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="StudyPress | Education & Courses HTML Template"/>
    <meta name="keywords" content="academy, course, education, education html theme, elearning, learning,"/>
    <meta name="author" content="ThemeMascot"/>

    <!-- Page Title -->
    <title>StudyPress | Education & Courses HTML Template</title>

    <!-- Favicon and Touch Icons -->
    <link href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/images/favicon.png"
          rel="shortcut icon" type="image/png">
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
    <!-- <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"> -->

    <!-- CSS | Theme Color -->
    <link href="${pageContext.request.contextPath}/css/colors/theme-skin-color-set-1.css" rel="stylesheet"
          type="text/css">

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
    <style>
        .video-container {
            width: 100vw;
            height: 100vh;
            overflow: hidden;
            position: relative;
        }

        .video-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .video-container iframe {
            pointer-events: none;
        }

        .video-container iframe {
            position: absolute;
            top: -60px;
            left: 0;
            width: 100%;
            height: calc(100% + 120px);
        }

        .video-foreground {
            pointer-events: none;
        }
    </style>
</head>
<body class="has-side-panel side-panel-left fullwidth-page side-push-panel" style="background-color: #0a1116">
<div class="body-overlay"></div>
<div id="side-panel" class="dark layer-overlay overlay-white-9"
     data-bg-img="${pageContext.request.contextPath}/images/bg/bg8.jpg">
    <div class="side-panel-wrap">
        <div id="side-panel-trigger-close" class="side-panel-trigger"><a href="#"><i class="icon_close font-30"></i></a>
        </div>
        <a href="javascript:void(0)"><img alt="logo" src="${pageContext.request.contextPath}/images/logo-wide.png"></a>
        <div class="side-panel-nav mt-30">
            <div class="widget">
                <h5 class="widget-title line-bottom">${onDetail.onLecture.onLectureName}</h5>
                <ul class="list list-divider list-border">
                    <c:forEach var="dto" items="${onDetailList}" varStatus="i">
                        <li>
                            <a href="${pageContext.request.contextPath}/onLecture/view/${dto.onDetailNo}">${dto.onDetailName}</a>
                        </li>
                    </c:forEach>
                    <li>
                        <a href="${pageContext.request.contextPath}/onLecture/detail/${onDetail.onLecture.onLectureNo}">수강
                            종료 후 나가기</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="side-panel-widget mt-30">
            <div class="widget no-border">
                <ul>
                    <li class="font-14 mb-5"><i class="fa fa-phone text-theme-colored"></i> <a href="#"
                                                                                               class="text-gray">123-456-789</a>
                    </li>
                    <li class="font-14 mb-5"><i class="fa fa-clock-o text-theme-colored"></i> Mon-Fri 8:00 to 2:00</li>
                    <li class="font-14 mb-5"><i class="fa fa-envelope-o text-theme-colored"></i> <a href="#"
                                                                                                    class="text-gray">contact@yourdomain.com</a>
                    </li>
                </ul>
            </div>
            <div class="widget">
                <ul class="styled-icons icon-dark icon-theme-colored icon-sm">
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                </ul>
            </div>
            <p>Copyright &copy;2016 ThemeMascot</p>
        </div>
    </div>
</div>
<div id="wrapper" class="clearfix">
    <!-- preloader -->
    <div id="preloader">
        <div id="spinner">
            <div class="preloader-dot-loading">
                <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
            </div>
        </div>
        <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
    </div>

    <!-- Header -->
    <div id="side-panel-trigger" class="side-panel-trigger"
         style="position: absolute; top: 20px; right:20px"><a href="#"><i
            class="fa fa-bars font-40 text-gray"></i></a></div>
    <header id="header" class="header">

        <div class="header-nav">
            <div class="header-nav-wrapper navbar-scrolltofixed bg-lightest" style="text-align: center">
                <div aria-label="Justified button group" role="group" class="btn-group btn-group-justified">
                    <c:set var="index" value="${onDetailList.indexOf(onDetail)}"/>
                    <c:choose>
                        <c:when test="${prevNo eq -1}">
                            <a role="button" id="prevButton" class="btn btn-default" disabled="disabled">< 이전 강의</a>
                        </c:when>
                        <c:otherwise>
                            <a role="button" id="prevButton" class="btn btn-default"
                               href="${pageContext.request.contextPath}/onLecture/view/${prevNo}">< 이전 강의</a>
                        </c:otherwise>
                    </c:choose>
                    <a class="btn btn-default"
                       style="background-color:white; font-weight: bold">${onDetail.onDetailName}</a>

                    <c:choose>
                    <c:when test="${nextNo eq -1}">
                    <a role="button" id="nextButton" class="btn btn-default" disabled="disabled">다음 강의 > </a></div>
                </c:when>
                <c:otherwise>
                    <a role="button" id="prevButton" class="btn btn-default"
                       href="${pageContext.request.contextPath}/onLecture/view/${nextNo}">다음 강의 ></a>
                </c:otherwise>
                </c:choose>
            </div>
        </div>
    </header>

    <!-- Start main-content -->


    <div class="video-container">
        <div class="video-foreground">
            <div id="player"></div>
        </div>
    </div>
    <!-- Section: inner-header -->

    <!-- Section: About -->
</div>
<!-- end main-content -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
</div>
<script>
    var tag = document.createElement('script');
    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    function onYouTubeIframeAPIReady(fileName) {
        var player = new YT.Player('player', {
            height: '100%',
            width: '100%',
            videoId: '${onDetail.onDetailUrl}',
            playerVars: {'autoplay': 1, 'controls': 0, 'rel': 0},
            events: {
                'onStateChange': onPlayerStateChange
            }
        });
    }

    function onPlayerStateChange(event) {
        var nextNo =;
        ${nextNo}
        if (event.data === 0) {
            $.ajax({
                url: "${pageContext.request.contextPath}/sugang/complete/${onDetail.onLecture.onLectureNo}/${onDetailNo}",
                type: "get",
                dataType: "json",
                success: function (result) {
                    alert("호출성공");
                    console.log(result)
                },
                error: function (error) {
                    console.log(error)
                }
            });
            if (nextNo != -1) {
                if (confirm("학습이 종료되었습니다.\n 다음 강의로 이동하시겠습니까?")) {
                    location.href = '${pageContext.request.contextPath}/onLecture/view/${nextNo}'
                }
            } else {
                alert("모든 강의에 대한 학습이 끝났습니다. \n강의 메인페이지로 이동합니다.");
                location.href = '${pageContext.request.contextPath}/onLecture/detail/${onDetail.onLecture.onLectureNo}'
            }
        }
    }
</script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
</body>
</html>