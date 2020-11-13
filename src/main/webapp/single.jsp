<%@ page import="dao.SanPhamDAO" %>
<%@ page import="dao.ChiTietSPDAO" %>
<%@ page import="model.SanPham" %>
<%@ page import="model.ChiTietSanPham" %>
<%@ page import="model.Cart" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi tiết sản phẩm</title>
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
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
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
ChiTietSPDAO ctspd=new ChiTietSPDAO();
SanPham sp=new SanPham();
ChiTietSanPham ctsp= new ChiTietSanPham();
String MaSP="";
	if(request.getParameter("MaSP")!=null)
	{
		MaSP=request.getParameter("MaSP");
		sp=spd.getSanPham(MaSP);
		ctsp=ctspd.getChiTietSP(MaSP);
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
			<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">
						<ul id="etalage">
							<li>
								<a href="optionallink.jsp">
									<img class="etalage_thumb_image img-responsive" src="webapp/images/<%=sp.getHinhAnh() %>" alt="" >
									<img class="etalage_source_image img-responsive" src="webapp/images/<%=sp.getHinhAnh() %>" alt="" >
								</a>
							</li>
						
						</ul>
				
					</div>	
					<div class="col-md-7 single-top-in">
						<div class="single-para">
							<h2><%=sp.getTenSP() %></h2>
							<div class="para-grid">
								<span  class="add-to"><%=sp.getGia()%> Đ</span>
										
								<div class="clearfix"></div>
							 </div>
						<div class="available">				
						<h3>Tỉ lệ: </h3>
						</div>
						<h4><%=ctsp.getTile() %></h4>
					
						<br>
						<div>
						<a href="CartController?command=plus&MaSP=<%=MaSP%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>	
	
					
						</div>
					</div>
				<div class="clearfix"> </div>
						
					<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="single-bottom">
						<h3>Xuất sứ</h3>
						<ul>
						<li><i></i><%=ctsp.getXuatSu() %></li>
						</ul>
					</div>
				</div>
				<br>
				<br>
				<div class="col-md-3">
					<div class="single-bottom">
						<h3>Nơi sản xuất</h3>
						<ul>
						<li><i></i><%=ctsp.getNoiSX() %></li>
						</ul>
					</div>
				</div>
					<br>
				<br>
				</div>
				<div class="clearfix"> </div>
		</div>
		
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</body>
</html>