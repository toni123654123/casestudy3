<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>TT-SHOP</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Copyright" content="arirusmanto.com">
    <meta name="description" content="Admin MOS Template">
    <meta name="keywords" content="Admin Page">
    <meta name="author" content="Ari Rusmanto">
    <meta name="language" content="Bahasa Indonesia">

    <link rel="shortcut icon" href="stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
    <link rel="stylesheet" type="text/css" href="mos-css/mos-style.css"> <!--pemanggilan file css-->
</head>

<body>
<%
    String s = "";
    if (session.getAttribute("error") != null) {
        s = (String) session.getAttribute("error");
    }
%>
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header -->

<div id="wrapper">
    <!-- memnu -->
    <jsp:include page="menu.jsp"></jsp:include>
    <!-- memnu -->
    <div id="rightContent">
        <h3>Chỉnh sửa danh mục</h3>

        <form action="qlChuyenMuc" method="POST">

            <table width="95%">

                <c:if test="${cm != null}">
                    <input type="text" class="sedang" name="maDanhMuc" value="<c:out value='${cm.maCM}' />" hidden="hidden">
                </c:if>

                <tr>
                    <td style="float: right;"><b>Tên danh mục: </b>
                    </td>
                    <td><input type="text" class="sedang" name="tenDanhMuc" value="<c:out value='${cm.tenCM}' />"></td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <input type="hidden" name="command" value="update">
                        <input type="submit" class="button" value="Lưu dữ liệu">

                    </td>
                </tr>
            </table>
        </form>
    </div>
    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- footer -->
</div>
</body>
</html>