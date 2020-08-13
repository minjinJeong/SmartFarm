<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="assets/css/boardStyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글</title>
</head>
<body>
<div id="s_left"></div>
<div id="contents">
	<center><h1>게시글</h1></center>
	<input name="seq" type="hidden" value="">
	<hr>
	[말머리] 제목<br/>
	작성일<br/>
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td bgcolor="orange">내용</td>
			<td align="left"><textarea name="content" cols="100" rows="20">
			본문</textarea></td>
		</tr>
	</table>
	<hr>
	댓글 수:*개<br/>
	댓글 리스트<br/>
	<form action="" method="post">
	<textarea name="textarea" cols="105" rows="5" placeholder="댓글을 남겨보세요"></textarea><br/>
	<input type="submit" align="right" value="등록"><br/>
	</form>
	<hr/>
	<center>
		<a href="insertBoard">글 등록</a>&nbsp;&nbsp;&nbsp;
		<a href="">글 삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="BoardList">글 목록</a>
	</center>
</div>
<div id="s_right"></div>

</body>
</html>