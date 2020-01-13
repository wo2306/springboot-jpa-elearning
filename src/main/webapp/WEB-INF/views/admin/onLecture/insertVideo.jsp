<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<head>

<!-- Page Title -->
<title>LM company | Learning Machine | main</title>

<style type="text/css">
.main-bg{
	background-image: url("${pageContext.request.contextPath}images/index/main2.png");
	background-repeat: no-repeat;
	background-size: 100%;
}
</style>

</head>

		<form>
		  <div class="form-group">
		    <label for="exampleInputEmail2">Email address</label>
		    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword2">Password</label>
		    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputFile2">File input</label>
		    <input type="file" id="exampleInputFile2">
		    <p class="help-block">Example block-level help text here.</p>
		  </div>
		  <div class="checkbox">
		    <label>
		      <input type="checkbox"> Check me out
		    </label>
		  </div>
		  <button type="submit" class="btn btn-default">Submit</button>
		</form>       

</body>
</html>