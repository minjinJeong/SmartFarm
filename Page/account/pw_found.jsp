<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/accountstyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 찾기</title>
</head>
<body style="background-color:#f5f5dc;">
<center>
<h1>비밀번호 찾기</h1>
<div id=f_div>
<form action="" method="post">
<p id="p_f2">정보를 입력해 주세요.</p>
<table id="f_table" align="center">
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="name" size="23" style="height:25px;" ></td>
	</tr>
	<tr>
		<td>아이디 : </td>
		<td><input type="text" name="id" size="23" style="height:25px;" ></td>
	</tr>
	<tr>
		<td>이메일 : </td>
		<td><input type="text" name="email" size="23" style="height:25px;" ></td>
	</tr>
	
</table><br/>
<input type="submit" value="찾기">
<input type="reset" value="취소">

</form>
</div>
</center>
</body>
</html>