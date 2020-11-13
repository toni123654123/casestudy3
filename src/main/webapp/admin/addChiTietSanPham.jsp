
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LT-SHOP Dashboard</title>
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
	<h3>Thông tin chi tiết sản phẩm</h3>
	
		<form action="qlChiTietSanPham" method="POST">
	
		<table width="95%">
			<tr>
				<td style = "float: right;"><b>Mã Sản phẩm: </b>
				</td><td><input type="text" class="sedang" name="MaSP"></td>
			</tr>
			<tr>
				<td style = "float: right;"><b>Xuất Sứ: </b>
				</td><td><input type="text" class="sedang" name="XuatSu"></td>
			</tr>
			<tr>
				<td style = "float: right;"><b>Nơi Sản Xuất: </b>
				</td><td><input type="text" class="sedang" name="NoiSX"></td>
			</tr>
			<tr>
			<td style = "float: right;"><b>Tỉ lệ: </b>
				</td><td><input type="text" class="sedang" name="Tile"></td>
			<td>	</tr>
				<tr><td></td><td>
			<input type="hidden" name="command" value="insert"> 
			<input type="submit" class="button" value="Lưu dữ liệu">
			</td>
		
		</table>
		</form>
	</div>
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</div>
</body>
</html>
