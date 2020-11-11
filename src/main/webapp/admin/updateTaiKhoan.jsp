<%@ page import="model.TaiKhoan" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>LT-SHOP Dashboard</title>
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
        <h3>Chỉnh sửa tài khoản</h3>

        <form action="qlTaiKhoan" method="POST">

            <table width="95%">
                <tr>
                    <td style="float: right;"><b>Email đăng nhập: </b>
                    </td>
                    <td><input type="text" class="sedang" name="UserEmail" value="<c:out value='${tk.userEmail}'/>">
                    </td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Mật khẩu: </b>
                    </td>
                    <td>
                        <input type="text" class="sedang" name="Pass" value="<c:out value='${tk.pass}'/>">
                    </td>
                </tr>

                <tr>
                    <td style="float: right;"><b>Họ tên: </b>
                    </td>
                    <td><input type="text" class="sedang" name="HoTen" value="<c:out value='${tk.hoTen}'/>">
                    </td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Giới tính: </b>
                    </td>
                    <td><input type="radio" name="GioiTinh" value="Nam" value="<c:out value='${tk.gioiTinh}'/>">Nam
                        <input type="radio" name="GioiTinh" value="Nữ" value="<c:out value='${tk.gioiTinh}'/>">Nữ
                    </td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Số điện thoại: </b>
                    </td>
                    <td><input type="text" class="sedang" name="SDT" value="<c:out value='${tk.SDT}'/>"></td>
                    <td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Phân loại: </b>
                    </td>
                    <td><input type="text" class="sedang" name="PhanLoai" value="<c:out value='${tk.phanLoai}'/>"></td>
                    <td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <input type="hidden" name="command" value="update">
                        <c:if test="${tk !=null}">
                            <input type="hidden" name="ID"value="<c:out value='${tk.ID}' />">
                        </c:if>
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
