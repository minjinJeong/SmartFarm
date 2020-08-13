<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!-- jstl을 사용한 날짜 계산/연산 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date" %>

<!-- 내일 날짜 (60*24*1000는 한시간 후)-->
<c:set var="end" value="<%=new Date(new Date().getTime()+60*60*24*1000) %>" />
<fmt:formatDate value="${end}" type="DATE" pattern="yyyy-MM-dd HH:mm:ss" var="endDay"/>

<!-- 오늘 날짜 -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="startDay" />


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table{
		border-collapse:collapse;
	}
	th{
		color: white;
		text-align:center;
		background-color: #777777;
	}
	td{
	color: white;
	background-color: #666666;
	border-top: 1px solid #585858;
	border-bottom: 1px solid #585858;
	}
</style>
</head>
<body>
	<form method="POST" action="gWriteCheck" enctype="multipart/form-data">
	<table>
	<tbody>
		<tr>
		<td align=center width=75>제목 : </td>
		<td align=center><input type='text' size=60 name=gTitle maxlength=50 placeholder='제목' required></td></tr>
		<tr>
		<td align=center>작물명 : </td>
		<td align=center><input type='text' size=60 name=gJack maxlength=50 placeholder='작물명' required></td></tr>
		<tr>
		<td align=center>품종 : </td>
		<td align=center><input type='text' size=60 name=gPoom maxlength=50 placeholder='품종' required></td></tr>
		<tr>
		<td align=center>재배지 : </td>
		<td align=center><input type='text' size=60 name=gPoom maxlength=50 placeholder='재배지' required></td></tr>
		<tr>
		<td align=center>무게 : </td>
		<td align=center><input type='text' size=60 name=gWeight maxlength=50 placeholder='무게' required></td></tr>
		<!-- 시간 -->
		<tr>
		<td align=center>시작시간 : </td>
		<td align=center><input type='text' size=60 name=gStartTime value='${startDay}' readonly/></td></tr>
		<tr>
		<td align=center>진행기간 : </td>
		<td align=center><input type='text' size=60 name=gStartTime value='${endDay}' readonly/></td></tr>
		<!-- 최저가 -->
		<tr>
		<td align=center>개시가격 : </td>
		<td align=center><input type='text' size=60 name=gM maxlength=50 placeholder='개시가격' required></td></tr>
		<tr>
		<tr><td align=center>이미지 :</td><td><input type="file" name="upfile" id="upfile"></td></tr>
		<tr><td colspan=2 align=right>
		<input type="submit" value="등록하기">
		<button type="button" onclick="location.href='gList'">취소</button>
		</td></tr>
	</tbody>
	</table>
	</form>
</body>
</html>