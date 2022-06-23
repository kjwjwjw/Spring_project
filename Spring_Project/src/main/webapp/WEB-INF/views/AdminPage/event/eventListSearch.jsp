<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지 - 커뮤니티 이벤트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
<link rel='stylesheet' href='https://raw.githubusercontent.com/forsigner/magic-check/master/css/magic-check.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:300,400'>
<link rel='stylesheet' href='http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

</head>
<body>
<!-- 페이징 처리 -->		
<c:set var="pageNum" value="${pageInfo.getPageNum() }" /> <!-- 현재 페이지 번호 --> 
<c:set var="maxPage" value="${pageInfo.getMaxPage() }" /><!-- 최대 페이지 수 --> 
<c:set var="startPage" value="${pageInfo.getStartPage() }" /><!-- 시작 페이지 번호 --> 
<c:set var="endPage" value="${pageInfo.getEndPage() }" /><!-- 끝 페이지 번호 --> 
<c:set var="listCount" value="${pageInfo.getListCount() }" /><!-- 총 게시물 수 --> 
<c:set var="listLimit" value="${pageInfo.getListLimit() }" /><!-- 표시할 페이지 수 --> 

	<div id="logo">
		<span class="big-logo">Admin</span> <span class="small-logo">&nbsp; A</span>
	</div>
	<div id="left-menu">
		<jsp:include page="/WEB-INF/views/AdminPage/menu/menu.jsp"/>
	</div>
	<div id="main-content">
		<div id="header">
			<div class="header-left float-left">
				<i id="toggle-left-menu" class="ion-android-menu"></i>
			</div>
			<div class="header-right float-right">
				<jsp:include page="/WEB-INF/views/AdminPage/menu/topMenu.jsp"/>
			</div>
		</div>
		<div id="page-container">
				
				<div class="card">
					<div class="title">이벤트</div>
					<div id="board-search">
					        <div class="container">
					            <div class="search-window">
					                <form action="./EventSearch.co" class="formCss">
										<select name="searchType" id="product">
										    <option value="event_title">제목</option>
										    <option value="event_content" <c:if test="${param.searchType eq 'event_content'}"> selected="selected"</c:if>>내용</option>
										</select>
					                        <label for="search" class="blind">이벤트 내용 검색</label>
					                        <input id="search" type="search" name="search" value="${param.search}">
					                        <button type="submit" class="btn btn-dark" >검색</button>
					                </form>
					            </div>
					        </div>
					    </div>
						 <div id="board-list">
					        <div class="container">
					            <table class="board-table">
					                <thead>
						                <tr>
							                    <th scope="col" class="th-num">번호</th>
							                    <th scope="col" class="th-title">제목 </th>
							                    <th scope="col" class="th-date">작성자</th>
							                    <th scope="col" class="th-date">작성일</th>
							                    <th scope="col" class="th-num">조회수</th>
						                </tr>
						                </thead>
						                <tbody>
						                	<c:if test="${not empty eventSearchList and pageInfo.getListCount() > 0}">
											<c:forEach var="event" items="${eventSearchList }" varStatus="status">
								                <tr>
							                    	<td>${listCount -(listCount -((pageNum-1)* listLimit + status.index)-1)} </td> 
								                    <td>
														<a href="EventDetail.co?Event_num=${event.getEvent_num() }&page=${pageNum}">
								                    		${event.getEvent_title() } </a>
								                    </td>
								                    <td>${event.getEvent_nickname() }</td>
													<td>${event.getEvent_write_date() }</td>
													<td>${event.getEvent_readcount() }</td>
								                </tr>
							              </c:forEach>
										</c:if>
							         </tbody>
					            </table>
					        </div>
    					</div>
    						<section id="pageList">
								<c:choose>
									<c:when test="${pageNum > 1}">
										<input type="button" value="이전" onclick="location.href='EventSearch.co?page=${pageNum - 1}&search=${param.search}&searchType=${param.searchType}'">
									</c:when>
									<c:otherwise>
										<input type="button" value="이전">
									</c:otherwise>
								</c:choose>
									
								<c:forEach var="i" begin="${startPage }" end="${endPage }">
									<c:choose>
										<c:when test="${pageNum eq i}">
											${i }
										</c:when>
										<c:otherwise>
											<a href="EventSearch.co?page=${i }&search=${param.search}&searchType=${param.searchType}">${i }">${i }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
						
								<c:choose>
									<c:when test="${pageNum < maxPage}">
										<input type="button" value="다음" onclick="location.href='EventSearch.co?page=${pageNum + 1}&search=${param.search}&searchType=${param.searchType}'">
									</c:when>
									<c:otherwise>
										<input type="button" value="다음">
									</c:otherwise>
								</c:choose>
							</section>
					</div>
				</div>
			</div>
	<span id="show-lable">Hello</span>
	<!-- partial -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
	<script src="${path}/resources/js/script.js"></script>
</body>
</html>

