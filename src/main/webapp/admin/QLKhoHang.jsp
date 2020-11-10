<%@ page import="model.KhoHang" %>
<%@ page import="dao.KhoHangDAO" %>
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
	<h3>Quản lý kho hàng</h3>
	
<%--	<div class="informasi">--%>
<%--	ini adalah notifikasi pertanda informasi--%>
<%--	</div>--%>
<%--	--%>
<%--	<div class="gagal">--%>
<%--	ini adalah notifikasi pertanda gagal--%>
<%--	</div>--%>
<%--	--%>
<%--	<div class="sukses">--%>
<%--	ini adalah notifikasi pertanda sukses--%>
<%--	</div>--%>
<table class="data">
			<tr class="data">
				<th class="data" width="30px">No</th>
				<th class="data">Mã sản phẩm</th>
				<th class="data">Số Lượng</th>
				<th class="data">Ghi Chú</th>
			</tr>
			<% int i=1;
							for(KhoHang kh : KhoHangDAO.ListKhoHang()){
								%>
								<tr class="data">
				<td class="data" width="30px"><%=i++%></td>
				<td class="data"><%=kh.getMaSP()%></td>
				<td class="data"><%=kh.getSoLuong()%></td>
				<td class="data"><%=kh.getGhiChu() %></td>
				<td class="data" width="75px">
				<center>
				<a href="#"><img src="mos-css/img/oke.png"></a>;
				<a href="#"><img src="mos-css/img/detail.png"></a>
				</center>
				</td>
			
			<% 
			}
				%>
				</tr>
		</table>		</table>
	</div>
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</div>
</div>
</body>
</html>
