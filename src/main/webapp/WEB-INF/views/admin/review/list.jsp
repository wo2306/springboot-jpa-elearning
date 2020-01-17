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
    <style>
        #out {
            horiz-align: center;
            text-align: center;
        }

        #in {
            margin: auto;
            width: 50%;
        }

        #inin {
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
                                <li><a href="#">관리자 리뷰 관리 페이지</a></li>
                                <li class="active text-gray-silver"> - 관리자가 사용자의 리뷰를  수정, 삭제할 수 있는 페이지 입니다.</li>
                               
                            </ol>
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
                        <table class="table table-bordered" id="dataTable2" width="100%"
                               cellspacing="0">
                            <tr>
                                <th>리뷰번호</th>
                                <th>작성자</th>
                                <th>리뷰내용</th>
                                <th>평점</th>
                                <th colspan="2">기능</th>
                            </tr>
                         
                             <c:forEach items="${list}" var="review">
                                <tr>
                                    <td>${review.reviewNo}</td>
                                    <td>${review.userdb.userdbNickname}</td>
                                    <td>${review.reviewContent}</td>
                                    <td>${review.reviewScore }</td>
                                   
                                    <td>
                                        <button type="button" name="updateBtn" class="btn btn-dark" value="${review.reviewNo}">수정
                                        </button>
                                    </td>
                                    <td>
                                        <button type="button" name="deleteBtn" class="btn btn-dark"
                                                value="${review.reviewNo}">삭제
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach> 
                        </table>
                        <div class="container" id="in">
                            <div class="row">
                                <div class="col" id="inin">
                                    <ul class="pagination">
                                        <c:if test="${page.totalPages ne 0}">
                                        <c:choose>
                                            <c:when test="${page.hasPrevious() eq true}">
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/review/list/${page.number}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/review/list/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전</span>
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                            <li class="page-item">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/review/list/${i.count}">${i.count}</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/review/list/${i.count}">${i.count}</a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item">
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/review/list//${page.number+2}"
                                                       aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/review/list/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">다음</span>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                            </c:if>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script>
    function searchform() {
       // var keyfield = $("#key option:selected").val();
     //   var keyword = $("#keyword").val();
      //  location.href = '${pageContext.request.contextPath}/admin/onLecture/' + keyfield + '/' + keyword + '/1';
      //  return false;
    }

    $("button[name='deleteBtn']").on('click', function () {
     //   alert("선택한 강의를 강의를 삭제하였습니다");
     //   location.href = '${pageContext.request.contextPath}/admin/onLecture/delete/' + $(this).val();
    })

    $("button[name='updateBtn']").on('click', function () {
        // alert(1)
      //  location.href = '${pageContext.request.contextPath}/admin/onLecture/updateForm/' + $(this).val();
    })
</script>
</body>
</html>