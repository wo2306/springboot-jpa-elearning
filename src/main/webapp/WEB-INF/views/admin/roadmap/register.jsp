<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>


<script type="text/javascript">
$(function(){
	$("#onlecturebtn").click(function(){
		window.open("onLectureList/1", "PopupWin", "width=1000,height=1000")
	})// click end
	
})

</script>

</head>
<body class="">
<div id="wrapper" class="clearfix">
 
  
  <!-- Start main-content -->
  <div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-dark-5" data-bg-img="http://placehold.it/1920x1280">
      <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12">
              <h2 class="title text-white">로드맵 등록</h2>
              <ul class="list-inline text-white">
                <li>Home /</li>
                <li><span class="text-gray">Shop Cart</span></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section>
 
      <div class="container">
        <div class="section-content">
               <div class="col-md-12 mt-30">
              <div class="row">
                <div class="col-md-12">
                  <h3>로드맵 등록</h3>
                  <form class="form" method="post" action="${pageContext.request.contextPath}/roadmap/insert">
                    <table class="table no-border">
                      <tbody>
                       <tr>
                          <td><h4>로드맵 제목</h4></td>
                         </tr>
                        <tr>
                          <td><input type="text" class="form-control" placeholder="제목을 입력해주세요." name="roadmapName"></td>
                        </tr>
                        <tr>
                          <td><h4>로드맵 내용</h4></td>
                        </tr>
                        <tr>
                          <td><textarea rows="12" class="form-control" placeholder="내용을 입력해주세요." name="roadmapContent" ></textarea></td>
                        </tr>
                        <tr>
                          <td><h4>로드맵 가격</h4></td>
                         </tr>
                        <tr>
                          <td><input type="text" class="form-control" placeholder="가격을 입력해주세요." name="roadmapPrice" ></td>
                        </tr>                        
                        <tr>
                          <td><button type="submit" class="btn btn-default">등록</button></td>
                        </tr>
                      </tbody>
                    </table>
                  </form>
                </div>
          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-striped table-bordered tbl-shopping-cart" id="addOnLecture">
                  <thead>
                    <tr>
                      <th></th>
                      <th>onLectureNo</th>
                      <th>onLectureName</th>
                      <th>onLectureContent</th>
                      <th>teacher</th>
                      <th>onLecturePrice</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="onLecture_item">
                      <td class="onLecture-remove"><a title="Remove this item" class="remove" href="#">×</a></td>
                      <td class="onLecture-name"><a href="#"></a></td>
                      <td class="onLecture-content"><span class="content"></span></td>
        			  <td class="onLecture-teacher"><span class="teacher"></span></td>
                      <td class="onLecture-price"><span class="price"></span></td>
                    </tr>

        
                    <tr class="cart_item">
                      <td colspan="6"><div class="onlecture">
                          <button type="button" class="btn" id="onlecturebtn">강의 추가하기</button>
                        </div></td>
                     
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
      </div>
    </section>
  </div>
<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>