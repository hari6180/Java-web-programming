<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>My universe</title>

    <!-- 모바일 웹 페이지 설정 -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-144-precomposed.png" />

    <!-- bootstrap -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />

    <!-- 나눔고딕 웹 폰트 적용 -->
    <link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />

    <script src="https://kit.fontawesome.com/f27ac0bcc1.js" crossorigin="anonymous"></script>

    <!-- 반응형 웹을 지원하지 않을 경우 -->
    <!-- <link rel="stylesheet" href="assets/css/non-responsive.css" /> -->

    <!-- IE8 이하 버전 지원 -->
    <!--[if lt IE 9]>
      <script type="text/javascript" src="assets/js/html5shiv.js"></script>
      <script type="text/javascript" src="assets/js/respond.min.js"></script>
    <![endif]-->

    <!-- IE10 반응형 웹 버그 보완 -->
    <!--[if gt IE 9]>
      <link rel="stylesheet" type="text/css" href="assets/css/ie10.css" />
      <script type="text/javascript" src="assets/js/ie10.js"></script>
    <![endif]-->
    <style>
      body {
        padding-top: 60px;
        padding-bottom: 20px;
        margin: 0;
      }

      p {
        line-height: 200%;
      }

      /** 최상단 버튼 */
      .fa-hand-point-up {
        position: fixed;
        bottom: 20px;
        font-size: 50px;
        right: 100px;
        color: slategray;
      }

      .imgwrap {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
      }
    </style>
  </head>

  <body>
    <!-- 메뉴바 -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <!-- 배경을 제외한 메뉴 항목의 영역 제한 -->
      <div class="container">
        <!-- 로고 영역 -->
        <div class="navbar-header">
          <!-- 반응형 메뉴 버튼 -->
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">메뉴열기</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- // 반응형 메뉴 버튼 -->
          <!-- 로고 -->
          <a class="navbar-brand" href="demo-05.html"><i class="fas fa-globe-asia"></i> <b>my universe</b></a>
          <!-- // 로고 -->
        </div>
        <!-- // 로고 영역 -->
        <!-- 메뉴 영역 -->
        <div class="navbar-collapse collapse">
          <!-- 메뉴 항목 -->
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">JAVA</a></li>
            <li><a href="#">JSP</a></li>
            <li><a href="#">MySQL</a></li>
            <li><a href="#">HTML5</a></li>
            <li><a href="#">CSS3</a></li>
            <li><a href="#">Bootstrap3</a></li>
          </ul>
          <!-- // 메뉴 항목 -->
        </div>
        <!-- // 메뉴 영역 -->
      </div>
      <!-- // 배경을 제외한 메뉴 항목의 영역 제한 -->
    </div>
    <!-- // 메뉴바 -->

    <!--전체 레이아웃 -->
    <div class="layout container">
      <!-- 내용 영역 -->
      <div class="container col-md-9">
        <h1>Introduce Myself</h1>
        <hr />
        <h3>저는 이런 사람이에요.</h3>
        <hr />
        <div class="test clearfix">
          <p class="pull-left" style="display: inline-block">
            똑똑하고 게으르게 살고 싶어요. 단순 반복작업을 싫어해서 반복문을 처음 배웠을때 기분이 참 좋았답니다. 코딩의 세계란 효율적이고
            현명한 세상이어서 공부하는데 재미를 붙였어요. 자동화에 관심이 많고 여러가지 언어를 공부하는게 즐거워요. 회사를 다닐 때도
            불편한게 있으면 타팀과 협업을 통해 자동화 툴을 만들어내곤 했었는데,
            <img class="pull-left" src="img/profile.jpg" width="auto" height="200" />이제 코딩을 배웠으니 제가 직접 만들어보고 싶습니다.
            관습을 벗어나 효율을 추구하는 회사라면 제게 연락주세요. 함께 근무하기 좋은 사람입니다.똑똑하고 게으르게 살고 싶어요. 단순
            반복작업을 싫어해서 반복문을 처음 배웠을때 기분이 참 좋았답니다. 코딩의 세계란 효율적이고 현명한 세상이어서 공부하는데 재미를
            붙였어요. 자동화에 관심이 많고 여러가지 언어를 공부하는게 즐거워요. 회사를 다닐 때도 불편한게 있으면 타팀과 협업을 통해 자동화
            툴을 만들어내곤 했었는데, 이제 코딩을 배웠으니 제가 직접 만들어보고 싶습니다. 관습을 벗어나 효율을 추구하는 회사라면 제게
            연락주세요. 함께 근무하기 좋은 사람입니다.똑똑하고 게으르게 살고 싶어요. 단순 반복작업을 싫어해서 반복문을 처음 배웠을때 기분이
            참 좋았답니다. 코딩의 세계란 효율적이고 현명한 세상이어서 공부하는데 재미를 붙였어요. 자동화에 관심이 많고 여러가지 언어를
            공부하는게 즐거워요. <img class="pull-right" src="img/profile.jpg" width="auto" height="200" />회사를 다닐 때도 불편한게 있으면
            타팀과 협업을 통해 자동화 툴을 만들어내곤 했었는데, 이제 코딩을 배웠으니 제가 직접 만들어보고 싶습니다. 관습을 벗어나 효율을
            추구하는 회사라면 제게 연락주세요. 함께 근무하기 좋은 사람입니다.똑똑하고 게으르게 살고 싶어요. 단순 반복작업을 싫어해서
            반복문을 처음 배웠을때 기분이 참 좋았답니다. 코딩의 세계란 효율적이고 현명한 세상이어서 공부하는데 재미를 붙였어요. 자동화에
            관심이 많고 여러가지 언어를 공부하는게 즐거워요. 회사를 다닐 때도 불편한게 있으면 타팀과 협업을 통해 자동화 툴을 만들어내곤
            했었는데, 이제 코딩을 배웠으니 제가 직접 만들어보고 싶습니다. 관습을 벗어나 효율을 추구하는 회사라면 제게 연락주세요. 함께
            근무하기 좋은 사람입니다.똑똑하고 게으르게 살고 싶어요. 단순 반복작업을 싫어해서 반복문을 처음 배웠을때 기분이 참 좋았답니다.
            코딩의 세계란 효율적이고 현명한 세상이어서 공부하는데 재미를 붙였어요. 자동화에 관심이 많고 여러가지 언어를 공부하는게 즐거워요.
            회사를 다닐 때도 불편한게 있으면 타팀과 협업을 통해 자동화 툴을 만들어내곤 했었는데, 이제 코딩을 배웠으니 제가 직접 만들어보고
            싶습니다. 관습을 벗어나 효율을 추구하는 회사라면 제게 연락주세요. 함께 근무하기 좋은 사람입니다.
          </p>
        </div>
        <hr />
        <div class="clearfix">
          <h3>실패, 단단한 성공을 만들기 위한 밑거름</h3>
          <hr />
          <div class="row imgwrap">
            <img src="img/baking-1.jfif" alt="bread" width="30%" height="auto" />
            <img src="img/baking-2.jfif" alt="bread" width="30%" height="auto" />
            <img src="img/baking-3.jfif" alt="bread" width="30%" height="auto" />
          </div>
          <p>
            때는 9년 전, 흔히 중2병이 온다는 시기에 저는 특이하게도 베이킹 중독에 걸렸었어요. 학교를 마치고 집에 뛰어가 버터랑 설탕을
            스텐볼에 쏟아붓고 휘핑기를 돌리기 바빴습니다. 과자가 구워지는동안 밀가루 봉지를 털어 정성스레 빵반죽을 해 냉장고에 숙성시키고,
            다음날 새벽같이 일어나 풍미좋은 식빵을 굽곤 했어요. (블로깅하면서 남겨두었던 사진의 화질이 세월의 흔적을 말해줍니다.) 물론
            처음부터 맛있는 결과물이 나오진 않았습니다. 저는 분명 빵을 구웠는데 숯이 나올때도 있었고, 발효가 오버가 되어서 친구가
            수건말아놓은거냐고 놀린 퍼져버린 시나몬롤을 만들기도 했어요. 무수히 실패를 하면서도 베이킹을 계속 시도했던 이유는 ‘두고보자,
            내가 반드시 성공하고 만다. 제빵왕 김탁구 저리가라그래.’ 하는 어린 날의 치기가 있었기 때문이에요. 그렇게 실패 원인을 찾아내고,
            개선하여 다시 시도하다보니 어느순간 그럴싸한 과자와 빵들이 제 손에서 탄생했습니다. 요즘 저는 웹개발을 열심히 배우고 있어요. 분명
            저는 될거라 생각하고 코드를 짰는데 콘솔창에 붉은 글씨로 에러가 뜨는걸 자주 목격합니다. 처음엔 좀 당황스러웠는데, 이젠 그냥 ‘뭐가
            문제냐, 어디 한번볼까.’ 하고 덤덤히 고쳐요. 에러 메시지와 해결방법을 정리하면서 아직 무른 내 지식들이 이렇게 굳혀지는구나
            생각합니다. 성공하는 방법에 대해 잘 모르니 실패를 한거고, 모르면 알아가면 그만이니까요.
          </p>
        </div>
      </div>
      <hr />
      <!-- // 내용 영역 -->
      <!-- 스마트폰 이용시 공백 -->
      <div class="hidden-md hidden-lg"><br /></div>
      <!-- 메뉴드롭다운 -->
      <div class="col-md-3" id="accordion">
        <a class="list-group-item active" data-toggle="collapse" data-parent="#accordion" href="#collapse1">Hello</a>
        <div id="collapse1" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/profile.jpg" width="100%" height="100%" />
            <h4>My profile</h4>
            현재 보고 계신 페이지입니다.
          </div>
        </div>
        <a class="list-group-item" data-toggle="collapse" data-parent="#accordion" href="#collapse2">JAVA</a>
        <div id="collapse2" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/menu-2.jpg" width="100%" height="100%" />
            <h4>제목</h4>
            두 번째 항목의 내용입니다.
          </div>
        </div>
        <a class="list-group-item" data-toggle="collapse" data-parent="#accordion" href="#collapse3">JSP</a>
        <div id="collapse3" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/menu-3.jpg" width="100%" height="100%" />
            <h4>제목</h4>
            세 번째 항목의 내용입니다.
          </div>
        </div>
        <a class="list-group-item" data-toggle="collapse" data-parent="#accordion" href="#collapse4">MySQL</a>
        <div id="collapse4" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/menu-4.jpg" width="100%" height="100%" />
            <h4>제목</h4>
            네 번째 항목의 내용입니다.
          </div>
        </div>
        <a class="list-group-item" data-toggle="collapse" data-parent="#accordion" href="#collapse5">HTML5</a>
        <div id="collapse5" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/menu-5.jpg" width="100%" height="100%" />
            <h4>제목</h4>
            다섯 번째 항목의 내용입니다.
          </div>
        </div>
        <a class="list-group-item" data-toggle="collapse" data-parent="#accordion" href="#collapse6">CSS3</a>
        <div id="collapse6" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/menu-6.jpg" width="100%" height="100%" />
            <h4>제목</h4>
            여섯 번째 항목의 내용입니다.
          </div>
        </div>
        <a class="list-group-item" data-toggle="collapse" data-parent="#accordion" href="#collapse7">Bootstrap3</a>
        <div id="collapse7" class="panel-collapse collapse">
          <div class="panel-body list-group-item">
            <img src="img/menu-1.jpg" width="100%" height="100%" />
            <h4>제목</h4>
            일곱 번째 항목의 내용입니다.
          </div>
        </div>
      </div>
      <!-- // 메뉴 드롭다운 -->
    </div>

    <!-- 푸터 -->
    <div class="container">
      <footer>
        <hr />
        <address>Copyright&copy;2020. <a href="#">hariworld</a>. All right resurved</address>
        <p>
          <a href="#"><i class="far fa-hand-point-up"></i></a>
        </p>
      </footer>
    </div>
    <!-- // 푸터 -->

    <!-- Javascript -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
