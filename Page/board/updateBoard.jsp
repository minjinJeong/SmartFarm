<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글 변경</title>
</head>
<body>
<div id="s_left"></div>
<div id="contents">
<center>
	<h1>게시글 변경하기</h1>
	<hr>
	<form action="updateBoard.do" method="post">
	<input name="seq" type="hidden" value="">
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange">제목</td>
		</tr>
		<tr>
			<td bgcolor="orange">작성자</td>
			<td align="left">${board.writer }</td>
		</tr>
		<tr>
			<td bgcolor="orange">내용</td>
			<td align="left"><textarea name="content" cols="80" rows="20"></textarea></td>
		</tr>
		<tr>
			<td bgcolor="orange">등록일</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글 수정">
			</td>
		</tr> 
	</table>
	</form>
	<hr>
	<center>
		<a href="insertBoard.jsp">글 등록</a>&nbsp;&nbsp;&nbsp;
		<a href="">글 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="BoardList.jsp">글 목록</a>
	</center>
</center>
</div>
<div id=s_right></div>

</body>
</html>