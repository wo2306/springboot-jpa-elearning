<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<!-- Page Title -->
<title>StudyPress | Education & Courses HTML Template</title>

<!-- Stylesheet -->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
	$(function(){

		$(".btn").click(function(){
			var onLectureNo = $(this).val()
			/* alert($(this).val()); */
			//로드맵 등록시 온라인강의 추가
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/roadmap/onLectureAdd",				
				data:"${_csrf.parameterName}=${_csrf.token}&onLectureNo="+onLectureNo,
				dataType:"json",
				success:function(result){						
 	 					alert("성공")
						var objectValues = result;
						for (var key in objectValues){
						    console.log("attr: " + key + ", value: " + objectValues[key]);
						}   
						
  						 var data="<tr class='onLecture_item'>";
	                      data+="<td class='onLecture-remove'>"+"<button type='button' class='btn' id='btn'>"+"취소"+"</button>"+"</td>";
	                      data+="<td class='product-thumbnail' id='result.onLectureNo'>"+result.onLectureNo+"</a>"+"</td>";
	                      data+="<td class='onLecture-name'>"+"<a href='#'>"+result.onLectureName+"</a>"+"</td>"
	                      data+="<td class='onLecture-content'>"+"<span class='content'>"+result.onLectureContent+"</span>"+"</td>";
	        			  data+="<td class='onLecture-teacher'>"+"<span class='teacher'>"+result.onLectureTeacher+"</span>"+"</td>";
	                      data+="<td class='onLecture-price'>"+"<span class='price'>"+result.onLecturePrice+"</span>"+"</td>";
	                  	  data+="</tr>";
	                      $('#table').append(data);		  
				}//callback			
			});//ajax
		})//click이벤트 끝
		//추가한  강의 삭제
		$(document).on("click","#btn",function(){
			$(this).closest("tr").remove();
		})//강의 삭제 이벤트 끝
		
		//팝업 자식창 부모창으로 값넘기기
	//	$("#roadmapBtn").click(function(){
		$(document).on("click","#roadmapBtn",function(){
			var add = $("#selectable tr").val(this)
			opener.addOnLecture(add);
			self.close();
		});
	});

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
              <h2 class="title text-white">강의 리스트</h2>
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
 
          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-striped table-bordered tbl-shopping-cart">
                  <thead>
                    <tr>
                      
                      <th>onLectureNo</th>
                      <th>onLectureName</th>
                      <th>onLectureContent</th>
                      <th>teacher</th>
                      <th>onLecturePrice</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${onLectureList}" var="list" varStatus="status">
                    <tr class="onLecture_item">
                      <td class="onLecture-no" id="${list.onLectureNo}">${list.onLectureNo}</td>
                      <td class="onLecture-name"><a href="#">${list.onLectureName}</a></td>
                      <td class="onLecture-content"><span class="content">${list.onLectureContent}</span></td>
        			  <td class="onLecture-teacher"><span class="teacher">${list.onLectureTeacher}</span></td>
                      <td class="onLecture-price"><span class="price">${list.onLecturePrice}</span>
                      </td>
                    </tr>
                    <tr class="cart_item">
                      <td colspan="6"><div class="onlecture">
                    <!--   <form name="requestForm" method="post" id="requestForm"> -->
                     	  <input type="hidden" name="id" value="${list.onLectureNo}"/>
                          <button type="button" class="btn" value="${list.onLectureNo}">강의 선택하기</button>
                      <!--  </form> -->
                        </div></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
               
                 <div class="col-sm-12" id="paginationList">
                                <nav>
                                    <ul class="pagination theme-colored xs-pull-center m-0">
                                        <c:if test="${page.hasPrevious() eq true}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/roadmap/onLectureList/${page.number}"
                                                   aria-label="Previous"> <span aria-hidden="true">이전</span> </a>
                                            </li>
                                        </c:if>
                                        <c:if test="${page.totalPages ne 1}">
                                            <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <li class="active"><a
                                                                href="${pageContext.request.contextPath}/roadmap/onLectureList/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li>
                                                            <a href="${pageContext.request.contextPath}/roadmap/onLectureList/${i.count}">${i.count}</a>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${page.hasNext() eq true}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/roadmap/onLectureList/${page.number+2}"
                                                   aria-label="Next"> <span aria-hidden="true">다음</span> </a></li>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                  <h3>선택한 강의</h3>
                  <hr>
                  </div>
                  <!-- <form action=""> -->
                     <table class="table table-striped table-bordered tbl-shopping-cart" id="table">
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
				<tbody id="selectable">
				</tbody>
   
                </table>
                  <button type="button" class="roadmapbtn" id="roadmapBtn">강의 선택 완료</button>
              <!--   </form> -->
                  
               </div>
              </div>
             </div>
            </div>
	  </section>
  </div>
</div>
<!-- end wrapper --> 

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>