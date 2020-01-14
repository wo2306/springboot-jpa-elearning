<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

  <!-- Page Title -->
  <title>LM company | Learning Machine | main</title>

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
              <h2 class="title text-white">관리자 페이지</h2>
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

    <!-- Section: About -->
    <section class="">
      <div class="container">
        <div class="section-content">
          <div class="row">

<%-- <form name="updateForm" method="post"
								action="${pageContext.request.contextPath}/admin/academy/adminUpdate"> --%>
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<tr>
									<th>academyNo</th>
									<th>academyName</th>
									<th>academyAddrCity</th>
									<th>academyAddrDetail</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
								<c:forEach items="${requestScope.list}" var="list">
									<tr>
										<td>${list.academyNo}</td>
										<td>${list.academyName}</td>
										<td>${list.academyAddrCity}</td>
										<td>${list.academyAddrDetail}</td>
										<td><input type="submit" class="btn btn-dark" onClick="location.href='${pageContext.request.contextPath}/admin/academy/adminUpdate/${list.academyNo}'" value="수정"></td>
										<td><input type="button" class="btn btn-dark" value="삭제" id=${list.academyNo}></td>
									</tr>
								</c:forEach>
							</table>
							<!-- </form> -->
							<h4>Academy 등록하기 :  </h4>
							<form name="writeForm" method="post"
								action="${pageContext.request.contextPath}/admin/academy/adminRegister">
										<input type="submit" class="btn btn-dark" value="등록하기">
							
			

							</form>

											<div class="col-md-6">
												<div class="video-popup">
													<a href="https://www.youtube.com/watch?v=pW1uVUg5wXM"
														data-lightbox-gallery="youtube-video" title="Video"> </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>

							
    
  </div>
</div>
              <script type="text/javascript">
              $(document).ready(function(){ 
                
                //전체레코드 가져오기
                function printAcademy() {
                   $.ajax({
                         type :"post",
                         url :"${pageContext.request.contextPath}/admin/academy/this",
                         dataType :"json",               
                         success : function(result){
                           // alert("통신성공!!!");
                            if(result!=null){
                           // alert(result);
                            $('#dataTable tr:gt(0)').empty();
                         var str = "";
                         $.each(result,function(index,item){
                            str+='<tr>';
                            str+='<td>'+item.academyNo+'</td>';
                            str+='<td>'+item.academyName+'</td>';
                            str+='<td>'+item.academyAddrCity+'</td>';
                            str+='<td>'+item.academyAddrDetail+'</td>';
                            str+='<td><input type="submit" class="btn btn-dark" value="수정"></td>';
                            str+='<td><input type="button" class="btn btn-dark" value="삭제" id='+item.academyNo+'></td>';
                            str+='</tr>';
                         });
                         $('#dataTable').append(str);
                            }else alert("등록된 교육원이 없습니다.");
                           },
                        error : function(err){
                         alert("통신실패!!!! err : " + err);
                     } 
                     });
                }

                
                $('#dataTable').on('click','input[value=삭제]',function() {
                	
                    alert($(this).attr('id'));
                    $.ajax({
                    url:"${pageContext.request.contextPath}/admin/academy/delete",
                    type:"delete",
                    data:"academyNo="+$(this).attr('id'),
                    dataType:"text",
                    success:function(){
                       alert("삭제완료");
                       printAcademy();
                    },error:function(err){
                       alert("안눌려");
                    }
                 })
              });//delete
              
              })
              </script>
</body>
</html>