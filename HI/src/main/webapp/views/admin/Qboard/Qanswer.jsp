<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />

<link rel="stylesheet" href="${ path }/resources/css/Qcss/Qcss.css">

<nav class="navbar navbar-light bg-light">

	<a class="navbar-brand" href="#"> <img
		src="C:\Users\kh\Desktop\semi\logo.png" alt="" width="130" height="70">
	</a>
</nav>
<div class="board_wrap">
	<div class="board_title">
		<strong>건의사항</strong>
	</div>
	<form action="${path}/admin/Qanswer"} method="POST" enctype="multipart/form-data">
	
	<div class="board_view_wrap">
		<div class="board_view">
		<input type="hidden" name="no" value=${ board.no }>	
		<input type="hidden" name="originalFileName" value=${ board.originalFileName }>
      	<input type="hidden" name="renamedFileName" value=${ board.renamedFileName }>	
			<div class="writetitle">
				<dl>
					<dt>제목</dt>
					<dd>${ board.title }</dd>
				</dl>
			</div>

			<div class="reason">
				<dl>
					<dt>사유</dt>
					<dd> ${ board.reason } </dd>
				</dl>
			</div>

			<div class="writeperson">
				<dl>
					<dt>작성자</dt>
					<dd>${ board.writerId }</dd>
				</dl>
			</div>

			<div class="writedate">
				<dl>
					<dt>작성일</dt>
					<dd>${ board.createDate }</dd>
				</dl>
			</div>

			<div class="cont">
				<textarea name="cont">${ board.content }</textarea>
			</div>

			<div class="addfile">
				<dl>
					<dt>첨부파일</dt>
					<dd>
						<c:if test="${ not empty board.originalFileName }">
						<img src="${ path }/resources/images/file.png" width="20px" height="20px" >
						<a href="javascript:" id="fileDown">
						<span> ${ board.originalFileName } </span>
						</a>
						</c:if>
					</dd>
				</dl>
			</div>
		</div>
		<button type="submit"> 제출하기 </button>
		</form>
		<div class="bt_wrap">
			<a href="list.html" class="on">목록</a> <a href="edit.html">제출하기</a>
		</div>
	</div>
</div>