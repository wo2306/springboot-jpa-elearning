<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

<style type="text/css">
.main-bg{
	background-image: url("${pageContext.request.contextPath}images/index/main2.png");
	background-repeat: no-repeat;
	background-size: 100%;
}
</style>

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
    <!-- Section: home -->
    <section id="home" class="divider parallax fullscreen" data-parallax-ratio="0.1" >
      <div class="display-table">
        <div class="display-table-cell main-bg" >
          <div class="container pt-150 pb-150">
            <div class="row">
              <div class="col-md-8 col-md-offset-2 text-center">
                <div class="pb-50 pt-30">
                   <h3 class="text-uppercase text-white bg-dark-transparent-light font-30 inline-block border-left-theme-color-2-4px border-right-theme-color-2-4px pl-30 pr-30 mb-5 pt-5 pb-5">World Best Academy</h3>
                  <h1 class="text-uppercase text-white mt-0 inline-block bg-theme-colored-transparent border-left-theme-color-2-6px border-right-theme-color-2-6px pl-40 pr-40 pt-5 pb-5 font-42">Education For Everyone</h1>
                  <p class="font-16 text-white">We provides always our best services for our clients and  always<br> try to achieve our client's trust and satisfaction.</p>
                  <a href="#" class="btn btn-colored btn-lg btn-theme-colored pl-20 pr-20">View Details</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: welcome -->
    <section id="welcome" class="divider layer-overlay overlay-dark-6 parallax" data-parallax-ratio="0.1" data-bg-img="${pageContext.request.contextPath}/images/index/index1.jpg">>
      <div class="container pt-150 pb-150">
        <div class="section-content">
          <div class="row">
            <div class="col-md-6">
              <h6 class="letter-space-4 text-gray-darkgray text-uppercase mt-0 mb-0">All About</h6>
              <h2 class="text-uppercase font-weight-600 text-gray-lightgray mt-0 font-28 line-bottom">Learning Machine</h2>
              <h4 class="text-theme-color-2">집에서 언제든지 자신이 원하는 고퀄리티의 강의를 마음껏! <br>어디서도 볼 수 없는 탄탄한 강사진!</h4>
              <p class="text-white"> 하늘은 바다 끝없이 넓고 푸른 바다 구름은 조각배 바람이 사공 되어 노를 젓는다. 
              					               하늘은 바다 끝없이 넓고 푸른 바다 구름은 조각배 바람이 사공 되어 노를 젓는다.
								                하늘은 바다 끝없이 넓고 푸른 바다 구름은 조각배 바람이 사공 되어 노를 젓는다. </p>
              <a class="btn btn-theme-colored btn-flat btn-lg mt-10 mb-sm-30" href="#">Read More</a>
            </div>
            <div class="col-md-6">
              <div class="video-popup">
                  <iframe width="460" height="315" src="https://www.youtube.com/embed/PrN9QB8HDNM?autoplay=1&controls=0&mute=1&rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Courses -->
    <section id="services" class="divider parallax layer-overlay overlay-dark-6" data-parallax-ratio="0.1" data-bg-img="${pageContext.request.contextPath}/images/index/main3.jpg">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">온라인 <span class="text-theme-color-2 font-weight-400"> 강의</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">사람이 하늘처럼 맑아 보일 때가 있다 그때 나는 그 사람에게서 하늘 냄새를 맡는다</p>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="owl-carousel-4col">
        <c:forEach var="dto" items="${onLectureList}">
              <div class="item ">
                <div class="service-block bg-white">
                  <div class="thumb"> <img alt="featured project" src="${pageContext.request.contextPath}/images/onLecture/${dto.onLectureNo}.png" class="img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price"><fmt:formatNumber value="${dto.onLecturePrice}" pattern="₩#,###"/></span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 style="height: 60px" class="line-bottom mb-10">${dto.onLectureName}</h4>
                    <p style="height: 130px">${dto.onLectureSummary}</p>
                   <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="${pageContext.request.contextPath}/onLecture/detail/${dto.onLectureNo}">자세히보기</a>
                  </div>
                </div>
              </div>
        </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Experts -->
    <section id="experts" class="divider parallax layer-overlay overlay-dark-4" data-parallax-ratio="0.1" data-bg-img="${pageContext.request.contextPath}/images/index/index3.jpg">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">오프라인 <span class="text-theme-color-2 font-weight-400"> 강의</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">
			              흔들리지 않고 피는 꽃이 어디 있으랴 이 세상 그 어떤 아름다운 꽃들도 다 흔들리면서 <br>
			              피었나니 흔들리면서 줄기를 곧게 세웠나니 흔들리지 않고 가는 사람이 어디 있으랴</p>
            </div>
          </div>
        </div>
        <div class="row mtli-row-clearfix">
          <div class="col-md-12">
            <div class="owl-carousel-4col">
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Jhon Anderson</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Zakaria Smith</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">David Matthews</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Andrew Smith</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="team-members maxwidth400">
                  <div class="team-thumb">
                    <img class="img-fullwidth" alt="" src="http://placehold.it/260x230">
                  </div>
                  <div class="team-bottom-part border-bottom-theme-color-2-2px border-1px bg-white text-center p-10 pt-20 pb-10">
                    <h4 class="text-uppercase font-raleway text-theme-color-2 font-weight-600 line-bottom-center m-0">Faruk Haydar</h4>
                    <h5 class="m-0">- Engine Specialist -</h5>
                    <p class="font-13 mt-10 mb-10">Lorem ipsum dolorsit amet consecte turadip isior ipsum dolor sit ametor ipsum dolor sit amet conse</p>
                    <ul class="styled-icons icon-sm icon-gray icon-hover-theme-colored">
                      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                      <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                  </div>
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
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

