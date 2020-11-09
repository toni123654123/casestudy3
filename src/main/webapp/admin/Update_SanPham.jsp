
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
String s="";
if(session.getAttribute("error")!=null)
{
	s=(String) session.getAttribute("error");
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
				<td style = "float: right;"><b>Xuất Sứ: </b>
				</td><td><input type="text" class="sedang" name="XuatSu"></td>
			</tr>
			<tr>
				<td style = "float: right;"><b>Nơi Sản Xuất: </b>
				</td><td><input type="text" class="sedang" name="NoiSX"></td>
			</tr>
			<tr><td>
			<td style = "float: right;"><b>Tỉ lệ: </b>
				</td><td><input type="text" class="sedang" name="TiLe"></td>
			<td>
			<input type="hidden" name="command" value="update"> 
			<input type = "hidden" name = "MaSP" value = <%=request.getParameter("MaSP")%>> 
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
