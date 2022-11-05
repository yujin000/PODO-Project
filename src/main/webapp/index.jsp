<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PODO</title>
    <script
      src="https://code.jquery.com/jquery-3.6.1.min.js"
      integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
    />
    <link rel="stylesheet" href="src/css/style.css" />
    <style>
      #mypage {
        width: 100%;
        height: 50px;
        text-align: center;
        line-height: 50px;
        border-top: 1px solid silver;
        border-bottom: 1px solid silver;
        margin-bottom: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      #mypage > img {
        width: 30px;
        height: 30px;
        border-radius: 40px;
        margin-left: 10px;
      }

      #mypage > span {
        width: 140px;
        text-align: left;
        margin-left: 10px;
      }

      .tog {
        width: 140px;
        right: 24px;
        padding: 10px 0px;
        top: 150px;
        float: right;
        border: none;
        position: absolute;
        border-radius: 4px;
        display: none;
        background: #222;
        opacity: 0.9;
      }
    </style>
  </head>
  <body>
    <div class="wrap">
      <div id="Header">
        <h1 id="logo">
          <a href="index.jsp"><img src="image/web/logo-f-5.png" alt="" /></a>
        </h1>
        <div id="LoginBox">
          <c:choose>
            <c:when test="${loginEmail != null}">
              <div id="mypage">
                <img src="image/web/profile-default.jpg" alt="" /><span
                  >${loginNickname}</span
                >
              </div>
              <ul class="tog">
                <li><a id="mypageBtn">마이페이지</a></li>
                <c:choose>
                  <c:when test="${loginEmail eq 'podo@email.com'}">
                    <li><a href="/admin/adminIndex.jsp">관리자페이지</a></li>
                  </c:when>
                </c:choose>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">계정설정</a></li>
                <li><a id="modifyBtn">친구초대 </a></li>
                <li><a href="logout.member">로그아웃</a></li>
              </ul>
            </c:when>
            <c:otherwise>
              <a class="loginBtn" href="loginForm.jsp">로그인</a>
            </c:otherwise>
          </c:choose>
        </div>

        <input type="search" placeholder="MUSIC 검색" id="search" />

        <!-- login 성공 시  -->
        <div id="GNB">
          <ul>
            <li><a id="today">투데이</a></li>
            <li><a id="chart" href="/chart.music">차트</a></li>
            <li><a href="#">보관함</a></li>
            <li><a href="#">스테이션</a></li>
            <li><a href="#">매거진</a></li>
            <li><a href="">고객센터</a></li>
          </ul>
        </div>
        <div id="events">
          <ul>
            <li>event1</li>
            <li>event2</li>
            <li>event3</li>
          </ul>
        </div>

        <div id="FloatArea">
          <a href="">멤버쉽 구독</a> <a href="">포도 티켓</a>
        </div>
        <a href="" class="service">서비스 소개</a>
      </div>

      <iframe
        src="main.jsp"
        width="100%"
        height="100%"
        style="display: block; padding-left: 230px"
        id="iframe"
      ></iframe>

      <div id="MusicControl">
        <div class="hidden">
          <h1>hidden</h1>
          <ul></ul>
        </div>
        <div class="gageBar">
          <div class="gage"></div>
        </div>
        <div class="gageBar">
          <div class="gage"></div>
        </div>
        <div class="controller">
          <ul class="musicInfo">
            <li>
              <a href=""><img src="image/web/album-p.png" alt="" /></a>
            </li>
            <li>
              <strong>ttile</strong>
              <p>name</p>
            </li>
            <li>
              <button>
                <span class="material-symbols-rounded"> favorite </span>
              </button>
            </li>
            <li>
              <button>
                <span class="material-symbols-rounded"> library_books </span>
              </button>
            </li>
          </ul>
          <ul class="controlBtn">
            <li><span class="material-symbols-rounded"> repeat </span></li>
            <li>
              <span class="material-symbols-rounded"> skip_previous </span>
            </li>
            <li>
              <span class="material-symbols-rounded" id="playBtn">
                <audio id="playAudio"></audio>
                play_arrow
              </span>
            </li>
            <li><span class="material-symbols-rounded"> skip_next </span></li>
            <li><span class="material-symbols-rounded"> replay </span></li>
          </ul>

