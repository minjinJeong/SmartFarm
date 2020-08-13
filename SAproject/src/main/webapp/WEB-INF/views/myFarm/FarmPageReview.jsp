<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="assets/css/FarmPageCss.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>후기 작성</title>
</head>


<body>
<div class="container">

<div class="header" id="txtCenter">
		<h1>후기 작성</h1>
</div>

<div class="content">
	
	<label>후기 작성</label>
	<textarea cols="50" rows="5" name="content"></textarea><br /><br />
	
	<label>별점</label>
	<select name="star" >
    <option value="1">★☆☆☆☆</option>
    <option value="2">★★☆☆☆</option>
    <option value="3">★★★☆☆</option>
    <option value="4">★★★★☆</option>
    <option value="5">★★★★★</option>
    </select><br /><br />
	
	<button type="submit">작성</button>
</div>

</div>
</body>
</html>

