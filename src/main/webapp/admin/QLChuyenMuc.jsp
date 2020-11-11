

<%@page import="java.util.ArrayList"%>
<%@ page import="dao.ChuyenMucDAO" %>
<%@ page import="model.ChuyenMuc" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>TT-SHOP</title>
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
<%
 		ChuyenMucDAO chuyenmucDAO = new ChuyenMucDAO();
		ArrayList <ChuyenMuc> listChuyenMuc = chuyenmucDAO.getListChuyenMuc();
%>
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header -->

<div id="wrapper">
	<!-- memnu -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- memnu -->
	<div id="rightContent">
	<h3>Quản lí danh mục</h3>
	<a href = "addChuyenMuc">Thêm danh mục</a>
	
		<table class="data">
			<tr class="data">
				<th class="data" width="30px">STT</th>
				<th class="data">Mã chuyên mục</th>
				<th class="data">Tên chuyên mục</th>
				<th class="data" width="75px">Tùy chọn</th>
			</tr>
			<% int i=1;
							for(ChuyenMuc c:ChuyenMucDAO.getListChuyenMuc()){ 
								%>
								<tr class="data">
				<td class="data" width="30px"><%=i++%></td>
				<td class="data"><%=c.getMaCM()%></td>
				<td class="data"><%=c.getTenCM()%></td>
				<td class="data" width="75px">
				<center>
				<a href="updateChuyenMuc?command=update&MaCM=<%=c.getMaCM()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
				<a href="qlChuyenMuc?command=delete&ma_CM=<%=c.getMaCM() %>">Xóa</a>
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
</div>
</body>
</html>
