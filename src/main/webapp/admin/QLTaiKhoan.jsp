<%@ page import="model.TaiKhoan" %>
<%@ page import="dao.TaiKhoanDAO" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Copyright" content="arirusmanto.com">
<meta name="description" content="Admin MOS Template">
<meta name="keywords" content="Admin Page">
<meta name="author" content="Ari Rusmanto">
<meta name="language" content="Bahasa Indonesia">

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
	<div id="rightContent">
	<h3>Tài Khoản</h3>
	<a href = "addTaiKhoan">Thêm tài khoản</a>
		<table class="data">
			<tr class="data">

				<th class="data">ID</th>
				<th class="data">Tên Đăng Nhập</th>
				<th class="data">Mật Khẩu</th>
				<th class="data">Họ Tên</th>
				<th class="data">Giới Tính</th>
				<th class="data">Số Điện Thoại</th>
				<th class="data">Phân loại</th>
				<th class="data" width="75px">Tùy chọn</th>
			</tr>
			<% int i=1;
							for(TaiKhoan tk : TaiKhoanDAO.getListTaiKhoan()){
								%>
				<tr class="data">
				<td class="data" width="30px"><%=i++%></td>
<%--				<td class="data"><%=tk.getID()%></td>--%>
				<td class="data"><%=tk.getUserEmail() %></td>
				<td class="data"><%=tk.getPass()%></td>
				<td class="data"><%=tk.getHoTen()%></td>
				<td class="data"><%=tk.getGioiTinh()%></td>
				<td class="data"><%=tk.getSDT()%></td>
				<td class="data"><%=tk.getPhanLoai()%></td>
				<td class="data" width="75px">
			<center>
				<a href="Update_TaiKhoan?command=update&ID=<%=tk.getID()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
				<a href="qlTaiKhoan?command=delete&ID=<%=tk.getID()%>">Xóa</a>
				</center>
				</td>
			
			<% 
			}
				%>
				</tr>
		</table>
	</div>
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</div>
</body>
</html>
