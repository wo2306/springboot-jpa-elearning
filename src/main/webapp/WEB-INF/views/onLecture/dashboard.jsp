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
        #sidebox {
            position: absolute;
            width: 400px;
            right: 0px;
            padding: 3px 30px
        }
    </style>
        <!-- include summernote css/js-->
    <link
            href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
            rel="stylesheet">
    <script
            src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
</head>


<body class="">
<div id="wrapper" class="clearfix">
    <!-- Start main-content -->
    <div class="main-content">
        <!-- Section: inner-header -->
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
                 data-bg-img="${pageContext.request.contextPath}/images/banner/ondetail.jpg">
            <div class="container pt-70 pb-20">
                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="title text-white">${onLecture.onLectureName}</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">홈</a></li>
                                <li><a href="#">강의 상세 조회</a></li>
                                <li class="active text-gray-silver">${onLecture.onLectureName}</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section: Blog -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 blog-pull-right">
                        <div class="single-service">
                            <img src="http://placehold.it/750x500" alt="">
                            <h3 class="text-theme-colored line-bottom text-theme-colored">${onLecture.onLectureName}</h3>
                            </h4>
                            <ul class="review_text list-inline">
                                <li>
                                    <!--리뷰 평점 평균내서 -->
                                    <div class="star-rating" title="Rated 4.50 out of 5"><span
                                            style="width: 90%;">4.50</span></div>
                                </li>
                            </ul>
                            <br>

                            <h4 class="widget-title line-bottom">함께 학습하면 좋은 <span
                                    class="text-theme-color-2">로드맵</span></h4>
                            <div class="services-list">
                                <ul class="list list-border angle-double-right">

                                    <c:forEach items="${roadmapList}" var="dto">
                                        <li class="relatedRoadmapList"><a
                                                href="${pageContext.request.contextPath}/roadmap/${dto.roadmapNo}">${dto.roadmapName}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <br>
                            <h4 class="widget-title line-bottom">${onLecture.onLectureTeacher}<span
                                    class="text-theme-color-2">님의 다른 강의</span></h4>
                            <ul class="list-border">
                                <c:forEach items="${teacherList}" var="teacherLecture">
                                    <c:if test="${teacherLecture.onLectureName ne onLecture.onLectureName}">
                                        <li class="clearfix"><span> <a
                                                href="${pageContext.request.contextPath}/onLecture/detail/${teacherLecture.onLectureNo}">${teacherLecture.onLectureName} </a> </span>
                                            <div class="value pull-right"></div>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                            <br>
                            <br>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="small">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td class="text-center font-16 font-weight-600 bg-theme-color-2 text-white"
                                                colspan="2">교육 과정
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>강의명을 클릭하면 해당 강의로 이동합니다</th>
                                            <th width="100">강의 길이</th>
                                            <tbody>
                                            <c:forEach items="${detailList}" var="onDetail">
                                                <tr>
                                                    <td scope="row"><a
                                                            href="${pageContext.request.contextPath}/onLecture/view/${onDetail.onDetailNo}">${onDetail.onDetailName}</a>
                                                    </td>
                                                    <td>${onDetail.onDetailPlaytime}분</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="sidebar sidebar-left mt-sm-30 ml-40">
                            <div class="widget">
                                <div class="services-list">
                                    <ul class="list list-border angle-double-right">
                                        <li class="active"><a
                                                href="${pageContext.request.contextPath}/onLecture/view/${sugangList.size()>0?sugangList.get(0).onDetailNo:detailList.get(0).onDetailNo}">지금
                                            바로 학습 시작</a></li>
                                    </ul>
                                    <br>
                                    <h4 style="display: inline" class="widget-title line-bottom">내 학습 상황 &nbsp;<span
                                            class="text-theme-color-2">${sugangList.size()}/${detailList.size()}</span>
                                    </h4>
                                    <div class="progressbar-container">
                                        <div class="progress-item style2">
                                            <br>
                                            <div class="progress">
                                                <div class="progress-bar" data-percent="
                                                <fmt:formatNumber value="${sugangList.size()/detailList.size()*100}" pattern="#.#" />">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                            <c:when test="${empty qnaList }">
                            	<br>
                            </c:when>
                            <c:otherwise>
                       
                            <div class=" widget">
                                <h4 class="widget-title line-bottom">최근 <span
                                        class="text-theme-color-2">질문</span></h4>
                                <ul class="list-border">
                                    <c:forEach var="qna" items="${qnaList}">
                                        <li class="clearfix"><span> <a href="${pageContext.request.contextPath}/qna/read/${qna.classQuestionNo}">${qna.classQuestionTitle}</a></span>
                                            <div class="value pull-right"> ${qna.userdb.userdbNickname}</div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            </c:otherwise>
                            </c:choose>
                            
                            <div class="widget">
                                <h4 class="widget-title line-bottom">질문 <span
                                        class="text-theme-color-2">등록</span></h4>
                <form id="classQuestion" name="footer_quick_contact_form" class="quick-contact-form" method="post" novalidate="novalidate">
                  <div class="form-group">
                    <input name="classQuestionTitle" class="form-control valid" type="text" required="" placeholder="질문 제목" aria-required="true" aria-invalid="false" style="background-color: white;">
                  	<input type="hidden" value="${onLecture.onLectureNo }" name="onLecture.onLectureNo"/>
                  </div>
                  <div class="form-group">
									<textarea class="form-control" id="summernote" name="classQuestionContent"  
                                              placeholder="질문 내용" maxlength="140" rows="7"></textarea>
                            </div>
                  
                    <button type="button" id="questionInsert" class="btn btn-theme-colored btn-flat btn-xs btn-quick-contact text-white pt-5 pb-5" data-loading-text="질문 등록 하기">질문 등록 하기</button>
                </form>
                            </div>

                           
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<script type="text/javascript">

    $(document).ready(function () {
        $('#summernote').summernote({
        	toolbar: [
                // [groupName, [list of button]]
            ],
            width: '100%',
        	height: 270,
            minHeight: null,
            maxHeight: null,
            focus: true,
            callbacks: {
                onImageUpload: function (files, editor, welEditable) {
                    for (var i = files.length - 1; i >= 0; i--) {
                        sendFile(files[i], this);
                    }
                }
            }
        });
    });
    
</script>
<script type="text/javascript">
$("#questionInsert").on('click', function(){
	var title=$("#classQuestion > div:nth-child(1) > input.form-control.valid").val();
	var content = $("#classQuestion > div:nth-child(2) > div > div.note-editing-area > div.note-editable.panel-body");
	
	if(title!="" && content!=null){
	location.href='${pageContext.request.contextPath}/qna/questionInsert';
	}
	else{
		alert("질문제목과 내용을 입력하세요");
	}
});

</script>
</section>
</div>
</div>
<!-- end main-content -->
</body>
</html>