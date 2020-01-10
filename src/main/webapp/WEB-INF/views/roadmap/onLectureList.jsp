<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<!-- Page Title -->
<title>StudyPress | Education & Courses HTML Template</title>

<!-- Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/css-plugin-collections.css" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link id="menuzord-menu-skins" href="css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="css/style-main.css" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="css/preloader.css" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- CSS | Theme Color -->
<link href="css/colors/theme-skin-color-set-1.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="js/jquery-plugin-collection.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
	$(function(){

		$(".btn").click(function(){
			var onLectureNo = $(this).val()
			/* alert($(this).val()); */
			
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/roadmap/onLectureAdd",				
				data:"${_csrf.parameterName}=${_csrf.token}&onLectureNo="+onLectureNo,
				dataType:"json",
				success:function(result){						
 	 					alert("성공")
						alert(result)
						var objectValues = result;
						 
						for (var key in objectValues){
						    console.log("attr: " + key + ", value: " + objectValues[key]);
						}   
						
  						 var data="<tr class='onLecture_item'>";
	                      data+="<td class='onLecture-remove'>"+"</td>";
	                      data+="<td class='product-thumbnail'>"+"<a href='#'>"+"<img alt='member' src='http://placehold.it/285x300'>"+"</a>"+"</td>";
	                      data+="<td class='onLecture-name'>"+"<a href='#'>"+result.onLectureName+"</a>"+"</td>"
	                      data+="<td class='onLecture-content'>"+"<span class='content'>"+result.onLectureContent+"</span>"+"</td>";
	        			  data+="<td class='onLecture-teacher'>"+"<span class='teacher'>"+result.onLectureTeacher+"</span>"+"</td>";
	                      data+="<td class='onLecture-price'>"+"<span class='price'>"+result.onLecturePrice+"</span>"+"</td>";
	                  	  data+="</tr>";
	                  	  data+="<tr class='cart_item'>";
	                      data+="<td colspan='6'>"+"<div class='onlecture'>";
	                      data+="<button type='button' class='btn' value='${list.onLectureNo}'>"+"취소"+"</button>";
	                      data+="</div>"+"</td>";
	                      data+="</tr>";
	                    	$('#table').append(data);		  
						  
						 
							
				}//callback			
			});//ajax
			
			
		})
	})

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
              <h2 class="title text-white">강의 리스트</h2>
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
 
          <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-striped table-bordered tbl-shopping-cart">
                  <thead>
                    <tr>
                      <th></th>
                      <th>Photo</th>
                      <th>Onlecture name</th>
                      <th>Onlecture content</th>
                      <th>Teacher</th>
                      <th>Onlecture price</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${onLectureList}" var="list" varStatus="status">
                    <tr class="onLecture_item">
                      <td class="onLecture-remove"><a title="Remove this item" class="remove" href="#"></a></td>
                      <td class="product-thumbnail"><a href="#"><img alt="member" src="http://placehold.it/285x300"></a></td>
                      <td class="onLecture-name"><a href="#">${list.onLectureName}</a>
                      <td class="onLecture-content"><span class="content">${list.onLectureContent}</span></td>
        			  <td class="onLecture-teacher"><span class="teacher">${list.onLectureTeacher}</span></td>
                      <td class="onLecture-price"><span class="price">${list.onLecturePrice}</span>
                      </td>
                    </tr>
                    <tr class="cart_item">
                      <td colspan="6"><div class="onlecture">
                    <!--   <form name="requestForm" method="post" id="requestForm"> -->
                     	  <input type="hidden" name="id" value="${list.onLectureNo}"/>
                          <button type="button" class="btn" value="${list.onLectureNo}">강의 선택하기</button>
                      <!--  </form> -->
                        </div></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
                <div class="col-md-12">
                  <h3>선택한 강의</h3>
                  <hr>
                  </div>
                  
                     <table class="table table-striped table-bordered tbl-shopping-cart" id="table">
                  <thead>
                    <tr>
                      <th></th>
                      <th>Photo</th>
                      <th>Onlecture name</th>
                      <th>Onlecture content</th>
                      <th>Teacher</th>
                      <th>Onlecture price</th>
                    </tr>
                  </thead>
   
                </table>
     
                  
                  <button type="button" class="btn" value="">강의 선택 완료</button>
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
<!-- end wrapper --> 

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="js/custom.js"></script>

</body>
</html>