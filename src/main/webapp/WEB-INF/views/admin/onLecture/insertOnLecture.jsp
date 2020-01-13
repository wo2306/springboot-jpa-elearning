<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>


<head>
   <!-- Favicon and Touch Icons -->
    <link href="${pageContext.request.contextPath}/images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-72x72.png" rel="apple-touch-icon"
          sizes="72x72">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-114x114.png" rel="apple-touch-icon"
          sizes="114x114">
    <link href="${pageContext.request.contextPath}/images/apple-touch-icon-144x144.png" rel="apple-touch-icon"
          sizes="144x144">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/css-plugin-collections.css" rel="stylesheet"/>
    <!-- CSS | menuzord megamenu skins -->
    <link id="menuzord-menu-skins"
          href="${pageContext.request.contextPath}/css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>
    <!-- CSS | Main style file -->
    <link href="${pageContext.request.contextPath}/css/style-main.css" rel="stylesheet" type="text/css">
    <!-- CSS | Preloader Styles -->
    <link href="${pageContext.request.contextPath}/css/preloader.css" rel="stylesheet" type="text/css">
    <!-- CSS | Custom Margin Padding Collection -->
    <link href="${pageContext.request.contextPath}/css/custom-bootstrap-margin-padding.css" rel="stylesheet"
          type="text/css">
    <!-- CSS | Responsive media queries -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" type="text/css">
    <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">

    <!-- CSS | Theme Color -->
    <link href="${pageContext.request.contextPath}/css/colors/theme-skin-color-set-1.css" rel="stylesheet"
          type="text/css">

    <!-- external javascripts -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!-- JS | jquery plugin collection for this theme -->
    <script src="${pageContext.request.contextPath}/js/jquery-plugin-collection.js"></script>

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script type="text/javascript">
		$(function () {
			console.log(44)
			$('#addForm').click(function () {
			console.log(787)
				var str;
			str+='<div><h3>세부강의등록하기-----------------------</h3></div>';
				str+='<div class="form-group"><label>onDetailName (세부강의내용)</label><input type="text" class="form-control" placeholder="onDetail네임(세부강의목록)"';
				str+='name="onDetailName"></div><div class="form-group"><label>File input</label><input type="file" name="onLectureFile">';
				str+='<p class="help-block">Example block-level help text here.</p></div>';
				 $(this).after(str);
			});
		});
/* 
	      //폼 배열화
	      $(document).on("submit", "#submitOnLecture" ,function(){
			alert(6);});
	      
	      function _submit(f) {
			
		   //같이 보낼 값 정리
		    if (typeof(f.elements['chk[]'].length) == 'undefined') //단일
		    {
		        if (f.elements['chk[]'].checked==false) 
		        {
		            f.elements['field_a[]'].disabled=true; 
		            f.elements['field_b[]'].disabled=true; 
		        }
		   } else { //다중
		        for (i=0; i<f.elements['chk[]'].length; i++) 
		        {
		            if (f.elements['chk[]'][i].checked==false)
		            {
		                f.elements['field_a[]'][i].disabled=true;
		                f.elements['field_b[]'][i].disabled=true;
		            }
		        }
		    }
	    return true;  
			
			
		}
			 */

		
		/* 
		$(function () {
			console.log(44)
			$('#addForm').click(function () {
			console.log(787)
		   //같이 보낼 값 정리
			    if (typeof(f.elements['chk[]'].length) == 'undefined') //단일
			    {
			        if (f.elements['chk[]'].checked==false) 
			        {
			            f.elements['field_a[]'].disabled=true; 
			            f.elements['field_b[]'].disabled=true; 
			        }
		   } else { //다중
			        for (i=0; i<f.elements['chk[]'].length; i++) 
			        {
			            if (f.elements['chk[]'][i].checked==false)
			            {
			                f.elements['field_a[]'][i].disabled=true;
			                f.elements['field_b[]'][i].disabled=true;
			            }
			        }
			    }
		    return true;


			});
		}); */
		
/* 		$(function(){
			alert(1)
		})
		function checkValid() {
			var f = window.document.updateForm;
			if ( f.modelName.value == "" ) {
				alert( "모델이름을 입력해 주세요." );
				f.modelName.focus();
				return false;
			}
			if ( f.price.value == "" ) {
				alert( "가격을 입력해 주세요." );
				f.price.focus();
				return false;
			}
			if ( f.description.value == "" ) {
		        alert( "상품 설명을 입력해 주세요." );
		        f.description.focus();
		        return false;
		    }
			if ( f.password.value == "" ) {
		        alert( "비밀번호를 입력해 주세요" );
		        f.password.focus();
		        return false;
		    }
			
		    return true;
		}
 */
 
 
		
    </script>


<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

 
</head>

<body class="">
	<div id="wrapper" class="clearfix">
	
	<h1>온렉쳐 인설트 양식</h1>
	
	<form action="${pageContext.request.contextPath}/admin/onLecture/insert" method="post">
	  <div class="form-group">
	    <label>온라인 강의 명</label>
	    <input type="text" class="form-control" placeholder="온라인 강의 명" name="onLectureName">
	  </div>
	  <div class="form-group">
	    <label>강의 카테고리</label>
	    <input type="text" class="form-control" placeholder="ex) java, 알고리즘, python ..." name="onLectureCategory">
	  </div>
	  <div class="form-group">
	    <label>강의 선생님명</label>
	    <input type="text" class="form-control" placeholder="ex) 장희정" name="onLectureTeacher">
	  </div>
	  <div class="form-group">
	    <label>강의 가격</label>
	    <input type="number" class="form-control" placeholder="ex) 25000" name="onLecturePrice">
	  </div>
	  <div class="form-group">
	    <label>강의 내용설명</label>
	    <input type="text" class="form-control" placeholder="강의에 대한 설명을 쓰세요" name="onLectureContent">
	  </div>
	  <div class="form-group">
	    <label>썸네일용 강의 설명</label>
	    <input type="text" class="form-control" placeholder="썸네일용 강의 설명" name="onLectureSummary">
	  </div>
	  <div>
	  	<h3>세부강의등록하기-----------------------</h3>
	  </div>
	  <div class="form-group">
	    <label>onDetailName (세부강의내용)</label>
	    <input type="text" class="form-control" placeholder="onDetail네임(세부강의목록)" name="onDetailName[]">
	  </div>
	  <div class="form-group">
	    <label>File input</label>
	    <input type="file" name="onLectureFile[]">
	    <p class="help-block">Example block-level help text here.</p>
	  </div>
	  <div class="checkbox">
	      <input type="button" value="강의 추가하기" id="addForm" > 
	      <input type="button" value="강의 삭제하기" id="removeForm" > 
	  </div>
	  <button type="submit" class="btn btn-default" id="">강의 등록 완료</button>
	</form>  
	
	</div>
</body>
</html>