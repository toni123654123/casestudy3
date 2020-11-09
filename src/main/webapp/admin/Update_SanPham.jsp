<%@ page import="model.ChuyenMuc" %>
<%@ page import="dao.ChuyenMucDAO" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
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
        <h3>Chỉnh sửa sản phẩm</h3>

        <form action="qlSanPham" method="POST">

            <table width="95%">
                <tr>
                    <td style="float: right;"><b>Mã Sản phẩm: </b>
                    </td>
                    <td><input type="text" class="sedang" name="MaSP"></td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Tên Sản Phẩm: </b>
                    </td>
                    <td><input type="text" class="sedang" name="TenSP"></td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Mã Chuyên Mục: </b>
                    </td>
                    <td><select name="MaCM">
                        <%
                            for (ChuyenMuc cm : ChuyenMucDAO.getListChuyenMuc()) {
                        %>
                        <option value="<%=cm.getMaCM()%>"><%=cm.getMaCM()%>
                        </option>
                        <%} %>
                    </select></td>
                </tr>

                <tr>
                    <td style="float: right;"><b>Giá: </b>
                    </td>
                    <td><input type="text" class="sedang" name="Gia"></td>
                </tr>
                <tr>
                    <td style="float: right;"><b>Hình Ảnh: </b>
                    </td>
                    <td><input type="text" class="sedang" name="HinhAnh"></td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="command" value="update">
                        <input type="hidden" name="MaSP" value= <%=request.getParameter("MaSP")%>>
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
