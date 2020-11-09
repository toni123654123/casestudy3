<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 9/11/2020
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TT-SHOP</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Copyright" content="arirusmanto.com">
    <meta name="description" content="Admin MOS Template">
    <meta name="keywords" content="Admin Page">
    <meta name="author" content="Ari Rusmanto">
    <meta name="language" content="Bahasa Indonesia">
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link href="${root}/mos-css/mos-style.css" rel='stylesheet' type='text/css' />
    <script src="${root}/js/jquery-1.11.1.min.js"></script>
    <link rel="shortcut icon" href="stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
    <link rel="stylesheet" type="text/css" href="mos-css/mos-style.css"> <!--pemanggilan file css-->
</head>
<body>
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header -->
<div id="wrapper">
    <!-- memnu -->
    <jsp:include page="menu.jsp"></jsp:include>
    <!-- memnu -->
    <!-- content -->
    <jsp:include page="content.jsp"></jsp:include>
    <!-- content -->

    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- footer -->
</div>

</body>
</html>