<<<<<<< HEAD
          <ul class="volume">
            <li>
              <div><span>00:00 /</span> <span>00:00 </span></div>
            </li>
            <li>
              <a href=""
                ><span class="material-symbols-rounded"> volume_mute </span></a
              >
            </li>
            <li><input type="range" /></li>
            <li>
              <a id="openList"
                ><span class="material-symbols-rounded"> queue_music </span></a
              >
            </li>
          </ul>
        </div>
      </div>
    </div>

    <script>
      // openList button toggle
      let ow = document.getElementById("openList");
      $(ow).click(function () {
        $(".hidden").toggle();
      });
=======
		<div id="MusicControl">
			<div class="gageBar" id="gageBar">
				<div class="gage" id="gage"></div>
			</div>
			<div class="hidden">
				<h1>hidden</h1>
				<ul></ul>
			</div>
			<div class="gageBar">
				<div class="gage"></div>
			</div>
			<div class="controller">
				<ul class="musicInfo">
					<li><img src="image/web/album-p.png" alt="" />
					</li>
					<li id="playInfo"><strong>title</strong>
						<p>name</p></li>
					<li>
						<button>
							<span class="material-symbols-rounded"> favorite </span>
						</button>
					</li>
					<li>
						<button>
							<span class="material-symbols-rounded"> library_books </span>
						</button>
					</li>
				</ul>
				<ul class="controlBtn">
					<li><span class="material-symbols-rounded"> repeat </span></li>
					<li><span class="material-symbols-rounded">
							skip_previous </span></li>
					<li><span class="material-symbols-rounded" id="playBtn">
					<audio id="playAudio" data-status="pause" title="재생/일시정지 선택"></audio>
					play_arrow
					</span></li>
					<li><span class="material-symbols-rounded"> skip_next </span></li>
					<li><span class="material-symbols-rounded"> replay </span></li>

				</ul>

				<ul class="volume">
					<li>
						<div>
							<span id="currentTimeText">0 : 00</span><span> / </span><span id="entireTimeText">0 : 00</span>
						</div>
					</li>
					<li><a><span class="material-symbols-rounded" id="volumeMute">
								volume_up </span></a></li>
					<li><input type="range" id=volumeBar min=0 max=100 /></li>
					<li><a id="openList"><span
							class="material-symbols-rounded"> queue_music </span></a></li>
				</ul>
			</div>
		</div>
	</div>

	<script>
		// openList button toggle
		let ow = document.getElementById("openList");
		$(ow).click(function() {
			$(".hidden").toggle();
		});
	</script>
	<script>
		// loginBox button toggle
		let lb = document.getElementById("mypage");
		$(lb).click(function() {
			$(this).next(".tog").fadeToggle();
		});
	</script>
	<script>
		// login page move action
		$(".loginBtn").click(function() {
			$("#loginPage").fadeIn(450).css("display", "block");
			$("#test").css("display", "none");
			$("#main").css("display", "none");
		});
	</script>
	<script>
		$("#chart").click(function() {
			$("#iframe").attr("src", "test.jsp");
		});

		$("#today").click(function() {
			$("#iframe").attr("src", "main.jsp");
		});

		$("#mypageBtn").click(function() {
			$("#iframe").attr("src", "mypage.jsp");
		});
	</script>
	<script>
		// Music Controller 부분
		
    	// 목록페이지 전체 div값
    	const musicListPage = document.querySelector(".hidden ul");
    	musicListPage.setAttribute("id","변수확인용");
    	// 현재 곡 번호 offset
    	let playIndex = 0;
    	// 플레이/일시정지 버튼
    	const playBtn = document.querySelector("#playBtn");
    	// 오디오를 재생할 a태그 및 초기화
    	const playAudio = document.querySelector("#playAudio");    	
    	// 좌측 하단에 뜨는 재생 정보
    	const playInfo = document.querySelector("#playInfo");
    	
    	// 컨트롤러 볼륨 바
    	const volumeBar = document.querySelector("#volumeBar");
    	playAudio.volume = volumeBar.value/100; // 처음 홈페이지에 들어왔을 때, 컨트롤러 볼륨 초기화.
    	// 음소거 버튼
    	const volumeMute = document.querySelector("#volumeMute");
    	
    	// 타이머 관련 변수 선언
    	const gage = document.querySelector("#gage"); // 현재 시간바
    	const gageBar = document.querySelector("#gageBar"); // 전체 시간바
    	const currentTimeText = document.querySelector("#currentTimeText"); // 화면에 표시되는 재생시간대 타이머
    	const entireTimeText = document.querySelector("#entireTimeText"); // 화면에 표시되는 전체 재생시간
    	
    	// music list array
    	let musicList = new Array();
    		<c:forEach items="${musicChartList }" var="i">
    			musicList.push({
    				musicSeq : "${i.musicSeq}",
    				musicName : "${i.musicName}",
    				musicArtist : "${i.musicArtist}",
    				musicAlbum : "${i.musicAlbum}",
    				musicImg : "${i.musicImg}",
    				musicMp3 : "${i.musicMp3}",
    				musicChart : "${i.musicChart}",
    				musicLylics : "${i.musicLylics}"
    			})
    		</c:forEach>
    	
    	// 페이지 첫 화면 접속시, 받은 목록에서 기본 재생곡으로 맨 앞 곡을 선택해준다.
    	playAudio.setAttribute("src","/audio/" + musicList[playIndex].musicMp3 + ".mp3");
    	console.log(playAudio.duration);
    	
    	// 각 함수 구현
    	// 재생 함수
    	function playMusic() {
			playAudio.setAttribute("data-status", "play");    			
			playAudio.play();
    	};
    	
    	// 일시정지 함수
    	function pauseMusic() {
    		playAudio.setAttribute("data-status", "play");    			
			playAudio.play();
    	}
    	
    	// 컨트롤러 타이머 구현
    	playAudio.addEventListener("timeupdate", e=>{
    		const currentTime = e.target.currentTime;
    		const entireTime = e.target.duration;
    		let currentBar = (currentTime/entireTime)*100; // %값이므로 100을 곱해준다.
    		gage.style.width = `\${currentBar}%`; // 재생시간 진행에 따라 타이머 바가 증가한다.
    		    		
    		let entireMin = Math.floor(entireTime/60); // 음악 전체시간 (분)
    		let entireSec = Math.floor(entireTime%60); // 음악 전체시간 (초)
    			
    		if (entireSec < 10) {
    			entireSec = `0\${entireSec}`;    				
    		} // 10초 미만인 경우, 앞에 0을 붙인다.
    			
    		//화면에 전체 시각 출력
    		entireTimeText.innerText = `\${entireMin} : \${entireSec}`;
    		
    		let currentMin = Math.floor(currentTime/60);
    		let currentSec = Math.floor(currentTime%60);
    		if (currentSec < 10) {
    			currentSec = `0\${currentSec}`;    			
    		}
    		
    		//화면에 재생 진행 시각 출력
    		currentTimeText.innerText = `\${currentMin} : \${currentSec}`;
    	});
    	
    	// 타이머 클릭시, 해당 시점을 재생하는 이벤트 구현
    	gageBar.addEventListener("click", function(e){
    		let gageBarWidth = gageBar.clientWidth;
    		console.log(gageBarWidth);
    		let timerOffsetX = e.offsetX;
    		console.log(timerOffsetX);
    		
    		playAudio.currentTime = (timerOffsetX / gageBarWidth) * playAudio.duration;
    		playMusic();
    	});
    	
    	// PlayList 목록 출력하기
    	for (let i=0; i<musicList.length; i++) {
    		// 각 목록값이 들어갈 li 태그
    		let li = `<li data-index="\${i}">
    			<div>
    				<div>\${musicList[i].musicName}</div>
    				<div>\${musicList[i].musicArtist}</div>
    				<div>\${musicList[i].musicAlbum}</div>
    			</div>
    			</li>
    		`;
    		musicListPage.insertAdjacentHTML("beforeend",li);
    	}
    	
    	// 좌측 하단에 재생대기중인 음원의 정보를 알려주는 함수
    	playInfo.firstChild.innerHTML = musicList[playIndex].musicName;
    	playInfo.lastChild.innerHTML = musicList[playIndex].musicArtist;

    	// 재생/일시정지 버튼 클릭시
    	playBtn.addEventListener("click",function (){
    		// 일시정지 상태에서 재생버튼을 클릭시 재생
    		if (playAudio.getAttribute("data-status") == "pause") {
    			// playAudio.setAttribute("src","/audio/" + musicList[playIndex].musicMp3 + ".mp3");
    			playAudio.setAttribute("data-status", "play");    			
    			playAudio.play();
    			// playBtn.innerText = "play_arrow";
    			// 해당 코드 도입시, 브라우저가 재생을 막는 현상이 발생하여 임시잠금
    		} else if (playAudio.getAttribute("data-status") == "play") {
    			playAudio.setAttribute("data-status", "pause");    			
    			playAudio.pause();
    			// playBtn.innerText = "pause";
    			// 해당 코드 도입시, 브라우저가 재생을 막는 현상이 발생하여 임시잠금
    		}
    	});
    	
    	// 컨트롤러 볼륨 조절
    	volumeBar.addEventListener("change", function(){
    		playAudio.volume = this.value/100;
    	});
    	
    	// 음소거 버튼 클릭시 음소거
    	volumeMute.addEventListener("click", function(){
    		if (playAudio.muted) {
    			playAudio.muted = false;
    			volumeMute.innerText = "volume_up";
    		} else {
    			playAudio.muted = true;
    			volumeMute.innerText = "volume_off";
    		}
    	});
    	
