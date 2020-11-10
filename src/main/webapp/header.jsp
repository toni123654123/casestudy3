<%@page import="java.util.Map"%>
<%@ page import="model.TaiKhoan" %>
<%@ page import="model.ChuyenMuc" %>
<%@ page import="dao.ChuyenMucDAO" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Items" %>


<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<%
TaiKhoan tk= null;
if(session.getAttribute("user")!=null)
{
	tk= (TaiKhoan)session.getAttribute("user");
	}

Cart cart=(Cart) session.getAttribute("cart");
if(cart==null)
{
	cart=new Cart();
	session.setAttribute("cart", cart);
	}

%>

	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="home.jsp"><img src="#" alt=" " ></a>
				</div>
				<div class="header-in">
					<ul class="icon1 sub-icon1">
					
							<%if(tk!=null){ %>
					<li><a href="info.jsp"><%=tk.getUserEmail()%></a></li>
					<%} %>
					<%if(tk==null){ %>
							<li><a href="login.jsp">  Đăng nhập</a></li>
					
							<li><a href="Register.jsp">Đăng ký</a></li>
		<%} %>
							<li> <a href="checkout.jsp" >Giỏ hàng</a> </li>	
									<%if(tk!=null){ %>
					<li> <a href="LoginController?action=Logout" >Đăng xuất</a> </li>	
					<%} %>
							
							<li><div class="cart">
									<a href="#" class="cart-in"> </a>
									<span> <%=cart.countItem() %></span>
								</div>
								<ul class="sub-icon1 list">
						  <h3>Danh sách các sản phẩm</h3>
						  <div class="shopping_cart">
						  <%for(Map.Entry<String, Items> list: cart.getCartItems().entrySet()) { %>
							  <div class="cart_box">
							   	 <div class="message">
					                <div class="list_img"><img src="images/<%=list.getValue().getSanpham().getHinhAnh() %>" class="img-responsive" alt=""></div>
								    <div >
								    <h3><span><%=list.getValue().getSanpham().getTenSP() %></span></h3>
								   </div>
								  <span>  <%=list.getValue().getSoLuong()%></span> X<span class="actual"><%=list.getValue().getSanpham().getGia() %></span>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                            <% } %>
	                            
	                        </div>
	                        <div class="total">
	                        	<div class="total_left">Tổng tiền : </div>
	                        	<div class="total_right"><%=cart.sumTotalCart() %></div>
	                        	<div class="clearfix"> </div>
	                        </div>
                            <div class="login_buttons">
							  <div class="check_button"><a href="checkout.jsp">Check out</a></div>
							  <div class="clearfix"></div>
						    </div>
					      <div class="clearfix"></div>
						</ul>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li ><a href="HomeForward"><i></i></a></li>
					<li ><a href="#" >Chuyên mục</a>
						<ul class="drop">
							<% 
							for(ChuyenMuc c: ChuyenMucDAO.getListChuyenMuc()){
								%>
								<li><a href=products.jsp?ChuyenMuc=<%=c.getMaCM()%>><%=c.getTenCM()%></a></li>
								<% 
							}
								%>
							
						</ul>
						</li> 						
						         
						<li><a href="contact.jsp" >Chăm sóc hách hàng</a></li>						  				 
						
					
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
			<div class="header-bottom-on">
			<p class="wel"><a href="Register.jsp">Chào mừng quý khách! Nếu bạn không có tài khoản, bạn cần phải đăng ký.</a></p>
			<div class="header-can">
				<ul class="social-in">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="facebook"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>					
						<li><a href="#"><i class="skype"> </i></a></li>
					</ul>	
					
					<div class="search">
						<form>
							<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
							<input type="submit" value="">
						</form>
					</div>

					<div class="clearfix"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>
</body>
</html>