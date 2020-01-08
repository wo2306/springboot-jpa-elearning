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
                            <h2 class="title text-white">Course Details</h2>
                            <ol class="breadcrumb text-left text-black mt-10">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Pages</a></li>
                                <li class="active text-gray-silver">Page Title</li>
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
                            <h4 class="mt-0"><span class="text-theme-color-2">Price :</span> ${onLecture.onLecturePrice}
                            </h4>
                            <ul class="review_text list-inline">
                                <li>
                                    <!--리뷰 평점 평균내서 -->
                                    <div class="star-rating" title="Rated 4.50 out of 5"><span
                                            style="width: 90%;">4.50</span></div>
                                </li>
                            </ul>
                            <h5><em>${onLecture.onLectureSummary}</em></h5>
                            <p>${onLecture.onLectureContent}</p>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="small">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td class="text-center font-16 font-weight-600 bg-theme-color-2 text-white"
                                                colspan="2">교육 과정
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>강의명</th>
                                            <th width="100">강의 길이</th>
                                            <tbody>
                                            <c:forEach items="${detailList}" var="onDetail">
                                                <tr>
                                                    <td scope="row"><a
                                                            href="https://youtu.be/${onDetail.onDetailUrl}">${onDetail.onDetailName}</a>
                                                    </td>
                                                    <td>${onDetail.onDetailPlaytime}</td>
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
                                <h4 class="widget-title line-bottom">함께 학습하면 좋은 로드맵</h4>
                                <div class="services-list">
                                    <ul class="list list-border angle-double-right">
                                        <c:forEach items="${roadmapList}" var="dto">
                                            <li class="active"><a href="page-courses-accounting-technologies.html">${dto.roadmapName}</a></li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="widget">
                                <h4 class="widget-title line-bottom">${onLecture.onLectureTeacher}<span
                                        class="text-theme-color-2">님의 다른 강의</span></h4>
                                <div class="opening-hours">
                                    <ul class="list-border">
                                        <c:forEach items="${teacherList}" var="teacherLecture">
                                            <li class="clearfix"><span> <a
                                                    href="${pageContext.request.contextPath}/onLecture/detail/${teacherLecture.onLectureNo}">${teacherLecture.onLectureName} </a> </span>
                                                <div class="value pull-right"></div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="widget">
                                <h4 class="widget-title line-bottom">Quick <span
                                        class="text-theme-color-2">Contact</span></h4>
                                <form id="quick_contact_form_sidebar" name="footer_quick_contact_form"
                                      class="quick-contact-form" action="includes/quickcontact.php" method="post">
                                    <div class="form-group">
                                        <input name="form_email" class="form-control" type="text" required=""
                                               placeholder="Enter Email">
                                    </div>
                                    <div class="form-group">
                                        <textarea name="form_message" class="form-control" required=""
                                                  placeholder="Enter Message" rows="3"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input name="form_botcheck" class="form-control" type="hidden" value=""/>
                                        <button type="submit"
                                                class="btn btn-theme-colored btn-flat btn-xs btn-quick-contact text-white pt-5 pb-5"
                                                data-loading-text="Please wait...">Send Message
                                        </button>
                                    </div>
                                </form>

                                <!-- Quick Contact Form Validation-->
                                <script type="text/javascript">
                                    $("#quick_contact_form_sidebar").validate({
                                        submitHandler: function (form) {
                                            var form_btn = $(form).find('button[type="submit"]');
                                            var form_result_div = '#form-result';
                                            $(form_result_div).remove();
                                            form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                                            var form_btn_old_msg = form_btn.html();
                                            form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                                            $(form).ajaxSubmit({
                                                dataType: 'json',
                                                success: function (data) {
                                                    if (data.status == 'true') {
                                                        $(form).find('.form-control').val('');
                                                    }
                                                    form_btn.prop('disabled', false).html(form_btn_old_msg);
                                                    $(form_result_div).html(data.message).fadeIn('slow');
                                                    setTimeout(function () {
                                                        $(form_result_div).fadeOut('slow')
                                                    }, 6000);
                                                }
                                            });
                                        }
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<!-- end main-content -->

</body>
</html>