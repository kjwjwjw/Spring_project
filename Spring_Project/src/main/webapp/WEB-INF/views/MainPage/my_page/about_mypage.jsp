<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png"
	href="MainPage/images/icons/favicon.png" />
<link rel="stylesheet" type="text/css"
	href="MainPage/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/fonts/linearicons-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="MainPage/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="MainPage/css/util.css">
<link rel="stylesheet" type="text/css" href="MainPage/css/main.css">
<link rel="stylesheet" type="text/css" href="MainPage/css/community.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<%@page import="java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<head>
<title>Mypage</title>
<style type="text/css">
body {
	padding: 1.5em;
	background: #f5f5f5
}

table {
	border: 1px #a39485 solid;
	font-size: 17px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	width: 60%;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
	margin: auto;
}

image_section {
	display: block;
	margin: auto;
}

thead {
	font-weight: bold;
	color: #fff;
	background: #73685d;
}

td, th, td, th {
	padding: 1em .5em;
	vertical-align: middle;
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function confirmLogout() {
		if (confirm("???????????? ???????????????????")) {
			location.href = "./Logout.ma";
		}
	}
	function findAddr() { //?????? ??????
		new daum.Postcode(
				{
					oncomplete : function(data) {

						console.log(data);

						var roadAddr = data.roadAddress; // ????????? ?????? ??????
						var jibunAddr = data.jibunAddress; // ?????? ?????? ??????
						// ??????????????? ?????? ????????? ?????? ????????? ?????????.
						document.getElementById('member_info_post_code').value = data.zonecode;
						if (roadAddr !== '') {
							document.getElementById("member_info_address").value = roadAddr;
						} else if (jibunAddr !== '') {
							document
									.getElementById("member_info_address_detail").value = jibunAddr;
						}
					}
				}).open();
	}

	function findAddr1() { //????????? ?????? ??????
		new daum.Postcode(
				{
					oncomplete : function(data) {

						console.log(data);

						var roadAddr = data.roadAddress; // ????????? ?????? ??????
						var jibunAddr = data.jibunAddress; // ?????? ?????? ??????
						// ??????????????? ?????? ????????? ?????? ????????? ?????????.
						document.getElementById('member_info_ship_post_code').value = data.zonecode;
						if (roadAddr !== '') {
							document.getElementById("member_info_ship_address").value = roadAddr;
						} else if (jibunAddr !== '') {
							document
									.getElementById("member_info_ship_address_detail").value = jibunAddr;
						}
					}
				}).open();
	}

	function onPassModify() { //???????????? ???????????? ?????? ?????????
		var con = document.getElementById("member_passwd");
		if (con.style.display == 'none') {
			con.style.display = 'block';
		} else {
			con.style.display = 'none';
		}
	}

	function changeImg(obj) { //????????? ??????
		let reader = new FileReader();
		if (!obj.files.length) {
			return;
		}
		document.getElementById("image_section").style.display = "none";
		var a = document.getElementById("preImg");
		if (a != null)
			a.remove();
		for (let i = 0; i < obj.files.length; i++) {
			reader.readAsDataURL(obj.files[i]);
			reader.onload = function(e) {
				let img = $('<img id="preImg" width=300,height=300 />');
				$(img).attr('src', e.target.result);
				$('#previewDiv').append(img);
			}
		}
	}
	
	function membersecession() { //?????? ??????
		if (confirm("???????????? ???????????????????")) {
			location.href = "./MemberSecession.ma?member_code=${memberDetail.member_code }";
		}
	}
</script>

<meta charset="UTF-8">
</head>
<body class="animsition">
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- pc_sub_header -->
			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<%@include file="../menu/pc_sub_header.jsp" %>
				</nav>
			</div>
		</div>

		<!-- PC_menu_Sidebar -->
	
			<%@include file="../menu/pc_menu.jsp" %>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="index.html"><img
					src="MainPage/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
					data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#"
					class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
					data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

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

				<li><a href="product.html">Shop</a></li>

				<li><a href="shoping-cart.html" class="label1 rs1"
					data-label1="hot">Features</a></li>

				<li><a href="blog.html">Blog</a></li>

				<li><a href="about.html">About</a></li>

				<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
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


	<!-- Cart -->
	
			<%@include file="../menu/pc_shopping cart.jsp" %>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('MainPage/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">MyPage</h2>
	</section>

	<div id="com_container">
		<div class=" container d-flex justify-content-center">
			<ul class="pagination shadow-lg">
				<li class="page-item active"><a class="page-link"
					href="Mypage.ma?member_code=${sCode }"><small>???????????????</small></a></li>
				<li class="page-item "><a class="page-link"
					href="LikeList.ma?member_code=${sCode }"><small>?????????</small></a></li>
				<li class="page-item "><a class="page-link "
					href="BuyList.ma?member_code=${sCode }"><small>????????????</small></a></li>
				<li class="page-item  "><a class="page-link "
					href="SellList.ma?member_code=${sCode }"><small>????????????</small></a></li>
			</ul>
		</div>
	</div>

	<!-- Content page -->

	<form action="ProfileImgUpdate.ma" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="member_code" id="member_code"
			value="${memberDetail.member_code }">
		<table border="1">
			<tr>
				<td><div id="previewDiv">
						<img id="image_section" alt="" width="300" height="300"
							src="Upload/mypage_img/${memberDetail.member_info_mypage_real_img_name }">
					</div></td>
			</tr>
			<tr>
				<td><input type="file" id="member_info_mypage_img_name"
					name="member_info_mypage_img_name" value=""
					onchange="changeImg(this)"></td>
			</tr>
			<tr>
				<td><button type="submit">??????</button></td>
			</tr>
		</table>
	</form>

	<form action="Modify_Member.ma" method="post">
		<input type="hidden" name="member_code" id="member_code"
			value="${memberDetail.member_code }">
		<table border="1">
			<tbody>
				<tr>
					<th>?????? ??????</th>
					<td colspan="2"><input type="text" name="grade_name"
						id="grade_name" value="${memberDetail.grade_name }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>?????????</th>
					<td colspan="2"><input type="text" name="member_nickname"
						id="member_nickname" value="${memberDetail.member_nickname }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>?????????</th>
					<td colspan="2"><input type="text" name="member_id"
						id="member_id" value="${memberDetail.member_id }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>????????????</th>
					<td colspan="2"><a href="javascript:onPassModify();">????????????
							????????????</a> <input type="password" name="member_passwd"
						id="member_passwd" value="${memberDetail.member_passwd }"
						style="display: none;"></td>
				</tr>
				<tr>
					<th>?????????</th>
					<td colspan="2"><input type="text" name="member_email1"
						id="member_email1" value="${memberDetail.member_email }"></td>
				</tr>
				<tr>
					<th>??????</th>
					<td colspan="2"><input type="text" name="member_info_name"
						id="member_info_name" value="${memberDetail.member_info_name }"></td>
				</tr>
				<tr>
					<th>??????</th>
					<td colspan="2"><select id="member_info_gender"
						name="member_info_gender">
							<option value="male"
								<c:if test="${memberDetail.member_info_gender eq 'male' }" >selected</c:if>>??????</option>
							<option value="female"
								<c:if test="${memberDetail.member_info_gender eq 'female' }">selected</c:if>>??????</option>
					</select></td>
				</tr>
				<tr>
					<th>????????????</th>
					<td colspan="2"><input type="text" name="member_info_phone"
						id="member_info_phone" value="${memberDetail.member_info_phone }"></td>
				</tr>
				<tr>
					<th>?????????</th>
					<td colspan="2"><select id="member_info_age"
						name="member_info_age">
							<option value="19?????????"
								<c:if test="${memberDetail.member_info_age eq '19?????????' }" >selected</c:if>>19?????????</option>
							<option value="20~29"
								<c:if test="${memberDetail.member_info_age eq '20~29' }" >selected</c:if>>20~29</option>
							<option value="30~39"
								<c:if test="${memberDetail.member_info_age eq '30~39' }" >selected</c:if>>30~39</option>
							<option value="40~49"
								<c:if test="${memberDetail.member_info_age eq '40~49' }" >selected</c:if>>40~49</option>
							<option value="50~59"
								<c:if test="${memberDetail.member_info_age eq '50~59' }" >selected</c:if>>50~59</option>
							<option value="60~69"
								<c:if test="${memberDetail.member_info_age eq '60~69' }" >selected</c:if>>60~69</option>
							<option value="70?????????"
								<c:if test="${memberDetail.member_info_age eq '70?????????' }" >selected</c:if>>70?????????</option>
					</select></td>
				</tr>
				<tr>
					<th>????????????</th>
					<td colspan="2"><input type="text"
						name="member_info_post_code" id="member_info_post_code"
						value="${memberDetail.member_info_post_code }" readonly="readonly">
						<input type="button" onclick="findAddr()" value="???????????? ??????"></td>
				</tr>
				<tr>
					<th>??????</th>
					<td colspan="2"><input type="text" name="member_info_address"
						id="member_info_address"
						value="${memberDetail.member_info_address }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>????????????</th>
					<td colspan="2"><input type="text"
						name="member_info_address_detail" id="member_info_address_detail"
						value="${memberDetail.member_info_address_detail }"></td>
				</tr>
				<tr>
					<th>?????????????????????</th>
					<td colspan="2"><input type="text"
						name="member_info_ship_post_code" id="member_info_ship_post_code"
						value="${memberDetail.member_info_ship_post_code }"
						readonly="readonly"> <input type="button"
						onclick="findAddr1()" value="???????????? ??????"></td>
				</tr>
				<tr>
					<th>???????????????</th>
					<td colspan="2"><input type="text"
						name="member_info_ship_address" id="member_info_ship_address"
						value="${memberDetail.member_info_ship_address }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>?????????????????????</th>
					<td colspan="2"><input type="text"
						name="member_info_ship_address_detail"
						id="member_info_ship_address_detail"
						value="${memberDetail.member_info_ship_address_detail }"></td>
				</tr>
				<tr>
					<th>????????????</th>
					<td colspan="2"><input type="text"
						name="member_info_detail_acc_money"
						id="member_info_detail_acc_money"
						value="${memberDetail.member_info_detail_acc_money }"
						readonly="readonly"></td>
				</tr>

				<tr>
					<th>?????? ?????????</th>
					<td colspan="2"><input type="text"
						name="member_info_detail_point" id="member_info_detail_point"
						value="${memberDetail.member_info_detail_point }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>?????? ??????(??????,??????,??????)</th>
					<td colspan="2"><input type="text"
						name="member_service_log_status" id="member_service_log_status"
						value="${memberDetail.member_service_log_status }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>???????????? ??????</th>
					<td colspan="2"><input type="text"
						name="member_service_log_join_date"
						id="member_service_log_join_date"
						value="${memberDetail.member_service_log_join_date }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>????????????</th>
					<td colspan="2"><input type="text"
						name="member_service_log_order_count"
						id="member_service_log_order_count"
						value="${memberDetail.member_service_log_order_count }"
						readonly="readonly"></td>
				</tr>
			</tbody>

		</table>
		<table border="1">
			<tbody>
				<tr>
					<th>?????????</th>
					<td><label for="member_info_detail_like_style"></label> <input
						type="checkbox" name="style" value="???????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '???????????????')}" >checked</c:if>>???????????????
						<input type="checkbox" name="style" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="style" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="style" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="style" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="style" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="style" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="style" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="style" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="style" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_style, '????????????')}" >checked</c:if>>????????????

					</td>
				</tr>
				<tr>
					<th>?????????</th>
					<td><label for="member_info_detail_like_brand"></label> <input
						type="checkbox" name="brand" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="brand" value="??????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '??????')}" >checked</c:if>>??????
						<input type="checkbox" name="brand" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="brand" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="brand" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="brand" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="brand" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="brand" value="?????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '?????????')}" >checked</c:if>>?????????
						<input type="checkbox" name="brand" value="????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '????????????')}" >checked</c:if>>????????????
						<input type="checkbox" name="brand" value="???????????????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_brand, '???????????????')}" >checked</c:if>>???????????????

					</td>
				</tr>
				<tr>
					<th>????????????</th>
					<td><label for="member_info_detail_like_category"></label> <input
						type="checkbox" name="category" value="??????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_category, '??????')}" >checked</c:if>>??????
						<input type="checkbox" name="category" value="??????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_category, '??????')}" >checked</c:if>>??????
						<input type="checkbox" name="category" value="??????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_category, '??????')}" >checked</c:if>>??????
						<input type="checkbox" name="category" value="??????"
						<c:if test="${fn:contains(memberDetail.member_info_detail_like_category, '??????')}" >checked</c:if>>??????
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="????????????"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="????????????" onclick="membersecession()"></td>
				</tr>
			</tbody>
		</table>
		

	</form>
	<!-- Footer????????? ?????? ?????? ??????-->
		<%@include file="../menu/footer.jsp" %>

	<script src="MainPage/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="MainPage/vendor/animsition/js/animsition.min.js"></script>
	<script src="MainPage/vendor/bootstrap/js/popper.js"></script>
	<script src="MainPage/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="MainPage/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<script
		src="MainPage/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script
		src="MainPage/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<script src="MainPage/js/main.js"></script>
	<script src="MainPage/js/community.js"></script>

</body>
</html>