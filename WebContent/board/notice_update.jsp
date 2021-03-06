<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mini Shop</title>
</head>
<body>

<jsp:include page="/layout/header.jsp" />

<div class="container">
<p style="padding-left:10px;"><a href="main.do">홈</a> > <a href="NoticeList.do">공지사항</a></p>

	<div class="row">
	<div class="col-md-offset-1 col-md-10 col-sm-12">
	<h3 style="text-align:center;"> 공지사항 게시판 </h3>
	
	<form method="post" action="NoticeUpdateAction.do?noticeIdx=${requestScope.vo.noticeIdx}">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시글 수정하기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" class="form-control" placeholder="글 제목" name="noticeTitle" maxlength="50" value="${requestScope.vo.noticeTitle}"></td>
				</tr>
				<tr>
					<td><textarea class="form-control" placeholder="글 내용" name="noticeContent" maxlength="2048" style="height: 350px;">${requestScope.vo.noticeContent}</textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" class="btn btn-primary pull-right" value="글수정"  onclick="return confirm('정말로 수정 하시겠습니까?')">
	</form>
	
	</div>
	</div>
</div>

</body>
</html>