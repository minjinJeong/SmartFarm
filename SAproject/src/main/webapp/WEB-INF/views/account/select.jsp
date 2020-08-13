<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css"  href="assets/css/accountStyle.css">
<title>회원 가입</title>
</head>
<body>
<div id="top">
	<p>
		안녕하세요<br/> 
		회원가입 선택 페이지 입니다.<br/>
		목적에 알맞게 선택하여 주시기 바랍니다.
	</p>

</div>
<div id="left">
<center>
	<img src="assets/images/farmer.png" id="s_img" width="200" height="200"><br/><br/>
	<button type="button" onclick="location.href='farmerRegist'">농부 회원</button><br/><br/>
	농산물 판매,농가 페이지 소개,게시판 이용
</center>
</div>
<div id="right">
<center>
	<img src="assets/images/bid.jpg" id="s_img" width="200" height="200" ><br/><br/>
	<button type="button" onclick="location.href='standardRegist'">경매 회원</button><br/><br/>
	후기 작성,농산물 구입
</center>
</div>

</body>
</html>