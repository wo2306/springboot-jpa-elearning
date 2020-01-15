<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			<section
				class="inner-header divider parallax layer-overlay overlay-dark-5"
				data-bg-img="http://placehold.it/1920x1280">
				<div class="container pt-70 pb-20">
					<!-- Section Content -->
					<div class="section-content">
						<div class="row">
							<div class="col-md-12">
								<h2 class="title text-white">관리자 페이지</h2>
								<ol class="breadcrumb text-left text-black mt-10">
									<li><a href="${pageContext.request.contextPath}/admin"><h3>Home</h3></a></li>
									<!-- Topbar Search -->
									<li>
										<form name="serchForm" method="post">
											<div class="input-group" style="padding-left: 730px">
												<select name="key"
													style="background-color: #F8F9FC; margin-right: 10px;">
													<option value="">메뉴</option>
													<option value="noticeNo">글번호</option>
													<option value="noticeTitle">제목</option>
													<option value="noticeRegdate">등록일</option>
												</select> <input type="text" name="value" style="padding-left: 10px"
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
									</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Section: About -->
			<div class="author">
				<span class="author"><strong>글번호 : ${item.noticeNo}
				</strong></span> <span class="option"
					fxd-data="{&quot;id&quot;:20900,&quot;type&quot;:&quot;question&quot;}">
				</span>
			</div>

			<div class="article_body">${question.classQuestionContent }</div>

			<hr>
			<h4>
				<span><strong>제목 : </strong></span><b>${item.noticeTitle}</b>
			</h4>
			<form>
				<textarea name="classAnswerContent" rows="17" cols="70">${item.noticeContent}</textarea>
				<br> <input type="button" value="뒤로가기"
					style="color: #FFFFFF; background: #202C45; padding: 5px 12px"
					onClick="location.href='${pageContext.request.contextPath}/notice'">
			</form>
			<!-- Divider: Call To Action -->
			<section class="bg-theme-color-2">
				<div class="container pt-10 pb-20">
					<div class="row">
						<div class="call-to-action">
							<div class="col-md-6">
								<h3 class="mt-5 mb-5 text-white vertical-align-middle">
									<i class="pe-7s-mail mr-10 font-48 vertical-align-middle"></i>
									SUBSCRIBE TO OUR NEWSLETTER
								</h3>
							</div>
							<div class="col-md-6">
								<!-- Mailchimp Subscription Form Starts Here -->
								<form id="mailchimp-subscription-form"
									class="newsletter-form mt-10">
									<div class="input-group">
										<span class="input-group-btn"> </span>
									</div>
								</form>
								<!-- Mailchimp Subscription Form Ends Here -->
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- <script type="text/javascript">
              $(document).ready(function(){ 
               
                
                //전체레코드 가져오기
                function printUser() {
                   $.ajax({
                         type :"post",
                         url :"${pageContext.request.contextPath}/admin/user/",
                         dataType :"json",               
                         success : function(result){
                            alert("통신성공!!!");
                            if(result!=null){
                            alert(result);
                            $('#dataTable tr:gt(0)').empty();
                         var str = "";
                         $.each(result,function(index,item){
                            str+='<tr>';
                            str+='<td>'+item.userdbNo+'</td>';
                            str+='<td>'+item.userdbEmail+'</td>';
                            str+='<td>'+item.userdbNickname+'</td>';
                            str+='<td><input type="submit" value="수정"></td>';
                            str+='<td><input type="button" value="삭제" id='+item.userdbNo+'></td>';
                            str+='</tr>';
                         });
                         $('#dataTable').append(str);
                            }else alert("등록된 유저가 없습니다.");
                           },
                        error : function(err){
                         alert("통신실패!!!! err : " + err);
                     } 
                     });
                }

                
                $('#dataTable').on('click','input[value=삭제]',function() {
                	
                    alert($(this).attr('id'));
                    $.ajax({
                    url:"${pageContext.request.contextPath}/admin/user/delete",
                    type:"delete",
                    data:"userdbNo="+$(this).attr('id'),
                    dataType:"text",
                    success:function(){
                       alert("삭제완료");
                       printUser();
                    },error:function(err){
                       alert("자식레코드있어서 못지워요");
                    }
                 })
              });//delete
              
              
              $(document).on('click','#search',function() {
              	
                  $.ajax({
                  url:"${pageContext.request.contextPath}/admin/user/search",
                  type:"post",
                  data:$("form[name=serchForm]").serialize() ,
                  dataType:"text",
                  success:function(){
                     alert("검색완료");
                     printUser();
                },error:function(err){
                     alert("통신오류");
                  }
               })
            });//search
              })
              </script> -->

</body>
</html>