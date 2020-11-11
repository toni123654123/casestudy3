<%@ page import="model.TaiKhoan" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng ký</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>				
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
      $(document).ready(function () {
           var x_timer;
           $("#email").keyup(function (e) {
                clearTimeout(x_timer);
                var user_name = $(this).val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
                });
 
           function check_username_ajax(username) {
                $("#user-result").html('<img src="images/ajax-loader.gif" />');
                $.post('CheckEmailController', {'username': username}, function (data) {
                    $("#user-result").html(data);
                 });
           }
       });
</script>	
				
</head>
<body>
<%
TaiKhoan tk=null;
if(session.getAttribute("user")!=null){
tk=(TaiKhoan) session.getAttribute("user");
}
%>
<!--header-->
 <jsp:include page="header.jsp"></jsp:include>
		
	<div class="container">
		<div class="account">
			<h2 class="account-in">Đăng ký</h2>
				<form action="Update_Info" method="POST">
				<div>
				<span class="word">ID</span>
				<br>
				<input type="text" name="id" value="<%=tk.getID() %>" readonly="readonly" >
				</div>
		
				<div>
				
					<span class="word">Họ Tên</span>
				<br>
					<input type="text" name="HoTen"  value="<%=tk.getHoTen() %>">
				</div> 	
				<div> 
						<span class="word">Giới Tính</span>
				<br>
					<input type="radio" name="GioiTinh" value="<%=tk.getGioiTinh()%>">Nam
					<input type="radio" name="GioiTinh" value="<%=tk.getGioiTinh()%>">Nữ
				</div>
					<div> 
						<span class="word">Số Điện Thoại</span>
				<br>
					<input type="text" name="SDT" value="<%=tk.getSDT()%>"/>
				</div>		
					<div> 
						<span class="word">Email</span>
				<br>
					<input type="text" name="Email" value="<%=tk.getUserEmail()%> "readonly="readonly"/>
				</div>			
					<input type="submit" value="Cập nhật"> 
					<div>	
				
					</div>
				</form>
				</div>
				</div>

				

	<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</body>
</html>
