<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
  <head>
    <title>My Uploads</title>
    <link rel="stylesheet" type="text/css" href="my_uploads.css">
  </head>
  <body>
    <div id="login-container" class="pre-auth">
      This application requires access to your YouTube account.
      Please <a href="#" id="login-link">authorize</a> to continue.
    </div>
    <div id="video-container"></div>
    <div class="button-container">
      <button id="prev-button" class="paging-button" onclick="previousPage();">Previous Page</button>
      <button id="next-button" class="paging-button" onclick="nextPage();">Next Page</button>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/auth.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/my_uploads.js"></script>
    <script src="https://apis.google.com/js/client.js?onload=googleApiClientReady"></script>
  </body>
</html>
