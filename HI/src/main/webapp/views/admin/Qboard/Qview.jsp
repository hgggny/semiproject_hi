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
	<div class="board_write_wrap">
		<div class="board_write">
			
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
				<textarea>${ board.content }</textarea>
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

		<button type="button" 
				onclick="location.href='${path}/admin/Qanswer?no=${ board.no }'">답변하기</button>
		
	</div>
</div>