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
                            <h2 class="title text-white">내 강의실</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">구매한 강의</a></li>
                                <li class="active text-gray-silver">내 강의</li>
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
                    <div class="col-md-12 blog-pull-right" id-="out">
                        <div class="row">
                            <div class="col-md-2">
                                정렬 기준
                                <select name="form_sex" class="form-control required valid" aria-required="true"
                                        aria-invalid="false">
                                    <option value="1">최근 공부한순</option>
                                    <option value="2">제목순</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                진행률
                                <select name="form_sex" class="form-control required valid" aria-required="true"
                                        aria-invalid="false">
                                    <option value="">학습중</option>
                                    <option value="">완강</option>
                                </select>
                            </div>
                            <div class="col-md-4 blog-pull-right">
                                강의 이름으로 검색
                                <div class="input-group">
                                    <input type="text" placeholder="강사명 또는 강의명 입력" id="searchText"
                                           class="form-control search-input">
                                    <span class="input-group-btn">
    <button type="button" class="btn search-button" style="height: 45px;" onclick="return searchFrm()"><i class="fa fa-search"></i></button>
    </span>
                                </div>
                            </div>
                        </div>
                        <div class="row"></div>
                        <br>
                        <p></p>
                        <div class="row">
                            <c:forEach var="dto" items="${list}">
                                <div class="col-sm-6 col-md-3">
                                    <div class="service-block bg-white">
                                        <div class="thumb"><img alt="featured project"
                                                                src="${pageContext.request.contextPath}/resources/images/onLecture/${dto.onlecture.onLectureNo}.png"
                                                                style="width:265px; height: 195px;"
                                                                class="img-fullwidth">
                                        </div>
                                        <div class="content text-left flip p-25 pt-0">
                                            <input type="hidden" id="lectureno" value=${dto.onlecture.onLectureNo}>
                                            <h5 style="font-weight: bold; height: 50px"
                                                class="line-bottom mb-10">${dto.onlecture.onLectureName}</h5>
                                            <p style="height: 150px">${dto.onlecture.onLectureSummary}</p>
                                            <div>
                                                <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                                   href="${pageContext.request.contextPath}/onLecture/detail/${dto.onlecture.onLectureNo}">강의실로
                                                    이동
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-sm-12" id="paginationList">
                                <nav>
                                    <ul class="pagination theme-colored xs-pull-center m-0" id="in">
                                        <c:if test="${page.totalPages ne 0}">
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
                </div>

            </div>
        </section>
    </div>
</div>
<!-- end main-content -->
<script>
    $(function () {
        $("select[name=form_sex]").change(function() {
            alert($(this).val());
        })
    })

    function searchFrm() {
        var keyword = $("#searchText").val();
        if (keyword != "") {
            location.href = '${pageContext.request.contextPath}/onLecture/search/key/' + keyword + '/1'
        }
        return false;
    }

    $(document).on('click', 'button[value=wishlist]', function () {
        if (confirm('위시리스트에 담을까요?')) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/wishlist",
                dataType: "text",
                data: "onLectureNo=" + $(this).attr('id'),
                success: function () {

                    /* $(".wishlistbtn1").hide();
                    $(".wishlistbtn2").show();
                 */
                    if (confirm('성공해쓰 보러갈래?')) return location.href = "${pageContext.request.contextPath}/myPage/info/1";
                },
                error: function (err) {
                    alert("이미 중복된 강의가 있습니다.");
                }
            });
        }
    })

    $(window).load(function () {
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