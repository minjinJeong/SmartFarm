<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page contentType="text/html; charset=EUC-KR"%>    
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글 목록</title>
</head>
<body>
<center>
	<h1>게시판</h1>
	
	<form action="getBoardList.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<td align="right">
					<select name="searchConditon">
						<option value="ALl">전체</option>
						<option value="TITLE">제목</option>
						<option value="CONTENT">내용</option>
					</select>
					<input type="text" name="searchKeyword"/>
					<input type="submit" value="검색"/>
				</td>
			</tr>
		</table>
	</form>
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
			</tr>
			
			<c:forEach items="${boardList }" var="board">
			<tr>
				<td>${board.seq }</td>
				<td align="left"><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
				<td>${board.writer }</td>
				<td>${board.regDate }</td>
			</tr>
			</c:forEach>
			<tr>
			<td colspan="4">
				<a href="BoardList">[첫 페이지로]</a>
					<c:forEach var="i" begin="1" end="${pageCnt }">
						<a href="boardList.bbs?curPage=${i }">[${i }]</a>
					</c:forEach>
			</td>
		</tr>
		</table>
		<br>
		<a href="insertBoard">새 글 등록</a>
	
</center>

</body>
</html>