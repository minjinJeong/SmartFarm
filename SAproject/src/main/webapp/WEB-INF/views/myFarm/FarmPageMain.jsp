<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<!-- ?after => 바뀐 스타일 시트 적용 안돼서 추가 -->
<link href="assets/css/FarmPageCss.css?after" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>농부 페이지</title>

</head>
<body>

<div class="container" align="center">

	<div class="header">
		<!-- ${farm.getFarmName()}은 농가명으로, 나중에 로그인/회원가입 기능이 완료되면 세션에 ID 를 저장해 출력한다. -->
		<h1> ${farm.getFarmName()} 님의 페이지 </h1>
	</div>
	
	<div class="content">
		<c:set var="start" value="0" />
		<c:set var="end" value="2" />
		<c:set var="len" value="${fn:length(gallerys)}" />

		<div id="galImgs">
			<a style="cursor:pointer" href="imgPagePrev" >◀</a>
			<!-- 이미지가 없을 때 -->
			<c:if test="${empty gallerys}">
				<div><img src="assets/images/Tulips.jpg">
				<p><c:out value="입력한 사진이 없습니다."/></p></div>
			</c:if>
			<!-- 이미지가 있을 때 3개씩 출력 -->
			<c:forEach items="${gallerys}" var="gallery" varStatus="status" begin="${start+imagePage}" end="${end+imagePage}">
	                <div><img src="${gallery.getPhoto_path()}" id="galImg" class="galImg">
	                <p><c:out value="${gallery.getComment()}"/></p></div>
	        </c:forEach>
	        
			<c:set var="start" value="1" />
			<c:set var="end" value="3" />
            <a style="cursor:pointer" href="imgPageNext">▶</a>
		</div>
	    
		<table border="1" width="800">
			<tr>
				<th>번호</th>
				<th>후기 내용</th>
				<th>작성자</th>
				<th>별점</th>
				<th>날짜</th>
			</tr>
			
			<tr>
				<td>1</td>
				<td>ㅁㅁㅇㄹㄴㅇㄻㄴㄹㄴㅁㅇㄹㄴ</td>
				<td>kim</td>
				<td>★☆☆☆☆</td>
				<td>2020.08.04</td>
			</tr>
			
			<tr>
				<td>2</td>
				<td>aaaa</td>
				<td>lee</td>
				<td>★★☆☆☆</td>
				<td>2020.08.04</td>
			</tr>
			
			<tr>
				<td>3</td>
				<td>bb</td>
				<td>park</td>
				<td>★★★☆☆</td>
				<td>2020.08.04</td>
			</tr>
			
			<tr>
				<td>4</td>
				<td>cccc</td>
				<td>hong</td>
				<td>★★★★☆</td>
				<td>2020.08.04</td>
			</tr>
			
			<tr>
				<td>5</td>
				<td>555555</td>
				<td>jung</td>
				<td>★★★★★</td>
				<td>2020.08.04</td>
			</tr>
		</table>
		<a href="FarmPageReview">후기작성</a>
	</div>
	  
	<div class="sidebar">
		<br>
		<p>${farm.getFarmName()} 님의 페이지</p><br>
		<p>별점평균 : ${farm.getAvgStar()}</p><br>
		<p>랭킹 : ${farm.getRatings()}</p><br>
		<a href="FarmPageModify">페이지 수정하기</a><br/>
		<a href="FarmPageWrite">사진 입력하기</a>
	</div>
</div> 
   
</body>
</html>