<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
    <style>
        #out {
            horiz-align: center;
            text-align: center;
        }
        .pagination {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>

<body class="">
<div id="wrapper" class="clearfix">
    <!-- Start main-content -->
    <div class="main-content bg-lighter">
        <!-- Section: inner-header -->
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="${pageContext.request.contextPath}/images/banner/onlist.jpg">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title text-white">온라인 강의</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">온라인 강의</a></li>
                                <li class="active text-gray-silver">강의 리스트</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: Course gird -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-9 blog-pull-right" id-="out">
                        <div class="row">
                            <c:forEach var="dto" items="${list}">
                                <div class="col-sm-6 col-md-4">
                                    <div class="service-block bg-white">
                                        <div class="thumb"><img alt="featured project"
                                                                src="${pageContext.request.contextPath}/resources/images/onLecture/${dto.onLectureNo}.png"
                                                                style="width:265px; height: 195px;"
                                                                class="img-fullwidth">
                                            <h4 class="text-white mt-0 mb-0"><span class="price"><fmt:formatNumber
                                                    value="${dto.onLecturePrice*(100-dto.onLectureDiscount)/100}"
                                                    pattern="₩#,###"/></span></h4>
                                        </div>
                                        <div class="content text-left flip p-25 pt-0">
                                        <input type="hidden" id="lectureno" value=${dto.onLectureNo}>
                                            <h5 style="font-weight: bold; height: 50px"
                                                class="line-bottom mb-10">${dto.onLectureName}</h5>
                                            <p style="height: 150px">${dto.onLectureSummary}</p>
                                            <div> 
                                            <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" style="margin-top: -30px;"
                                               href="${pageContext.request.contextPath}/onLecture/detail/${dto.onLectureNo}">강의 상세 보기</a>
                                             &nbsp
                                             <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" value="wishlist" 
                                             id=${dto.onLectureNo} style="margin-top: -30px;">wishlist</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-sm-12" id="paginationList">
                                <nav >
                                    <ul class="pagination theme-colored xs-pull-center m-0" id="in">
                                        <c:if test="${page.totalPages ne 1}">
                                            <c:choose>
                                                <c:when test="${page.hasPrevious() eq true}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/onLecture/search/${command}/${keyword}/${page.number}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/onLecture/search/${command}/${keyword}/${page.number+1}"
                                                           aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                        </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <li class="active"><a
                                                                href="${pageContext.request.contextPath}/onLecture/search/${command}/${keyword}/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li>
                                                            <a href="${pageContext.request.contextPath}/onLecture/search/${command}/${keyword}/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/onLecture/search/${command}/${keyword}/${page.number+2}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span>
                                                        </a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/onLecture/search/${command}/${keyword}/${page.number+1}"
                                                           aria-label="Next"> <span aria-hidden="true">다음</span>
                                                        </a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-3">
                        <div class="sidebar sidebar-left mt-sm-30">
                            <div class="widget">
                                <h5 class="widget-title line-bottom">Search <span
                                        class="text-theme-color-2">Courses</span></h5>
                                <div class="search-form">
                                    <form method="post" onsubmit="return searchFrm()">
                                        <div class="input-group">
                                            <input type="text" placeholder="강사명 또는 강의명 입력"
                                                   id="searchText" class="form-control search-input">
                                            <span class="input-group-btn">
    <button type="button" class="btn search-button" onclick="return searchFrm()"><i class="fa fa-search"></i></button>
    </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title line-bottom">Course <span
                                        class="text-theme-color-2">Categories</span></h5>
                                <div class="categories">
                                    <ul class="list list-border angle-double-right">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/onLecture/search/category/웹개발/1">웹개발(<span
                                                    id="ct4">0</span>)</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/onLecture/search/category/모바일앱/1">모바일앱(<span
                                                    id="ct2">0</span>)</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/onLecture/search/category/게임개발/1">게임개발(<span
                                                    id="ct0">0</span>)</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/onLecture/search/category/알고리즘/1">알고리즘(<span
                                                    id="ct3">0</span>)</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/onLecture/search/category/데이터사이언스/1">데이터사이언스(<span
                                                    id="ct1">0</span>)</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="widget">
                                <h5 class="widget-title line-bottom">Latest <span
                                        class="text-theme-color-2">Course</span></h5>
                                <div class="latest-posts" id="latest-posts">
                                </div>
                            </div>

                        </div>


                    </div>
                </div>

            </div>
        </section>
    </div>
</div>
<!-- end main-content -->
<script>
    $(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/onLecture/latest",
            type: "post",
            dataType: "json",
            success: function (result) {
                var str = ""
                $.each(result, function (key, val) {
                    str += "<article class=\"post media-post clearfix pb-0 mb-10\">\n" +
                        " <a class=\"post-thumb\" href=\"#\"><img src=\"${pageContext.request.contextPath}/images/onLecture/" + val.onLectureNo + ".png\" style=\"width:80px; height:60px;\" alt=\"http://placehold.it/75x75\"></a>\n" +
                        " <div class=\"post-right\">\n" +
                        " <h5 class=\"post-title mt-0\"><a href=\"${pageContext.request.contextPath}/onLecture/detail/" + val.onLectureNo + "\">" + val.onLectureName + "</a></h5>\n" +
                        " <p>" + "</p>\n" +
                        " </div>\n" +
                        " </article>"
                });
                $("#latest-posts").html(str);
                console.log(result)
            },
            error: function (error) {
                console.log(error)
            }
        })

        $.ajax({
            url: "${pageContext.request.contextPath}/onLecture/count",
            type: "post",
            dataType: "json",
            success: function (result) {
                $.each(result, function (key, val) {
                    $("#ct" + key).text(val);
                });
                console.log(result)
            },
            error: function (error) {
                console.log(error)
            }
        })
    })

    function searchFrm() {
        var keyword = $("#searchText").val();
        if (keyword != "") {
            location.href = '${pageContext.request.contextPath}/onLecture/search/key/' + keyword + '/1'
        }
        return false;
    }

    $(document).on('click', 'a[value=wishlist]', function () {
        if (confirm('위시리스트에 담을까요?')) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/wishlist",
                dataType: "json",
                data: "onLectureNo=" + $(this).attr('id'),
                success: function (result) {
                	if(result==2){
                		alert("이미 중복된 강의가 있습니다.");
                		
                	}
                	else (confirm('위시리스트에 담았습니다. \n지금 위시리스트로 이동하시겠습니까?')) 
					 return location.href = "${pageContext.request.contextPath}/myPage/info/1";
                },
                error: function (err) {
                	alert("로그인 후 이용하십시오")
            		return location.href = "${pageContext.request.contextPath}/login";
                	alert("이미 중복된 강의가 있습니다.")
                }
            });
        }
    })

    $(window).load(function(){
        $.ajax({
            url: "${pageContext.request.contextPath}/myPage/isthere",
            type: "post",
            dataType: "json",
            success: function (result) {
                $.each(result, function (key, val) {

                    console.log(key + " " + val.onLecture.onLectureNo);
                    /* if(val.onLecture.onLectureNo==$("#lectureno").val()){
                        $(".wishlistbtn1").hide();
                        $(".wishlistbtn2").show();
                    } */
                });
            },
            error: function (error) {
                console.log(error)
            }
        })
    })
</script>
</body>
</html>