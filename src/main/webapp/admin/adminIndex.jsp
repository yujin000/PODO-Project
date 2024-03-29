<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <link rel="stylesheet" href="/src/css/style.css" />
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"
    integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <style>
    .adminContents {
      position: absolute;
      left: 230px;
      background: var(--background-color);
      width: 100%;
      height: 100vh;
    }

    .adminContents * {
      color: #111;
    }

    .adminMainHeader {
      width: 85vw;
      height: 13vh;
      background-color: lightgray;
      margin: 0px 10px 0px 10px;
      position: relative;
    }

    .adminMainHeader span {
      margin-left: 30px;
    }

    #adminHeaderHello {
      font-size: 40px;
    }

    #nowTime {
      padding-top: 4px;
    }

    #adminLogoutBtn {
      right: 1px;
      height: 100%;
      position: absolute;
    }

    .adminMainView {
      width: 85vw;
      height: 85vh;
      margin: 10px 10px 0px 10px;
      overflow: hidden;
    }

    .mainView1,
    .mainView2 {
      height: 100%;
      width: 100%;
      float: left;
    }

    .mainView1 {
      width: 70%;
      margin: auto;
    }

    .mainView2 {
      width: 30%;
    }

    .mainView1-1,
    .mainView1-2 {
      height: 100%;
      width: 60vw;
    }

    .mainView1-1 {
      height: 54vh;
    }

    .mainView1-2 {
      height: 40vh;
    }

    .mainView1-1 div {
      float: left;
      height: 50vh;
      width: 27vw;
      margin: 10px 0px 4px 30px;
      background-color: lightgray;
    }

    #inquire {
      background-color: lightgray;
      height: 68%;
      width: 55.8vw;
      margin: 10px 0px 4px 30px;
    }

    #userCount * {
      float: left;
      background-color: lightgray;
      margin: 10px;
      height: 100%;
    }

    #userCount {
      width: 90%;
      height: 30%;
      overflow: hidden;
    }

    #userCountGraph {
      width: 100%;
    }

    #userList {
      background-color: lightgray;
      height: 66.5%;
      width: 87.6%;
      margin: 6px 10px 4px;
    }
    #gg{
      position:absolute;
      right:0;
      height:100%;
      width:100px;
    }
  </style>
</head>

<body>
  <div class="wrap">
    <div id="Header">
      <h1 id="logo">
        <a href="#"><img src="/image/web/logo-f-5.png" alt="" /></a>
      </h1>
      <div id="LoginBox">
        <a class="loginBtn">관리자이름</a>
        <ul class="tog">
          <li><a href="#">메인페이지로</a></li>
          <li><a href="#">계정설정</a></li>
          <li><a href="#">로그아웃</a></li>
        </ul>
      </div>
      <div id="GNB">
        <ul>
          <li><a id="today">공지사항 작성</a></li>
          <li><a id="chart">음원 관리</a></li>
          <li><a id="chart">공연 관리</a></li>
          <li><a href="#">회원 관리</a></li>
          <li><a href="#">멤버십 관리</a></li>
          <li><a href="#">문의내역 확인</a></li>
        </ul>
      </div>
    </div>
    <div class="adminContents">
      <div class="adminMainHeader">
        <span id="adminHeaderHello"><button id="gg">로그아웃</button>
          관리자님 환영합니다.
        </span><br>
        <span id="nowTime">
          2022년 11월 02일 / 11시 11분
        </span>
        
      </div>
      <div class="adminMainView">
        <div class="mainView1">
          <div class="mainView1-1">
            <div id="showlist">
              show list
            </div>
            <div id="musiclist">
              music list
            </div>
          </div>
          <div class="mainView1-2">
            <div id="inquire">
              inquire list
            </div>
          </div>
        </div>
        <div class="mainView2">
          <div id="userCount">
            <div id="userCountGraph">
              graph
            </div>
          </div>
          <div id="userList">
            user list
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>