>>>>>>> 4553cd288803a1d85d7145b45808ac869532c07e
    </script>
    <script>
      // loginBox button toggle
      let lb = document.getElementById("mypage");
      $(lb).click(function () {
        $(this).next(".tog").fadeToggle();
      });
    </script>
    <script>
      // login page move action
      $(".loginBtn").click(function () {
        $("#loginPage").fadeIn(450).css("display", "block");
        $("#test").css("display", "none");
        $("#main").css("display", "none");
      });
    </script>
    <script>
      $("#chart").click(function () {
        $("#iframe").attr("src", "test.jsp");
      });

      $("#today").click(function () {
        $("#iframe").attr("src", "main.jsp");
      });

      $("#mypageBtn").click(function () {
        $("#iframe").attr("src", "mypage.jsp");
      });
    </script>
    <script>
      // 목록페이지 전체 div값
      const musicListPage = document.querySelector(".hidden ul");
      musicListPage.setAttribute("id","변수확인용");
      // music list array
      let musicList = new Array();
      	<c:forEach items="${musicChartList }" var="i">
      		musicList.push({
      			musicSeq : "${i.musicSeq}",
      			musicName : "${i.musicName}",
      			musicArtist : "${i.musicArtist}",
      			musicAlbum : "${i.musicAlbum}",
      			musicImg : "${i.musicImg}",
      			musicMP3 : "${i.musicMp3}",
      			musicChart : "${i.musicChart}",
      			musicLylics : "${i.musicLylics}"
      		})
      	</c:forEach>
      // 현재 곡 번호 offset
      let musicIndex = 0;

      // PlayList 목록 출력하기
      for (let i=0; i<musicList.length; i++) {
      	// 각 목록값이 들어갈 li 태그
      	let li = `<li data-index="\${i+1}">
      		<div>
      			<div>\${musicList[i].musicName}</div>
      			<div>\${musicList[i].musicArtist}</div>
      			<div>\${musicList[i].musicAlbum}</div>
      		</div>
      		<audio class="audioList\${musicList[i].musicSeq}"
      		src = "/audio/\${musicList[i].musicMp3}.mp3"></audio>
      		</li>
      	`;
      	musicListPage.insertAdjacentHTML("beforeend",li);
      }

      // 재생 컨트롤러 구현
      const playAudio = document.querySelector("#playAudio");
      let playIndex = 0;

      playAudio.addEventListener("click",function(){
      	playAudio.setAttribute("src","/audio/" + musicList[0].musicMp3 + ".mp3");
      	playAudio.play();
      });
    </script>
  </body>
</html>
