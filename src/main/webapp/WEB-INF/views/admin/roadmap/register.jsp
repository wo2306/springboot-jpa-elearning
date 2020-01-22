<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<script type="text/javascript">
	function checkValid(){
		 if($("#roadmapName").val()==""){
			alert("로드맵 제목을 입력하세요.")
			 $("#roadmapName").focus();
			 return false;
		 }
		 if($("#roadmapContent").val()==""){
			alert("로드맵 내용을 입력하세요.")
			  $("#roadmapContent").focus();
			 return false;
		 }
		 if($("#roadmapPrice").val()==""){
				alert("가격을 입력하세요")
				  $("#roadmapPrice").focus();
			 return false;
		 }
/* 		 if($("#addOnLecture tr").val()==""){
				alert("강의를 추가해주세요")
				  $("#onlecturebtn").focus();
			 return false;
		}*/
		 
	 }// 빈칸 유효성 체크 끝


$(function(){
	$("#onlecturebtn").click(function(){
		window.open("all/keyword/1", "PopupWin", "width=1300,height=1000")
	})// click end	
	
	//추가한  강의 삭제
	$(document).on("click","#btn",function(){
	
		$(this).closest("tr").remove();
		
	})//강의 삭제 이벤트 끝
	
	//등록버튼 클릭시
	$(document).on("click","#register", function(){
		var list =[]; 
		 $(".onLecture-no").each(function(index,items){
			 list.push(items.innerHTML); 
		 })
		$(".onLectureNo").val(list);
	})
	
})
//////////////////////////////////////////////////////////////////////////////	      
	    //강의 추가하기
	    function addOnLecture(data){
		var result = data
		$("#addOnLecture").append(result)
		//alert(result+"결과값");
		$.each(result,function(index,row){
			//alert($(row).html());
		})	
	}
	
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
                  <form class="form" method="post" action="${pageContext.request.contextPath}/admin/roadmap/insert/" onsubmit="return checkValid()">
                    <table class="table no-border">
                      <tbody>
                       <tr>
                          <td><h4>로드맵 제목</h4></td>
                         </tr>
                        <tr>
                          <td><input type="text" class="form-control" placeholder="제목을 입력해주세요." name="roadmapName" id="roadmapName"></td>
                        </tr>
                        <tr>
                          <td><h4>로드맵 내용</h4></td>
                        </tr>
                        <tr>
                          <td><textarea rows="12" class="form-control" placeholder="내용을 입력해주세요." name="roadmapContent" id="roadmapContent" ></textarea></td>
                        </tr>
                        <tr>
                          <td><h4>로드맵 가격</h4></td>
                         </tr>
                        <tr>
                          <td><input type="text" class="form-control" placeholder="가격을 입력해주세요." name="roadmapPrice" id="roadmapPrice"></td>
                        </tr>
                        <tr>
                          <td><input type="hidden" class="onLectureNo" name="list"></td>
                        </tr>                        
                        <tr>
                          <td><button type="submit" class="btn btn-dark" id="register">등록</button></td>
                        </tr>
                      </tbody>
                    </table>
                  <table class="table table-striped table-bordered tbl-shopping-cart" id="addOnLecture">
                  <thead>
                    <tr>
                      <th></th>
                      <th>강의 번호</th>
                      <th>강의명</th>
                      <th>강의 카테고리</th>
                      <th>강사명</th>
                      <th>강의가격</th>
                    </tr>
                  </thead>
                  <tbody  id="addOnLectureTable">
                  </tbody>
                
                  </tbody>
                </table>
                 <button type="button" class="btn btn-dark" id="onlecturebtn">강의 추가하기</button>
             </form>
           </div>
          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
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
  
<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>