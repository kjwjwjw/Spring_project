<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

 
<!DOCTYPE html>
<html lang="en">
<head>
	<title>succeedProduct</title>

    
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="MainPage/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="MainPage/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MainPage/css/util.css">
	<link rel="stylesheet" type="text/css" href="MainPage/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">
	
	<!-- Header -->
		<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="wrap-menu-desktop how-shadow1" style="top: 0px;">
				<nav class="limiter-menu-desktop container">
					
					<%@include file="../menu/pc_sub_header.jsp" %>
				</nav>
			</div>
			</div>
				<%@include file="../menu/pc_menu.jsp" %>

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->
				<div class="logo-mobile">
					<a href="MainPage.pr"><img
						src="MainPage/images/icons/logo-01.png" alt="IMG-LOGO"></a>
				</div>

				<!-- Icon header -->
				
				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</div>
			</div>


			<!-- Menu Mobile -->
			<div class="menu-mobile">
				<ul class="topbar-mobile">
					<li>
						<div class="left-top-bar">Free shipping for standard order
							over $100</div>
					</li>

					<li>
						<div class="right-top-bar flex-w h-full">
							<a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a> <a
								href="#" class="flex-c-m p-lr-10 trans-04"> My Account </a> <a
								href="#" class="flex-c-m p-lr-10 trans-04"> EN </a> <a href="#"
								class="flex-c-m p-lr-10 trans-04"> USD </a>
						</div>
					</li>
				</ul>

				<ul class="main-menu-m">
					<li><a href="index.html">Home</a>
						<ul class="sub-menu-m">
							<li><a href="index.html">Homepage 1</a></li>
							<li><a href="home-02.html">Homepage 2</a></li>
							<li><a href="home-03.html">Homepage 3</a></li>
						</ul> <span class="arrow-main-menu-m"> <i
							class="fa fa-angle-right" aria-hidden="true"></i>
					</span></li>

					<li><a href="product.pr">Shop</a></li>

					<li><a href="shoping-cart.html" class="label1 rs1"
						data-label1="hot">Features</a></li>

					<li><a href="SellForm.pr">Sell</a></li>

					<li><a href="about.html">About</a></li>

					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>

			<!-- Modal Search -->
			<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
				<div class="container-search-header">
					<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
						<img src="MainPage/images/icons/icon-close2.png" alt="CLOSE">
					</button>

					<form class="wrap-search-header flex-w p-l-15">
						<button class="flex-c-m trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
						<input class="plh3" type="text" name="search"
							placeholder="Search...">
					</form>
				</div>
			</div>
	</header>
	<!-- ???????????? ?????? -->
	<!-- Cart -->
	<%@include file="../menu/pc_shopping cart.jsp" %>
		
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="MainPage.pr" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				????????????
			</span>
		</div>
	</div>
	
	<center>
		<h2>?????? ??????</h2>
	</center>
<!-- 	<form action="SucceedProduct.pr" class="bg0 p-t-75 p-b-85"> -->
		<div class="container" >
			<div class="row" >
				
				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h5 class="mtext-109 cl2 p-b-30">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;????????????
						</h5>
						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
							</div>
							<div class="size-209">
							</div>
<!-- 								<span class="stext-110 cl2"> -->
<!-- 								</span> -->
							<table>
								<tr>
									<th colspan="2"></th>
								</tr>
								<tr>
									<td>
										<img src="./Upload/sell_img/${sellerDTO.sell_img_name}" width="150" height="150">	
									</td>
									<td style="text-align: center;">
										&nbsp;&nbsp;&nbsp;&nbsp;title:&nbsp;${sellerDTO.sell_title}<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;brand:&nbsp;${sellerDTO.sell_brand}<br>
										size:&nbsp;${sellerDTO.sell_size}<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;price:&nbsp;${sellerDTO.sell_price}<br>
									</td>
								</tr>
							</table>
						</div>
						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
						
						<table style="border: none;">
								<tr>
									<th  class="mtext-109 cl2 p-b-30" colspan="5">????????????</th>
								</tr>
								<tr>
									<td>
										address: ${post.address_code}
									</td>
								</tr>
								<tr>
									<td>
										address(detail): ${post.address_detail}
									</td>
								</tr>
								<tr>
									<td>
										post: ${post.post_code}
									</td>
								</tr>
								<tr>
									<td>
										name: ${post.address_name}
									</td>
								</tr>
								<tr>
									<td>
										phone:${post.address_phone}
									</td>
								</tr>
  					   	</table>	
							<div class="flex-w flex-t bor12 p-t-15 p-b-30">
						<hr>
						<table style="border: none;">	
							<tr>
								<th  class="mtext-109 cl2 p-b-30" colspan="4">????????????</th>
							</tr>
							<tr>
								<td>
								    ????????? ????????? : ${param.point}
								</td>
							</tr>
							<tr>
								<td>
								    ???????????? : ${memberBean.grade_name} 
								</td>
							</tr>
							<tr>
								<td>
								    ???????????? : ${param.member_info_detail_acc_money} 
								</td>
							</tr>		
							
								
<!--  								<span class="stext-110 cl2"> -->
<!-- 						?????? COZA_STORE????????? ???????????????(?????????+??????+???????????????)?????? ?????? ?????? ??????????????????. -->
<!-- 								</span><br> -->
						
							</table>	
								</div>
							</div>
								     <input type="button" value="???????????????" onclick="location.href='MainPage.pr'"  class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"> 	
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									

								</span>
							</div>
						</div>
					 
<!-- 					  <input type="button" value="???????????????" onclick="location.href='MainPage.pr'"  class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">  -->
					</div>
				</div>
			</div>



	

	
<%-- 		location.href="<%=request.getContextPath()%>/order/payFail"; --%>
		

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Women
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Men
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shoes
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Watches
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Track Order
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
					</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Newsletter
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="MainPage/images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="MainPage/images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="MainPage/images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="MainPage/images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="MainPage/images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

<!--===============================================================================================-->	
	<script src="MainPage/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="MainPage/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="MainPage/vendor/bootstrap/js/popper.js"></script>
	<script src="MainPage/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="MainPage/vendor/select2/select2.min.js"></script>
<!--=========================488<???????????????>==========================================================-->	

<!--===============================================================================================-->
	<script src="MainPage/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="MainPage/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="MainPage/js/main.js"></script>

</body>
</html>