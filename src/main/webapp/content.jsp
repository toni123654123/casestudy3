
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>

<script type="text/javascript">
    $(window).load(function() {
        $("#flexiselDemo1").flexisel({
            visibleItems: 4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint:480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint:640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint:768,
                    visibleItems: 3
                }
            }
        });

    });
</script>
<script type="text/javascript" src="js/jquery.flexisel.js"></script>

</div>
</div>
<!---->
<div class="content-bottom">
    <h3 class="future">Nổi Bật</h3>
    <div class="content-bottom-in">
        <ul id="flexiselDemo2">

            <div class="col-md-3 md-col">
                <div class="col-md">
                    <a><img  src="images/Actionfigure1.jpg" alt="" width="425" height="250"/></a>
                    <div class="top-content">
                        <center><h5><a>Zero-Saber</a></h5></center>
                        <div class="white">
                            <a href=single.jsp?MaSP=AF01  class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                            <p class="dollar"><span class="in-dollar">2.000.000</span><span>Đ</span></p>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 md-col">
                <div class="col-md">
                    <a><img  src="images/Banpresto2.jpg" alt="" width="425" height="250"/></a>
                    <div class="top-content">
                        <center><h5><a>My Hero 2</a></h5></center>
                        <div class="white">
                            <a href=single.jsp?MaSP=BP02  class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                            <p class="dollar"><span class="in-dollar">700.000</span><span>Đ</span></p>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 md-col">
                <div class="col-md">
                    <a><img  src="images/Chibifigure3.jpg" alt="" width="425" height="250"/></a>
                    <div class="top-content">
                        <center><h5><a>Luffy</a></h5></center>
                        <div class="white">
                            <a href=single.jsp?MaSP=CF03  class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                            <p class="dollar"><span class="in-dollar">700.000</span><span>Đ</span></p>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 md-col">
                <div class="col-md">
                    <a><img  src="images/Actionfigure4.jpg" alt="" width="425" height="250"/></a>
                    <div class="top-content">
                        <center><h5><a>Dead Pool</a></h5></center>
                        <div class="white">
                            <a href=single.jsp?MaSP=AF04  class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                            <p class="dollar"><span class="in-dollar">8.000.000</span><span>Đ</span></p>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </ul>
        <script type="text/javascript">
            $(window).load(function() {
                $("#flexiselDemo2").flexisel({
                    visibleItems: 4,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint:480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint:640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint:768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
    </div>
</div>

				<!---->
		<div class="container">
			<div class="content">
				<div class="content-top">
					<h3 class="future">Sản Phẩm</h3>
					<div class="content-top-in">

					<div class="col-md-3 md-col">
							<div class="col-md">
								<a><img  src="images/Banpresto1.jpg" alt="" width="425" height="250" /></a>
								<div class="top-content">
									<center><h5><a>My Hero</a></h5></center>
									<div class="white">
										<a href=single.jsp?MaSP=BP01 class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
										<p class="dollar"><span class="in-dollar">500.000</span><span>Đ</span></p>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a><img  src="images/Actionfigure3.jpg" alt="" width="425" height="250" /></a>
								<div class="top-content">
									<center><h5><a>Meliodas</a></h5></center>
									<div class="white">
										<a href=single.jsp?MaSP=AF03 class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
										<p class="dollar"><span class="in-dollar">500.000</span><span>Đ</span></p>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a><img  src="images/Actionfigure4.jpg" alt="" width="425" height="250" /></a>
                                <div class="top-content">
                                    <center><h5><a>Dead Pool</a></h5></center>
                                    <div class="white">
                                        <a href=single.jsp?MaSP=AF04 class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                                        <p class="dollar"><span class="in-dollar">8.000.000</span><span>Đ</span></p>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a><img src="images/Chibifigure1.jpg" alt="" width="425" height="250"/></a>
                                <div class="top-content">
                                    <center><h5><a>Kimetsu no Yaiba</a></h5></center>
                                    <div class="white">
                                        <a href=single.jsp?MaSP=CF01 class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                                        <p class="dollar"><span class="in-dollar">7.000.000</span><span>Đ</span></p>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a><img src="images/Chibifigure2.jpg" alt="" width="425" height="250"/></a>
                                <div class="top-content">
                                    <center><h5><a>Fox Spirit Matchmaker</a></h5></center>
                                    <div class="white">
                                        <a href=single.jsp?MaSP=CF02 class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                                        <p class="dollar"><span class="in-dollar">2.000.000</span><span>Đ</span></p>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a><img src="images/Chibifigure3.jpg" alt="" width="425" height="250"/></a>
                                <div class="top-content">
                                    <center><h5><a>Luffy</a></h5></center>
                                    <div class="white">
                                        <a href=single.jsp?MaSP=CF03 class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Xem thêm</a>
                                        <p class="dollar"><span class="in-dollar">700.000</span><span>Đ</span></p>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                            </div>
                        </div>

						</div>
					<div class="clearfix"></div>
					</div>
				</div>
				</div>
				<!---->

				<ul class="start">
					<li ><a href="#"><i></i></a></li>
					<li><span>1</span></li>
					<li class="arrow"><a href="#">2</a></li>
					<li class="arrow"><a href="#">3</a></li>
					<li class="arrow"><a href="#">4</a></li>
					<li class="arrow"><a href="#">5</a></li>
					<li ><a href="#"><i  class="next"> </i></a></li>
				</ul>
			</div>
		</div>
</body>
</html>