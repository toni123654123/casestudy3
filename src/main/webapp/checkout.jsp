<%@page import="java.util.Map"%>
<%@ page import="model.Cart" %>
<%@ page import="model.TaiKhoan" %>
<%@ page import="model.Items" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8">
<title>Thanh Toán</title>
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
  Cart cart=(Cart) session.getAttribute("cart");
if(cart==null)
{
	cart=new Cart();
	session.setAttribute("cart", cart);
	}
TaiKhoan tk= null;
if(session.getAttribute("user")==null)
{
response.sendRedirect("/login.jsp");
	}
%>
  <jsp:include page="header.jsp"></jsp:include>
   <!--header-->
   		<div class="container">
			<div class="products">
					<h2 style="color: black;" class=" products-in">Danh sách sản phẩm đã chọn</h2>
					<div class="content">
				<div class="content-top">
					<div class="content-top-in">
				 <%for(Map.Entry<String, Items> list: cart.getCartItems().entrySet()) { %>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a><img  src="images/<%=list.getValue().getSanpham().getHinhAnh() %>" alt="" width="425" height="250"/></a>
								<div class="top-content">
									<center><h5><a><%=list.getValue().getSanpham().getTenSP() %></a></h5></center>
									<div class="white">
									<p class="dollar"><span class="in-dollar"><%=list.getValue().getSanpham().getGia() %></span><span>VND</span></p>

									</div>
									<center><h5 style="color: red;">Số lượng=<%=list.getValue().getSoLuong()%></h5></center>
									<br>
									<div>
											 <center><a href="CartController?command=sum&MaSP=<%=list.getKey()%>"><button><span> + </span></button></a></center>
									 <center><a href= "CartController?command=sub&MaSP=<%=list.getKey()%>"><button ><span> - </span></button></a></center>


									  </div>
									 <center><li><a href= "CartController?command=remove&MaSP=<%=list.getKey()%>">Xóa khỏi giỏ hàng</a></li></center>
								</div>
							</div>
						</div>
						<%} %>
						</div>
					<div class="clearfix"></div>
					</div>
					<br>
					 <div class="total">
	                        	<div class="total_left"><h3 style="color: black;">Tổng tiền : </h3></div>
	                        	<div ><h3><%=cart.sumTotalCart() %></h3></div>
	                        	<div class="clearfix"> </div>
	                        </div>
				</div>
			</div>
		</div>
  				
	<div class="container">
		<div class="account">
			<h2 class="account-in">Thanh Toán</h2>
				<form action="CheckoutController" method="POST">
			
				<div>
					<span class="word">Địa chỉ *</span>
					<input type="text" name="address">
				</div> 	
				
					<div>
					<span>Hình thức</span>
				<select name="payment">
				<option value="BIDV">BIDV</option>
				<option value="ARGIBANK">ARGIBANK</option>
				<option value="OCEANBANK">OCEANBANK</option>
				<option value="ACB">ACB</option>
					<option value="OCB">OCB</option>
					<option value="ViettinBank">ViettinBank</option>
				</select>
    	</div>
    	<input type="submit" value="Thanh Toán"> 
				</form>
		</div>
	</div>		<!---->
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer -->
</body>
</head>
</html>
