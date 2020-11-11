<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin MOS Template</title>
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
	<h3>Form</h3>
	
<%--		<div class="informasi">--%>
<%--			this is a notification alert Information--%>
<%--		</div>--%>
<%--		--%>
<%--		<div class="gagal">--%>
<%--			this is a failure alert notification--%>
<%--		</div>--%>
<%--		--%>
<%--		<div class="sukses">--%>
<%--			this is a success alert notification--%>
<%--		</div>--%>
	
		<table width="95%">
			<tr><td width="125px"><b>Input text pendek</b></td><td><input type="text" class="pendek"></td></tr>
			<tr><td><b>Input text sedang</b></td><td><input type="text" class="sedang"></td></tr>
			<tr><td><b>Input text panjang</b></td><td><input type="text" class="panjang"></td></tr>
			<tr><td><b>Radio</b></td><td>
				<input type="radio" name="radio" id="radio" value="radio 1">Radio 1
				<input type="radio" name="radio" id="radio" value="radio 2">Radio 2
			</td></tr>
			<tr><td><b>Checkbox</b></td><td>
				<input type="checkbox" name="checkbox" id="checkbox" value="checkbox 1">Checkbox 1<br>
				<input type="checkbox" name="checkbox" id="checkbox" value="checkbox 2">Checkbox 2<br>
				<input type="checkbox" name="checkbox" id="checkbox" value="checkbox 3">Checkbox 3<br>
				<input type="checkbox" name="checkbox" id="checkbox" value="checkbox 4">Checkbox 4<br>
			</td></tr>
			<tr><td><b>Pilihan</b></td><td>
				<select>
					<option selected>-- pilihan --</option>
					<option value="">Pilihan</option>
				</select>
			</td></tr>
			<tr><td><b>Textarea</b></td><td><textarea></textarea></td></tr>
			<tr><td></td><td>
			<input type="button" class="button" value="Button">
			<input type="submit" class="button" value="Submit">
			<input type="reset" class="button" value="Reset">
			</td></tr>
		</table>
	</div>
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</div>
</body>
</html>