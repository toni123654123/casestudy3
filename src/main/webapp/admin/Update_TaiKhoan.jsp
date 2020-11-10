<%@ page import="model.TaiKhoan" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
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
<%
    TaiKhoan taiKhoan = null;
    if (session.getAttribute("user") != null) {
        taiKhoan = (TaiKhoan) session.getAttribute("user");
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
                    <td><input type="text" class="sedang" name="UserEmail"
                               value="<%=taiKhoan.getUserEmail() %>"></td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Mật khẩu: </b>
                    </td>
                    <td>
                        <input type="text" class="sedang" name="Pass"  value="<%=taiKhoan.getPass() %>">
                    </td>
                </tr>

                <tr>
                    <td style="float: right;"><b>Họ tên: </b>
                    </td>
                    <td><input type="text" class="sedang" name="HoTen"  value="<%=taiKhoan.getHoTen() %>">
                    </td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Giới tính: </b>
                    </td>
                    <td><input type="radio" name="GioiTinh" value="Nam"  value="<%=taiKhoan.getGioiTinh() %>">Nam
                        <input type="radio" name="GioiTinh" value="Nữ"  value="<%=taiKhoan.getGioiTinh() %>">Nữ
                    </td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Số điện thoại: </b>
                    </td>
                    <td><input type="text" class="sedang" name="SDT"  value="<%=taiKhoan.getSDT() %>"></td>
                    <td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Phân loại: </b>
                    </td>
                    <td><input type="text" class="sedang" name="PhanLoai"
                               value="<%=taiKhoan.getPhanLoai() %>"></td>
                    <td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <input type="hidden" name="command" value="update">
                        <input type="hidden" name="ID" value= <%=request.getParameter("ID")%>>
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
