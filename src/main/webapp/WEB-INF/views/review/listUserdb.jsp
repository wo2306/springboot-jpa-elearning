<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="bookmarks">
			<c:choose>
		<c:when test="${empty reviewList}">
			<p align="center">
				<b><div class="list-group-item">등록된 리뷰가 없습니다.</div></b>
			</p>
		</c:when>
		<c:otherwise>
			<table class="table">
				<tbody>
				<c:forEach items="${reviewList }" var="review">
					<tr>
						<th scope="row"><img src="http://placehold.it/100x50" alt=""></th>
						<td><h4>${review.onLecture.onLectureName}</h4></td>
						<td><h4>${review.reviewContent }</h4></td>
						<td><h4>
						<a href="#"><i class="fa fa-close"></i></a>
						</h4></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:otherwise>
			</c:choose>
		</div>
	</div>


	<span class="fa-hover"><i class="fa fa-star"></i> </span>
	<i class="fa fa-star-o"></i>
<br><br>

<%-- 
	<c:choose>
		<c:when test="${empty reviewList}">
			<p align="center">
				<b><div class="list-group-item">등록된 리뷰가 없습니다.</div></b>
			</p>
		</c:when>
		<c:otherwise>
			<li class="list-group-item list-group-item-warning"><strong>내 리뷰 리스트(작성자 : ${tempName})</strong></li>
			<c:forEach items="${reviewList }" var="review">
				<div class="list-group-item">
					<c:forEach var="i" begin="1" end="${review.reviewScore }">
						<span class="fa-hover"><i class="fa fa-star"></i> </span>
					</c:forEach>
					<c:forEach var="i" begin="${review.reviewScore }" end="4">
						<span class="fa-hover"><i class="fa fa-star-o"></i></i></span>
					</c:forEach>

					<span class="fa-hover">${review.reviewContent }</span><br>
				</div>
			</c:forEach>

		</c:otherwise>
	</c:choose> --%>
	<br>
	<br>




</body>
</html>