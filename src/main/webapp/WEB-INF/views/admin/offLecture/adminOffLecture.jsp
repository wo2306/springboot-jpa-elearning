<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
  <![endif]-->
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
								action="${pageContext.request.contextPath}/admin/offLecture/offLecUpdate"> --%>
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<tr>
									<th>offLectureNo</th>
									<th>academyName</th>
									<th>offLectureName</th>
									<th>offLectureTeacher</th>
									<th>category</th>
									<th>offLectureAvailableseat</th>
									<th>offDetail</th>
									<th>offLectureDate</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
								<c:forEach items="${requestScope.list}" var="list">
									<tr>
										<td>${list.offLectureNo}</td>
										<td>${list.academy.academyName}</td>
										<td>${list.offLectureName}</td>
										<td>${list.offLectureTeacher}</td>
										<td>${list.category}</td>
										<td>${list.offLectureSeat-list.offLectureReservedseat}</td>
										<td>${list.offDetail}</td>
										<td>${list.offLectureDate}</td>
										<td><input type="submit" onClick="location.href='${pageContext.request.contextPath}/admin/offLecture/offLecUpdate/${list.offLectureNo}'" value="수정" ></td>
										<td><input type="button" value="삭제" id=${list.offLectureNo}></td>
									</tr>
								</c:forEach>
							</table>
						<!-- 	</form> -->
						<h4>OffLecture 등록하기 :  </h4>
							<form name="writeForm" method="post"
								action="${pageContext.request.contextPath}/admin/offLecture/adminOffLectureRegister">
								<input type="submit" value="등록하기">
								
									

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
                         url :"${pageContext.request.contextPath}/admin/offLecture/this",
                         dataType :"json",               
                         success : function(result){
                            alert("통신성공!!!");
                            if(result!=null){
                            alert(result);
                            $('#dataTable tr:gt(0)').empty();
                         var str = "";
                         $.each(result,function(index,item){
                            str+='<tr>';
                            str+='<td>'+item.offLectureNo+'</td>';
                            str+='<td>'+item.academy.academyName+'</td>';
                            str+='<td>'+item.offLectureName+'</td>';
                            str+='<td>'+item.offLectureTeacher+'</td>';
                            str+='<td>'+item.category+'</td>';
                            str+='<td>'+item.offLectureAvailableseat+'</td>';
                            str+='<td>'+item.offDetail+'</td>';
                            str+='<td>'+item.offLectureDate+'</td>';
                            str+='<td><input type="submit" value="수정"></td>';
                            str+='<td><input type="button" value="삭제" id='+item.offLectureNo+'></td>';
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
                    url:"${pageContext.request.contextPath}/admin/offLecture/delete",
                    type:"delete",
                    data:"offLectureNo="+$(this).attr('id'),
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
              
              
              //수정하기 폼으로 이동하기
               /* $(function(){
	   
	   $("input[value=수정]").click(function(){
		   //document.requestForm.action="${pageContext.request.contextPath}/board/updateForm";
		   
		   $("#requestForm").attr("action", "${pageContext.request.contextPath}/admin/offLecture/offLecUpdate");
		   $("#requestForm").submit();
	   })
               } */
              
              </script>
</body>
</html>