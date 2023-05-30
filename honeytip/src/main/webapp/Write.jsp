<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/write_style.css">
</head>
<body>
    <section>
       <form action ="WriteOK.jsp" method = "get">
        <h1>글 작성</h1>
        <div class="contact-item">제목 : </div>
        <input class="contact-box" type="text" name="mtitle" placeholder="제목을 입력해주세요.">
        <div class="contact-item">태그 설정 : </div>
        <select name="mtag">태그 설정
            <option value="여행">여행</option>
            <option value="자취">자취</option>
            <option value="쇼핑">쇼핑</option>
        </select>
        <div class="contact-reason">꿀팁    내용</div>
        <input class="contact-reason-box" type="text" name="mcontent" placeholder="꿀팁을 작성해주세요.">

        <br><button class="button" type="submit" onclick="CheckForm()">작성완료</button>
        </form>
    </section>  
</body>
</html>
  