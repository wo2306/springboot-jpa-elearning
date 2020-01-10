<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
  <head>
    <title>Playlist Updates</title>
  </head>
  <body>
    <div id="login-container" class="pre-auth">This application requires access to your YouTube account.
      Please <a href="#" id="login-link">authorize</a> to continue.
    </div>
    <div id="buttons">
      <button id="playlist-button" disabled onclick="createPlaylist()">Create a new Private Playlist</button>
      <br>
      <label>Current Playlist Id: <input id="playlist-id" value='' type="text"/></label>
      <br>
      <label>Video Id: <input id="video-id" value='GZG9G5txtaE' type="text"/></label><button onclick="addVideoToPlaylist()">Add to current playlist</button>
    </div>
    <h3>Playlist: <span id="playlist-title"></span></h3>
    <p id="playlist-description"></p>
    <div id="playlist-container">
      <span id="status">No Videos</span>
    </div>
    <script src="${pageContext.request.contextPath}/js/_static/js/jquery-bundle.js"></script>
    <script src="${pageContext.request.contextPath}/js/auth.js"></script>
    <script src="${pageContext.request.contextPath}/js/playlist_updates.js"></script>
    <script src="https://apis.google.com/js/client.js?onload=googleApiClientReady"></script>
  </body>
</html>