<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
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
<c:set var="maxPage" value="${pageInfo.getMaxPage() }" /> <!-- 최대 페이지 수 --> 
<c:set var="startPage" value="${pageInfo.getStartPage() }" /> <!-- 시작 페이지 번호 --> 
<c:set var="endPage" value="${pageInfo.getEndPage() }" /> <!-- 끝 페이지 번호 --> 
<c:set var="listCount" value="${pageInfo.getListCount() }" /> <!-- 총 게시물 수 --> 
<c:set var="listLimit" value="${pageInfo.getListLimit() }" /> <!-- 표시할 페이지 수 -->
	<div id="logo">
		<span class="big-logo">Admin</span> <span class="small-logo">&nbsp; A</span>
	</div>
	<div id="left-menu">
		<%@ include file="/WEB-INF/views/AdminPage/menu/menu.jsp" %>
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
				<div class="title">회원현황</div>
				    <section class="row text-center placeholders">
				        <div class="col-6 col-sm-3" onclick="location.href='Management?value=0'">
				          <div class="panel panel-info">
				            <div class="panel-heading">VVVIP</div>
				            <div class="panel-body">
				              <h4>${member.top_level }</h4>
				            </div>
				          </div>
				        </div>
				        <div class="col-6 col-sm-3" onclick="location.href='Management?value=1'">
				          <div class="panel panel-success">
				            <div class="panel-heading">정상</div>
				            <div class="panel-body">
				              <h4>${member.nomal }</h4>
				            </div>
				          </div>
				        </div>
				        <div class="col-6 col-sm-3" onclick="location.href='Management?value=2'">
				          <div class="panel panel-warning">
				            <div class="panel-heading">정지</div>
				            <div class="panel-body">
				              <h4>${member.suspension }</h4>
				            </div>
				          </div>
				        </div>
				        <div class="col-6 col-sm-3" onclick="location.href='Management?value=3'">
				          <div class="panel panel-danger">
				            <div class="panel-heading">탈퇴</div>
				            <div class="panel-body">
				              <h4>${member.withdrawal }</h4>
				            </div>
				          </div>
				        </div>
				      </section>
				</div>				
				
				<div class="card">
					<div class="title">목록</div>
					<div id="board-search">
					        <div class="container">
					            <div class="search-window">
					                <form action="Management" class="formCss">
										<input id="value" type="search" name="value" placeholder="닉네임만 검색 가능">
										<button type="submit" class="btn btn-dark">검색</button>
					                </form>
					            </div>
					        </div>
					    </div>
						 <div id="board-list">
					        <div class="container">
					            <table class="board-table">
					                <thead>
						                <tr onclick="location.href='ManagementDetail?code=${management.getCode() }&page=${pageNum}&value=${value }'" style="cursor:pointer;">
						                    <th scope="col" class="th-num">번호</th>
						                    <th scope="col" class="th-title">이메일</th>
						                    <th scope="col" class="th-date">닉네임</th>
						                    <th scope="col" class="th-date">등급</th>
						                    <th scope="col" class="th-date">누적금액 (만원)</th>
						                    <th scope="col" class="th-date">가입날짜</th>
						                    <th scope="col" class="th-date">현재상태</th>
						                </tr>
						                </thead>
						                <tbody>
						                <c:if test="${not empty memberList and pageInfo.getListCount() > 0}">
											<c:forEach var="management" items="${memberList }" varStatus="status">
								                <tr onclick="location.href='ManagementDetail?code=${management.code }&page=${pageNum}&value=${value }'" style="cursor:pointer;">
								                	<td>${management.num }</td>
								                    <td>${management.email }</td>
								                    <td>${management.nickname }</td>
								                    <td>${management.level }</td>
								                    <td>${management.acc_money }</td>
													<td>${management.join_date }</td>
													<td>${management.status }</td>
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
									<input type="button" value="이전" onclick="location.href='Management?page=${pageNum - 1}&value=${value }'">
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
										<a href="Management?page=${i }">${i }</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
					
							<c:choose>
								<c:when test="${pageNum < maxPage}">
									<input type="button" value="다음" onclick="location.href='Management?page=${pageNum + 1}&value=${value }'">
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
	<script src="${path}/resources/js/jquery-3.6.0.js"></script>
</body>
</html>
