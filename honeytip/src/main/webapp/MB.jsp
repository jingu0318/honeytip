<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
 	<link rel="stylesheet" type="text/css" href="css/MB_style.css">
</head>
<body>
<script type = "text/javascript">
    function CheckForm(){
        if(document.MB.msex.value == "무"){
            alert("성별 입력 필수!!");
            document.MB.msex.focus();
            return false
        }


        document.MB.submit();

    }
</script>
    <form name = "MB" action="MBOK.jsp" method="POST" class="joinForm">

        <h2>회원가입</h2>
        <div class="textForm">
            <input name="mid" type="text" class="id" placeholder="아이디">
        </div>
        <div class="textForm">
            <input name="mpw" type="password" class="pw" placeholder="비밀번호">
        </div>
        <div class="textForm">
            <input name="mpwd" type="password" class="pw" placeholder="비밀번호 확인">
        </div>
        <div class="textForm">
            <input name="mname" type="text" class="name" placeholder="이름">
        </div>


        <div class="textForm">
            <input name="mphone" type="number" class="cellphoneNo"
                placeholder="전화번호 '-' 빼고 입력 11자리 입력">
        </div>
        <div class="textForm">
            생년월일 <input type="date" name="myear">
            <select name="msex">
            <option value="무">성별여부</option>
            <option value="남">남</option>
            <option value="여">여</option>
            </select> 
        </div>


        <input type="button"  onclick="CheckForm()" class="btn" value="J O I N" />
    </form>
</body>
</html>