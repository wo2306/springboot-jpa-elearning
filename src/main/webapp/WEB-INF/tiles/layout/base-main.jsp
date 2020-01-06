<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title></title>
    <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

</head>
<body>
<section class="content">
    <tiles:insertAttribute name="header"/> <!--  /WEB-INF/views/layout/header.jsp -->
    <tiles:insertAttribute name="body"/> <!-- body -->

    <tiles:insertAttribute name="footer"/> <!-- /WEB-INF/views/layout/footer.jsp -->
</section>
</body>
</html>