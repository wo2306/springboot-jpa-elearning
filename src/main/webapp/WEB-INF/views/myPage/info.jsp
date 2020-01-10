<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>
<title>LM company | Learning Machine</title>

</head>

<body class="">
	<div id="wrapper" class="clearfix">
		<!-- preloader -->
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
								<h2 class="title text-white">마이 페이지</h2>
								<ol class="breadcrumb text-left text-black mt-10">
									<li><a href="#">홈</a></li>
									<li><a href="#">마이페이지</a></li>
									<li class="active text-gray-silver">구매내역 조회</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Section: Doctor Details -->
			<section class="">
				<div class="container">
					<div class="section-content">
						<div class="row">
							<div class="col-xs-12 col-sm-8 col-md-12">
								<div>
									<!-- Nav tabs -->
									<ul class="nav nav-tabs" role="tablist" id="myTab">
										<li role="presentation" class="active"><a href="#orders"
											aria-controls="orders" role="tab" data-toggle="tab"
											class="font-15 text-uppercase">온라인 강의 <span class="badge"></span></a></li>
										<li role="presentation"><a href="#free-orders"
											aria-controls="free-orders" role="tab" data-toggle="tab"
											class="font-15 text-uppercase">오프라인 강의 <span
												class="badge">3</span></a></li>
										<li role="presentation"><a href="#wishlisttab"
											aria-controls="wishlisttab" role="tab" data-toggle="tab"
											class="font-15 text-uppercase">위시리스트 <span class="badge">4</span></a></li>
										<li role="presentation"><a href="#bookmarks"
											aria-controls="bookmarks" role="tab" data-toggle="tab"
											class="font-15 text-uppercase">나의 질문 <span class="badge">3</span></a></li>
										<li role="presentation"><a href="#bookmarks"
											aria-controls="bookmarks" role="tab" data-toggle="tab"
											class="font-15 text-uppercase">나의 리뷰 <span class="badge">2</span></a></li>
									</ul>

									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="orders">
											<div class="table-responsive">
												<table class="table table-hover">
													<thead>
														<tr>
															<th>주문번호</th>
															<th>주문날짜</th>
															<th>결제수단</th>
															<th>총 결제 금액</th>
															<th>상세조회</th>
															<th>리 뷰</th>
														</tr>
													</thead>
													<tbody>
														<c:choose>
															<c:when test="${list!=null}">
																<c:set var="beforeOrderCode" />
																<c:forEach var="dto" items="${list}">
																	<c:if test="${beforeOrderCode ne dto.onOrderCode}">
																		<tr>
																			<th scope="row">${dto.onOrderCode}</th>
																			<td>${dto.onOrderRegdate}</td>
																			<td>${dto.onOrderMethod}</td>
																			<td><fmt:formatNumber
																					value="${dto.onOrderPrice}" pattern="₩#,###" /></td>
																			<td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
																			<td>
																				<div class="col-md-12">


																					<!-- popup modal click trigger -->
																					<a href="#promoModal1" data-lightbox="inline"
																						class="btn btn-success btn-xs"">리뷰 등록</a>

																					<!-- popup modal -->
																					<div id="promoModal1"
																						class="modal-promo-box bg-img-cover mfp-hide"
																						data-bg-img="http://placehold.it/1920x1280"
																						style="background-image: url(&quot;http://placehold.it/1920x1280&quot;);">
																						<h4 class="mt-0 text-white ">리뷰쓰기</h4>
																						
																						<form id="mailchimp-subscription-form"
																							class="newsletter-form mt-30" novalidate="true">

																							<div class="input-group">
																								<input type="email" id="reviewContent"
																									data-height="40px"
																									class="form-control input-lg"
																									placeholder="리뷰 내용" name="reviewContent" value=""
																									style="height: 40px;"> <span
																									class="input-group-btn">
																									<input type="hidden" id="userdbNo" value="${dto.userdb.userdbNo}">
																									<input type="hidden" id="onlectureNo" value="${dto.onlecture.onLectureNo}">
																									<button type="submit"
																										class="btn btn-colored btn-theme-colored btn-xs m-0"
																										data-height="40px" style="height: 40px;">등록</button>
																								</span>
																							</div>
																						</form>

																						<!-- Mailchimp Subscription Form Validation-->
																						<script type="text/javascript">
                $('#mailchimp-subscription-form').click(function(){
                	
                	var reviewContent = $('#reviewContent').val();
                	var userdbNo = $('#userdbNo').val();
                	var onlectureNo = $('#onlectureNo').val();
            
                	 $.ajax({
                         type:"POST",
                         url:"${pageContext.request.contextPath}/review/insert",            
                         data: "${_csrf.parameterName}=${_csrf.token}&reviewContent="+reviewContent+"&userdbNo="+userdbNo+"&onlectureNo="+onlectureNo,
                         dataType:"json",
                         success:function(result){                  

                               alert(1);
                                  
                         }//callback         
                      });//ajax
                	
                })
              

              
              </script>

																						<a href="#" class="button text-white"
																							onclick="$.magnificPopup.close(); return false;">닫기</a>
																					</div>

																					<!-- popup modal onLoad trigger -->
																					<div class="modal-on-load enable-cookie"
																						data-target="#promoModal1"></div>

																				</div>
																			</td>

																			<c:set var="beforeOrderCode"
																				value="${dto.onOrderCode}" />
																		</tr>
																	</c:if>
																</c:forEach>
															</c:when>
															<c:otherwise>
																<tr>
																	<td colspan="5" style="text-align: center">주문 내역이
																		존재하지 않습니다</td>
																</tr>
															</c:otherwise>
														</c:choose>
													</tbody>
												</table>
											</div>
										</div>
										<div role="tabpanel" class="tab-pane" id="free-orders">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>주문번호</th>
														<th>주문날짜</th>
														<th>결제수단</th>
														<th>총 결제 금액</th>
														<th>상세조회</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="row">#1189</th>
														<td>24/07/2016</td>
														<td>PayPal</td>
														<td>$127.50</td>
														<td><a class="btn btn-success btn-xs" href="#">주문
																내역 상세 보기</a></td>
													</tr>
													<tr>
														<th scope="row">#1189</th>
														<td>24/07/2016</td>
														<td>PayPal</td>
														<td>$127.50</td>
														<td><a class="btn btn-success btn-xs" href="#">주문
																내역 상세 보기</a></td>
													</tr>
													<tr>
														<th scope="row">#1189</th>
														<td>24/07/2016</td>
														<td>PayPal</td>
														<td>$127.50</td>
														<td><a class="btn btn-success btn-xs" href="#">주문
																내역 상세 보기</a></td>
													</tr>
													<tr>
														<th scope="row">#1189</th>
														<td>24/07/2016</td>
														<td>PayPal</td>
														<td>$127.50</td>
														<td><a class="btn btn-success btn-xs" href="#">주문
																내역 상세 보기</a></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div role="tabpanel" class="tab-pane" id="wishlisttab">
											<table class="table" id="wishlisttable">
												<tbody>
													<tr>
														<th>강의번호</th>
														<th>강의제목</th>
														<th>가격</th>
														<th>삭제</th>
													</tr>
													<tr>
														<th><span id="etx"></span></th>
													</tr>
												</tbody>
											</table>
										</div>


		<div role="tabpanel" class="tab-pane active" id="bookmarks">
			<c:choose>
		<c:when test="${empty reviewList}">
			<p align="center">
				<b><div class="list-group-item">등록된 리뷰가 없습니다.</div></b>
			</p>
		</c:when>
		<c:otherwise>
			<table class="table">
				<thead>
													<tr>
														<th></th>
														<th>온라인 강의 이름</th>
														<th>리뷰 내용</th>
														<th>삭제</th>
													</tr>
												</thead>
				<tbody>
				<c:forEach items="${reviewList }" var="review">
					<tr>
						<th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
						<td><h4>${review.onLecture.onLectureName}</h4></td>
						<td><h4>${review.reviewContent }</h4></td>
						<td><h4>
						<a href="#" class="reviewDelete"><i class="fa fa-close"></i></a>
						</h4></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:otherwise>
			</c:choose>
		</div>
		
		<script type="text/javascript">
        $('.reviewDelete').click(function(){
        	 $.ajax({
                 type:"POST",
                 url:"${pageContext.request.contextPath}/review/delete",            
                 data: "${_csrf.parameterName}=${_csrf.token}&",
                 dataType:"json",
                 success:function(result){                  

                       alert(1);
                          
                 }//callback         
              });//ajax
        	
        })
			
		</script>
		
		
		
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
	<script type="text/javascript">
    $(document).ready(function () {

        //전체레코드 가져오기
        function printwishlist() {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/myPage/info/wishlisttab",
                dataType :"json",               
                success : function(result){
                	//alert("통신성공!!!");
                	if(result!=null){
                	alert(result);
                	$('#wishlisttable tr:gt(0)').empty();
    				var str = "";
    				$.each(result,function(index,item){
    					str+='<tr>';
    					str+='<td>'+'<a href="${pageContext.request.contextPath}/onLecture/detail">'+item.onLecture.onLectureNo+'</a>'+'</td>';
    					str+='<td>'+'<a href="${pageContext.request.contextPath}/onLecture/detail?onLectureNo="+item.onLecture.onLectureNo>'+item.onLecture.onLectureName+'</a>'+'</td>';
    					str+='<td>'+item.onLecturePrice+'</td>';
    					str+='<td><input type="button" value="삭제" id='+item.wishListNo+'></td>';
    					str+='</tr>';
    				});
    				$('#wishlisttable').append(str);
                    } else alert("위시리스트에 항목이 없습니다.");
                },
                error: function (err) {
                    alert("통신실패!!!! err : " + err);
                }
            });
        }

        $('#myTab li:eq(2) a').on('click', function () {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/myPage/info/wishlisttab",
                dataType :"json",               
                success : function(result){
                	alert("통신성공!!!");
                	if(result!=null){
                	alert(result);
                	$('#wishlisttable tr:gt(0)').empty();
    				var str = "";
    				$.each(result,function(index,item){
    					str+='<tr>';
    					str+='<td>'+'<a href="${pageContext.request.contextPath}/onLecture/detail">'+item.onLecture.onLectureNo+'</a>'+'</td>';
    					str+='<td>'+'<a href="${pageContext.request.contextPath}/onLecture/detail?onLectureNo="+item.onLecture.onLectureNo>'+item.onLecture.onLectureName+'</a>'+'</td>';
    					str+='<td>'+item.onLecturePrice+'</td>';
                        str += '<td><input type="button" value="삭제" id=' + item.wishListNo + '></td>';
                        str += '</tr>';
                    });
                        $('#wishlisttable').append(str);
                    } else alert("위시리스트에 항목이 없습니다.");
                },
                error: function (err) {
                    alert("통신실패!!!! err : " + err);
                }
            });
        });


        $('#wishlisttable').on('click', 'input[value=삭제]', function () {
            alert($(this).attr('id'));
            $.ajax({
                url: "${pageContext.request.contextPath}/myPage/delete",
			type:"delete",
			data:"wishListNo="+$(this).attr('id'),
			dataType:"text",
			success:function(){
				alert("삭제완료");
			//	printwishlist();
			},error:function(err){
				alert("안눌려");
			}
		})
	});//delete
    	
    });//ready
    
 
</script>
</body>
</html>