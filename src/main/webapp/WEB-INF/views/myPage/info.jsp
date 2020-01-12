<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        <section class="inner-header divider parallax layer-overlay overlay-dark-5"
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
                                    <li role="presentation" class="active"><a href="#orders" aria-controls="orders"
                                                                              role="tab" data-toggle="tab"
                                                                              class="font-15 text-uppercase">온라인 강의
                                        <span class="badge"></span></a></li>
                                    <li role="presentation"><a href="#free-orders" aria-controls="free-orders"
                                                               role="tab" data-toggle="tab"
                                                               class="font-15 text-uppercase">오프라인 강의 <span class="badge">3</span></a></li>
                                    <li role="presentation"><a href="#wishlisttab" aria-controls="wishlisttab" role="tab"
                                                               data-toggle="tab" class="font-15 text-uppercase">위시리스트
                                        <span class="badge">4</span></a></li>
                                    <li role="presentation"><a href="#bookmarks" aria-controls="bookmarks" role="tab"
                                                               data-toggle="tab" class="font-15 text-uppercase">나의 질문
                                        <span class="badge">3</span></a></li>
                                    <li role="presentation"><a href="#bookmarks" aria-controls="bookmarks" role="tab"
                                                               data-toggle="tab" class="font-15 text-uppercase">나의 리뷰
                                        <span class="badge">2</span></a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="orders">
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>주문번호</th>
                                                    <th>주문날짜</th	>
                                                    <th>결제상태</th>
                                                    <th>총 결제 금액</th>
                                                    <th>상세조회</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:choose>
                                                    <c:when test="${orderList!=null}">
                                                        <c:forEach var="dto" items="${orderList}">
                                                            <c:if test="${beforeOrderCode ne dto.onOrderCode}">
                                                            <c:set var="beforeOrderCode" value="${dto.onOrderCode}"/>
                                                                <tr>
                                                                    <th scope="row" class="orderCode">${dto.onOrderCode}</th>
                                                                    <td>${dto.onOrderRegdate}</td>
                                                                    <td>${dto.onOrderMethod}</td>
                                                                    <td><fmt:formatNumber value="${dto.onOrderPrice}"
                                                                                          pattern="₩#,###"/></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target=".bs-example-modal-sm${dto.onOrderCode}">주문 내역 상세보기</button>

                                                                        <div class="modal fade bs-example-modal-sm${dto.onOrderCode}" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                                                                            <div class="modal-dialog modal-sm">
                                                                                <div class="modal-content">
                                                                                    <div class="modal-header">
                                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                                                        <h4 class="modal-title" id="myModalLabel3">구매 상세 내역</h4>
                                                                                    </div>
                                                                                    <div class="modal-body">
                                                                                        <div class="card-content">
                                                                                            <div class="total_amount_container"><div class="total_amount">${dto.onOrderCode}
                                                                                            </div>
                                                                                                <table class="table table-hover">
                                                                                                    <tbody>
                                                                                                    <tr>
                                                                                                        <th>총 결제 금액</th>
                                                                                                        <td><span style="text-align: right"><fmt:formatNumber value="${dto.onOrderPrice}" pattern="₩#,###"/></span></td>
                                                                                                    </tr>
                                                                                                    <c:forEach var="detail" items="${orderList}">
                                                                                                            <c:if test="${detail.onOrderCode eq dto.onOrderCode}">
                                                                                                                <tr>
                                                                                                            <td>
                                                                                                                ${detail.onlecture.onLectureName}
                                                                                                            </td>
                                                                                                            <td><fmt:formatNumber value="${detail.onlecture.onLecturePrice}" pattern="₩#,###"/></td>
                                                                                                                </tr>
                                                                                                            </c:if>
                                                                                                        </c:forEach>
                                                                                                    <tr>
                                                                                                        <th>주문 상태</th>
                                                                                                        <td><span class="payment_status">${dto.onOrderState}</span></td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <th>주문 시각</th>
                                                                                                        <td><time datetime="Sat Dec 28 2019 14:27:27 GMT+0900 (GMT+09:00)">${dto.onOrderRegdate}</time></td>
                                                                                                    </tr>
                                                                                                    <tr><th>결제 수단</th><td>${dto.onOrderMethod}</td></tr>
                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="modal-footer">
                                                                                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                                                                        <button type="button" class="btn btn-primary text-white">문의하기</button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </c:if>
                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <tr>
                                                            <td colspan="5" style="text-align: center">주문 내역이 존재하지
                                                                않습니다
                                                            </td>
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
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">#1189</th>
                                                <td>24/07/2016</td>
                                                <td>PayPal</td>
                                                <td>$127.50</td>
                                                <td><a class="btn btn-success btn-xs" href="#">주문 내역 상세 보기</a></td>
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

                                    <div role="tabpanel" class="tab-pane" id="bookmarks">
                                        <table class="table">
                                            <tbody>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>Web Development Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>Software Development Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>App Development Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
                                            </tr>
                                            <tr>
                                                <th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
                                                <td><h4>Photoshop Course</h4>
                                                <td><h4>$127.50</h4>
                                                <td><h4><a href="#"><i class="fa fa-close"></i></a></h4>
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