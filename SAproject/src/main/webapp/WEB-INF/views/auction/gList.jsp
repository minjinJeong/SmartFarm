<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<div
		style="width: 1200px; height: 1000px; float: left; background-color: #FFD800;">
		<!-- 진행여부 이미지 -->
		
		<!-- 경매제목 출력-->
		<h2 style="margin: 0px 10px;"><img src="assets/images/Tulips.jpg" width="80" height="40" style="margin: 10px 0px 0px 0px;"> 경매 제목 : 가나다</h2>
		<div style="position: relative; width: 49%; height: 90%; background-color: yellow; float: left; margin: 5px;">
			<!-- 경매사진 출력 -->
			<div style="text-align: center; margin-top: 30px;">
				<img src="assets/images/Tulips.jpg" width="400">
			</div>
			<!-- 경매사진 한 줄 출력 -->
			<p style="text-align: center;">사진 설명입니다.</p>
			<!-- 상품정보 출력 -->
			<div style="position: absolute; bottom: 10px; margin: 0px 10px;">

				<!-- 작물명, 품종, 재배지, 무게, 등급, 수확일자, 개시가격, 개시일자 -->
				<p>상품정보</p>
				<hr>
				<p>작물명 | 튤립</p>
				<p>품종 |</p>
				<p>재배지 |</p>
				<p>무게 |</p>
				<p>등급 |</p>
				<p>수확일자 |</p>
				<p>개시가격 |</p>
				<p>개시일자 |</p>
			</div>

		</div>
		<div style="width: 49%; height: 90%; background-color: gray; float: right; margin: 5px;">
			<div style="width: 100%; height: 60%; float: left; ">
				<!-- 남은 시간 출력 -->
				<h3 style="text-align: center;">임시 시간</h3>
				<!-- 경매정보 출력 -->
				<!-- 등록아이디, 최고가격, 즉시낙찰가, 입찰건수, 종료일자 -->
				<div style="margin: 0px 10px;">
					<hr>
					<p>등록아이디 |</p>
					<p>최고가격 | </p>
					<p>즉시낙찰가 |</p>
					<p>입찰건수 |</p>
					<p>종료일자 |</p>
				</div>
				
				<button type="submit" style="float:right; margin: 0px 10px; ">자세히보기</button><br>
				
				<!-- 상위 입찰 -->
				<!-- 테이블로 5건까지 -->
				<br>
				<table style="border: 2px solid #444444; margin: 0px 10px;">
					<thead>
						<tr>
							<th width="45px">순위</th>
							<th width="125px">입찰자</th>
							<th width="200px">입찰가</th>
							<th width="200px">입찰일시</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
						<%
						out.println("<tr><td>안녕</td><td>안녕2</td><td>안녕3</td><td>안녕4</td></tr>");
						out.println("<tr><td>안녕</td><td>안녕2</td><td>안녕3</td><td>안녕4</td></tr>");
						out.println("<tr><td>안녕</td><td>안녕2</td><td>안녕3</td><td>안녕4</td></tr>");
						out.println("<tr><td>안녕</td><td>안녕2</td><td>안녕3</td><td>안녕4</td></tr>");
						out.println("<tr><td>안녕</td><td>안녕2</td><td>안녕3</td><td>안녕4</td></tr>");
						%>
					</tbody>
				</table>
				<br>
				<button type="submit" style="margin: 0px 10px; width:40%; height:7%; ">관심등록</button>
				<button type="submit" onClick="location.href='gWrite'" style="float:right; margin: 0px 10px; width:40%; height:7%; ">입찰</button>
			</div>
			<div style="width: 100%; height: 35%; background-color: red; float: left;">
				<!-- 농장정보 출력 -->
			</div>
		</div>
	</div>
</body>
</html>