<style type="text/css">
.main-bg{
	background-image: url("${pageContext.request.contextPath}images/index/main2.png");
	background-repeat: no-repeat;
	background-size: 100%;
}
</style>

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
    <!-- Section: home -->
    <section id="home" class="divider parallax fullscreen" data-parallax-ratio="0.1" >
      <div class="display-table">
        <div class="display-table-cell main-bg" >
          <div class="container pt-150 pb-150">
            <div class="row">
              <div class="col-md-8 col-md-offset-2 text-center">
                <div class="pb-50 pt-30">
                   <h3 class="text-uppercase text-white bg-dark-transparent-light font-30 inline-block border-left-theme-color-2-4px border-right-theme-color-2-4px pl-30 pr-30 mb-5 pt-5 pb-5">World Best Academy</h3>
                  <h1 class="text-uppercase text-white mt-0 inline-block bg-theme-colored-transparent border-left-theme-color-2-6px border-right-theme-color-2-6px pl-40 pr-40 pt-5 pb-5 font-42">Education For Everyone</h1>
                  <p class="font-16 text-white">We provides always our best services for our clients and  always<br> try to achieve our client's trust and satisfaction.</p>
                  <a href="#" class="btn btn-colored btn-lg btn-theme-colored pl-20 pr-20">View Details</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: welcome -->
    <section id="welcome" class="divider layer-overlay overlay-dark-6 parallax" data-parallax-ratio="0.1" data-bg-img="${pageContext.request.contextPath}/images/index/index1.jpg">>
      <div class="container pt-150 pb-150">
        <div class="section-content">
          <div class="row">
            <div class="col-md-6">
              <h6 class="letter-space-4 text-gray-darkgray text-uppercase mt-0 mb-0">All About</h6>
              <h2 class="text-uppercase font-weight-600 text-gray-lightgray mt-0 font-28 line-bottom">Learning Machine</h2>
              <h4 class="text-theme-color-2">집에서 언제든지 자신이 원하는 고퀄리티의 강의를 마음껏! <br>어디서도 볼 수 없는 탄탄한 강사진!</h4>
              <p class="text-white"> 하늘은 바다 끝없이 넓고 푸른 바다 구름은 조각배 바람이 사공 되어 노를 젓는다. 
              					               하늘은 바다 끝없이 넓고 푸른 바다 구름은 조각배 바람이 사공 되어 노를 젓는다.
								                하늘은 바다 끝없이 넓고 푸른 바다 구름은 조각배 바람이 사공 되어 노를 젓는다. </p>
              <a class="btn btn-theme-colored btn-flat btn-lg mt-10 mb-sm-30" href="#">Read More</a>
            </div>
            <div class="col-md-6">
              <div class="video-popup">
                  <iframe width="460" height="315" src="https://www.youtube.com/embed/PrN9QB8HDNM?autoplay=1&controls=0&mute=1&rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Courses -->
    <section id="services" class="divider parallax layer-overlay overlay-dark-6" data-parallax-ratio="0.1" data-bg-img="${pageContext.request.contextPath}/images/index/main3.jpg">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">온라인 <span class="text-theme-color-2 font-weight-400"> 강의</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">사람이 하늘처럼 맑아 보일 때가 있다 그때 나는 그 사람에게서 하늘 냄새를 맡는다</p>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="owl-carousel-4col">
        <c:forEach var="dto" items="${onLectureList}">
              <div class="item ">
                <div class="service-block bg-white">
                  <div class="thumb"> <img alt="featured project" src="${pageContext.request.contextPath}/images/onLecture/${dto.onLectureNo}.png" class="img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price"><fmt:formatNumber value="${dto.onLecturePrice}" pattern="₩#,###"/></span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 style="height: 60px" class="line-bottom mb-10">${dto.onLectureName}</h4>
                    <p style="height: 130px">${dto.onLectureSummary}</p>
                   <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="${pageContext.request.contextPath}/onLecture/detail/${dto.onLectureNo}">자세히보기</a>
                  </div>
                </div>
              </div>
        </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Experts -->
    <section id="experts" class="divider parallax layer-overlay overlay-dark-4" data-parallax-ratio="0.1" data-bg-img="${pageContext.request.contextPath}/images/index/index3.jpg">
      <div class="container pt-150 pb-150">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title text-white">오프라인 <span class="text-theme-color-2 font-weight-400"> 강의</span></h2>
              <p class="text-uppercase letter-space-4 text-gray-lightgray">
			              흔들리지 않고 피는 꽃이 어디 있으랴 이 세상 그 어떤 아름다운 꽃들도 다 흔들리면서 <br>
			              피었나니 흔들리면서 줄기를 곧게 세웠나니 흔들리지 않고 가는 사람이 어디 있으랴</p>
            </div>
          </div>
        </div>
        <div class="row mtli-row-clearfix">
          <div class="row">
            <div class="owl-carousel-4col">
        <c:forEach var="list" items="${offLectureList}">
              <div class="item ">
                <div class="service-block bg-white">
                  <div class="thumb"> <img alt="featured project" src="${pageContext.request.contextPath}/images/offLecture/${list.offLectureNo}.png" class="img-fullwidth">
                  <h4 class="text-white mt-0 mb-0"><span class="price"><fmt:formatNumber value="${list.price}" pattern="₩#,###"/></span></h4>
                  </div>
                  <div class="content text-left flip p-25 pt-0">
                    <h4 style="height: 60px" class="line-bottom mb-10">${list.offLectureName}</h4>
                    <p style="height: 130px">${list.offDetail}</p>
                   <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10" href="${pageContext.request.contextPath}/offLecture/detail/${list.offLectureNo}">자세히보기</a>
                  </div>
                </div>
              </div>
        </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
<!-- end main-content -->
</body>
>>>>>>> branch 'master' of https://github.com/noguri08/LM.git
</html>