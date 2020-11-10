<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<body>
	<div class="banner-mat">
		<div class="container">
			<div class="banner">
	
				<!-- Slideshow 4 -->
			   <div class="slider">
			<ul class="rslides" id="slider1">
				<c:forEach items="${listslidebanner}" var="list">
					<li><img src="images/${list.slidebannerImage}" alt="">
					</li>
					
				</c:forEach>
			</ul>
		</div>

				<div class="banner-bottom">
					<div class="banner-matter">
						
					</div>
					
					<div class="clearfix"></div>
				</div>
			</div>				
			<!-- //slider-->
		</div>
	</div>
		
</body>
</html>