<%@ page import="dao.SanPhamDAO" %>
<%@ page import="model.Cart" %>
<%@ page import="model.SanPham" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Product</title>
</head>
<body>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<head>
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
</head>
<body>
<%
	SanPhamDAO spd=new SanPhamDAO();
String MaCM="";
	if(request.getParameter("ChuyenMuc")!=null)
	{
		MaCM=request.getParameter("ChuyenMuc");
	}
	Cart cart=(Cart) session.getAttribute("cart");
	if(cart==null)
	{
		cart=new Cart();
		session.setAttribute("cart", cart);
		}
%>
		
 <!--header-->
  <jsp:include page="header.jsp"></jsp:include>
		<div class="container">
			<div class="products">
					<h2 class=" products-in">PRODUCTS</h2>
					<div class="content">
				<div class="content-top">
					<div class="content-top-in">
								<%
					for(SanPham sp  : SanPhamDAO.getListSanPham(MaCM))
					{
					%>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.jsp?MaSP=<%=sp.getMaSP()%>"><img  src="images/<%=sp.getHinhAnh() %>" alt="" width="425" height="300"/></a>
								<div class="top-content">
									<center><h5><a href="single.jsp?MaSP=<%=sp.getMaSP()%>"><%=sp.getTenSP() %></a></h5></center>
									<div class="white">
									<p class="dollar"><span class="in-dollar"><%=sp.getGia() %></span><span>Đ</span></p>
										<a href="CartController?command=plus&MaSP=<%=sp.getMaSP()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Add To Cart</a>	
										<div class="clearfix"></div>
									</div>

								</div>							
							</div>
						</div>
						<%} %>
						</div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</body>
</body>
</html>
