<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
		<div class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="col-md-4 footer-in">
						<h4><i> </i>Mua hàng nhanh</h4>
						<p>Mẹo: Quý khách hàng có thể truy cập vào thanh tìm kiếm ở đầu trang để có thể tìm kiếm những sản phẩm cần mua.</p>
					</div>
					<div class="col-md-4 footer-in">
						<h4><i class="cross"> </i>Thanh toán nhanh</h4>
						<p>Webisite được ứng dụng thanh toán trực tuyến nên quý khách hàng có thể thõa sức mua hàng mà không lo đến việc khó khăn trong thanh toán. </p>
					</div>
					<div class="col-md-4 footer-in">
						<h4><i class="down"> </i>Nguồn mở</h4>
						<p>Website được chạy trên nhiều nền tảng</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!---->
			<div class="footer-middle">
				<div class="container">
					<div class="footer-middle-in">
						<h6>Thông tin website</h6>
						<p>Địa chỉ:
						<br>Địa thoại:
						</p>
						
					</div>
					<div class="footer-middle-in">
						<h6>Thông tin</h6>
						<ul>
							<li><a href="#">Về chúng tôi</a></li>
							<li><a href="#">Chăm sóc khách hàng</a></li>
							
						</ul>
					</div>
					<div class="footer-middle-in">
						<h6>Dịch vụ khách hàng</h6>
						<ul>
							<li><a href="contact.jsp">Liên hệ chúng tôi</a></li>
							<li><a href="#">Thanh toán trực tuyến</a></li>
							<li><a href="#">Sản phẩm mới nhất</a></li>
						</ul>
					</div>
					<div class="footer-middle-in">
						<h6>Tài khoản của tôi</h6>
						<ul>
							<li><a href="login.jsp">Tài khoản của tôi</a></li>
							<li><a href="#">Lịch sử đơn hàng</a></li>
							<li><a href="wishlist.jsp">Danh sách sản phẩm</a></li>
							<li><a href="#">Bản tin</a></li>
						</ul>
					</div>
					<div class="footer-middle-in">
						<h6>Ngoài ra</h6>
						<ul>
							<li><a href="#">Nhãn hiệu</a></li>
							<li><a href="#">Phiếu quà tặng</a></li>
							<li><a href="#">Chi nhánh</a></li>
							<li><a href="#">Đặc biệt</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<p class="footer-class">
			I COMBACK oki!
			<br>
			&copy;2020 Website funy </p>
			<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>