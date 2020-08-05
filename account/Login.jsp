<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인 페이지</title>
</head>
<body>
<div id="s_left"></div>
<div id="l_contents">
<center>
<h1>로그인</h1>
<form action="" method="post">
	<table>
		<tr>
			<td><input type="text" name="id" placeholder="ID" size="31" style="height:25px;" ></td>
			<td rowspan="2"><input type="submit" value="로그인" style="height:70px;"></td>
		</tr>
		<tr>
			<td><input type="password" name="pw" placeholder="Password" size="31" style="height:25px;"></td>
		</tr>
	</table>
</form>
<a href="">아이디 찾기</a>|
<a href="">비밀번호 찾기</a>|
<a href="select.jsp">회원 가입</a>
</center>
</div>
<div id="s_right"></div>
</body>
</html>