<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="assets/css/FarmPageCss.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>농부 페이지 변경</title>
</head>



<body>
<div class="container">

<div class="header">
		<center><h1>농부 페이지 변경</h1></center>
	</div>

<div class="content">
	<label>농가명</label>
	<input type="text" name="title" /><br /><br />
	
	<label>사진</label>
	<input type="file" name="filename1" size=20><br /><br />
	
	<label>코멘트</label>
	<textarea cols="50" rows="2" name="content"></textarea><br /><br />
	
	<button type="submit">작성</button>
	<center><a href="FarmPageMain">돌아가기</a></center>
</div>

</div>

</body>
</html>


