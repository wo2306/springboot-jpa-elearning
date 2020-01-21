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
		$("button[name=select]").click(function(){
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
	                      data+="<td class='onLecture-no' id='result.onLectureNo'>"+result.onLectureNo+"</a>"+"</td>";
	                      data+="<td class='onLecture-name'>"+"<a href='#'>"+result.onLectureName+"</a>"+"</td>"
	                      data+="<td class='onLecture-content'>"+"<span class='category'>"+result.onLectureContent+"</span>"+"</td>";
	        			  data+="<td class='onLecture-teacher'>"+"<span class='teacher'>"+result.onLectureTeacher+"</span>"+"</td>";
	                      data+="<td class='onLecture-price'>"+"<span class='price'>"+result.onLecturePrice+"</span>"+"</td>";
	                  	  data+="</tr>";
	                      $('#addTable').append(data);		  
				}//callback			
			});//ajax
		})//click이벤트 끝
		//추가한  강의 삭제
		$(document).on("click","#btn",function(){
			$(this).closest("tr").remove();
		})//강의 삭제 이벤트 끝
		
		//팝업 자식창 부모창으로 값넘기기
		$(document).on("click","#roadmapBtn",function(){
			var add = $("#addTable tr").val(this)
			opener.addOnLecture(add);
			self.close();
		});	
});
	//온라인강의 검색
    function searchform() {
    var keyfield = $("#key option:selected").val();
    var keyword = $("#keyword").val();
    if (keyword!="") {
    location.href = '${pageContext.request.contextPath}/admin/roadmap/' + keyfield + '/' + keyword + '/1';
    } else {
        alert("검색어를 입력하세요");
    }
    return false;
}		
</script>

</head>
<body class="">
<div id="wrapper" class="clearfix">
 
  
  <!-- Start main-content -->
  <div class="main-content">
    <section>
      <div class="container">
        <div class="section-content">
               <div class="col-md-12 mt-30">
                  <div class="row">
 					<form name="searchForm" method="post" onsubmit="return searchform()">
                      <div class="input-group">
                        <select id="key" style="background-color:#F8F9FC; margin-right: 10px;">
                         <option value="name">강의명</option>
					     <option value="category">카테고리</option>
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
       <div class="row">
         <div class="col-md-12">
           <div class="table-responsive">
             <table class="table table-striped table-bordered tbl-shopping-cart">
               <thead>
                 <tr>
                   <th>강의 번호</th>
                   <th>강의명</th>
                   <th>카테고리</th>
                   <th>강사명</th>
                   <th>강의 가격</th>
                   <th>선택</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${list}" var="list" varStatus="status">
                    <tr class="onLecture_item">
                      <td class="onLecture-no" id="${list.onLectureNo}">${list.onLectureNo}</td>
                      <td class="onLecture-name"><a href="#">${list.onLectureName}</a></td>
                      <td class="onLecture-content"><span class="category">${list.onLectureCategory}</span></td>
        			  <td class="onLecture-teacher"><span class="teacher">${list.onLectureTeacher}</span></td>
                      <td class="onLecture-price"><span class="price">${list.onLecturePrice}</span> </td>
                      <td colspan="6"><div class="onlecture">
                     	  <input type="hidden" name="id" value="${list.onLectureNo}"/>
                          <button type="button" class="btn btn-primary" name="select" value="${list.onLectureNo}">강의 선택하기</button>
                        </div></td>
                    </tr>
                    </c:forEach>
                  </tbody>
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
                                                       href="${pageContext.request.contextPath}/admin/roadmap/${command}/${keyword}/${page.number}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전 </span>
                                                    </a>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/roadmap/${command}/${keyword}/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">이전 </span>
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:forEach varStatus="i" begin="1" end="${page.totalPages}">
                                            <li class="page-item">
                                                <c:choose>
                                                    <c:when test="${page.number eq i.count-1}">
                                                        <a style="color: silver" class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/roadmap/${command}/${keyword}/${i.count}">${i.count}</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a class="page-link"
                                                           href="${pageContext.request.contextPath}/admin/roadmap/${command}/${keyword}/${i.count}">${i.count}</a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </li>
                                        </c:forEach>

                                        <li class="page-item">
                                            <c:choose>
                                                <c:when test="${page.hasNext() eq true}">
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/roadmap/${command}/${keyword}/${page.number+2}"
                                                       aria-label="Next"> <span aria-hidden="true">다음</span> </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a class="page-link"
                                                       href="${pageContext.request.contextPath}/admin/roadmap/${command}/${keyword}/${page.number+1}"
                                                       aria-label="Previous"> <span aria-hidden="true">다음</span>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                           </li>
                                            </c:if>
                                   </ul>
                                 </div>
                               </div>
                             </div>
                             <br><br><br>                    
               	<div class="container">
                  <h3>선택한 강의</h3>
                  <hr>
                  </div>
                  <!-- <form action=""> -->
                     <table class="table table-striped table-bordered tbl-shopping-cart" id="table">
                  <thead>
                    <tr>
                      <th></th>
                      <th>강의번호</th>
                      <th>강의명</th>
                      <th>카테고리</th>
                      <th>강사명</th>
                      <th>강의가격</th>
                    </tr>
                  </thead>
				<tbody id="addTable">
				
				</tbody>
                </table>
                  <button type="button" class="btn btn-dark" id="roadmapBtn">강의 선택 완료</button>
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
<script src="js/custom.js"></script>

</body>
</html>

