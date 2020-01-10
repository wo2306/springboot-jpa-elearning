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

<form name="updateForm" method="post"
								action="${pageContext.request.contextPath}/admin/academy/adminAcademyUpdate/{academyNo}">
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
										<td><input type="submit" value="수정"></td>
										<td><input type="button" value="삭제" id=${list.academyNo}></td>
									</tr>
								</c:forEach>
							</table>
							</form>
							<form name="writeForm" method="post"
								action="${pageContext.request.contextPath}/admin/academy/adminAcademyRegister">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<tr>
										<th>등록</th>
									</tr>
									<tr>
										<td><input type="submit" value="등록"></td>
									</tr>
								</table>

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

							<!-- Divider: Call To Action -->
    <section class="bg-theme-color-2">
      <div class="container pt-10 pb-20">
        <div class="row">
          <div class="call-to-action">
            <div class="col-md-6">
              <h3 class="mt-5 mb-5 text-white vertical-align-middle"><i class="pe-7s-mail mr-10 font-48 vertical-align-middle"></i> SUBSCRIBE TO OUR NEWSLETTER</h3>
            </div>
            <div class="col-md-6">
              <!-- Mailchimp Subscription Form Starts Here -->
              <form id="mailchimp-subscription-form" class="newsletter-form mt-10">
                <div class="input-group">
                  <input type="email" value="" name="EMAIL" placeholder="Your Email" class="form-control input-lg font-16" data-height="45px" id="mce-EMAIL-footer">
                  <span class="input-group-btn">
                    <button data-height="45px" class="btn bg-theme-colored text-white btn-xs m-0 font-14" type="submit">Subscribe</button>
                  </span>
                </div>
              </form>
              <!-- Mailchimp Subscription Form Validation-->
              <script type="text/javascript">
                $('#mailchimp-subscription-form').ajaxChimp({
                    callback: mailChimpCallBack,
                    url: '//thememascot.us9.list-manage.com/subscribe/post?u=a01f440178e35febc8cf4e51f&amp;id=49d6d30e1e'
                });

                function mailChimpCallBack(resp) {
                    // Hide any previous response text
                    var $mailchimpform = $('#mailchimp-subscription-form'),
                        $response = '';
                    $mailchimpform.children(".alert").remove();
                    if (resp.result === 'success') {
                        $response = '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' + resp.msg + '</div>';
                    } else if (resp.result === 'error') {
                        $response = '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' + resp.msg + '</div>';
                    }
                    $mailchimpform.prepend($response);
                }
                
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
                            str+='<td><input type="submit" value="수정"></td>';
                            str+='<td><input type="button" value="삭제" id='+item.academyNo+'></td>';
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
              </script>
              <!-- Mailchimp Subscription Form Ends Here -->
            </div>
          </div>
        </div>
      </div>
    </section>

  </div>
</div>
</body>

</html>