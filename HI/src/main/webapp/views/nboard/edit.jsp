<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/css.css">
</head>
<body>
    <nav class="navbar navbar-light bg-light">
        
        <a class="navbar-brand" href="#">
            <img src="C:\Users\kh\Desktop\semi\logo.png" alt="" width="130" height="70">
        </a>
        <div class="main1">
            <button class="main2">회원가입</button>
            <button class="main3">로그인</button>
        </div>
    </nav>
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력" value="글 제목이 들어갑니다"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성일자</dt>
                        <dd><input type="text" placeholder="작성일자 입력" value="관리자"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" placeholder="비밀번호 입력" value="1234"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력">

글 내용이 들어갑니다.</textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="view.html" class="on">저장</a>
                <a href="view.html">취소</a>
            </div>
        </div>
    </div>
</body>
</html>