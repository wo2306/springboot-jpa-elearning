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

<span class="fa-hover"><i class="fa fa-star"></i> </span>
<i class="fa fa-star-o"></i>



<c:choose>
<c:when test="${empty reviewList}">
<p align="center"><b><div class="list-group-item">등록된 리뷰가 없습니다.</div></b></p>
</c:when>
<c:otherwise>
 <li class="list-group-item list-group-item-warning"><strong>강의별 리뷰 리스트</strong></li>
    <c:forEach items = "${reviewList }" var="review">
	 <div class="list-group-item">
		<c:forEach var="i" begin="1" end="${review.reviewScore }" >
			<span class="fa-hover"><i class="fa fa-star"></i> </span>
		</c:forEach>
		<c:forEach var="i" begin="${review.reviewScore }" end="4" >
			<span class="fa-hover"><i class="fa fa-star-o"></i></i></span>
		</c:forEach>
		<span class="fa-hover"> 작성자 : ${review.userdb.userdbNickname }</span><br>
		<span class="fa-hover">${review.reviewContent }</span><br>
		
		</div>
    </c:forEach>
    
    </c:otherwise> 
    </c:choose>





</body>
</html>