<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./includeSubHead.jsp" %>
    <link rel="stylesheet" href="${path}/resources/megabox/css/styleTicketing.css">
</head>
<body>
   <header id="header">
      <div class="container">
         <div class="row">
            <div class="header clearfix">
               <h1>
                  <a href="${path}/megabox/main">
                     <em><img src="${path}/resources/megabox/img/logo.png" alt="MEGABOX"></em>
                     <strong><img src="${path}/resources/megabox/img/logo-sub.png" alt="LIFE THEATER"></strong>
                  </a>
               </h1>
               <nav id="mNav">
                  <h2 class="ir_so">메가박스 전체메뉴</h2>
                  <a href="#" class="ham"><span></span></a>
               </nav>
               <nav class="nav">
                  <ul class="clearfix">
                     <li><a href="#">영화</a></li>
                     <li><a href="#">극장</a></li>
                     <li><a href="#">이벤트</a></li>
                     <li><a href="#">스토어</a></li>
                     <li><a href="#">혜택</a></li>
                  </ul>
               </nav>
            </div>
         </div>
      </div>
   </header>
   <!-- //header -->

   <section id="banner">
      <h2 class="ir_so">로그인</h2>
      <div class="banner_menu">
         <div class="container">
            <div class="row">
               <div class="bm_right">
                  <ul>
                     <li class="line"><a href="${path}/megabox/lookup">조회하기</a></li>
                     <li><a href="${path}/megabox/logout">로그아웃</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //banner -->
   
   <section id="ticketing">
      <h2 class="ir_so">예매하기</h2>
      <div class="ticketing_menu">
         <div class="container">
            <div class="row">
               <div class="ticketing_main">
                  <h3>예매하기</h3>
                  <hr>
                  <div class="formContainer">
                     <form action="${path}/megabox/ticketing" class="frist_line" method="post">
                        <div class="form_left">
                           <h2 class="screen">SCREEN</h2>
                           <ul>
                              <li class="nemo">
                                 <p>A</p>
                              </li>
                              <li>
                                 <input type="radio" id="A1" name="movieSeat" value="A1">
                                 <label id="seatLabel" for="A1">A1</label>
                              </li>
                              <li>
                                 <input type="radio" id="A2" name="movieSeat" value="A2">
                                 <label id="seatLabel" for="A2">A2</label>
                              </li>
                              <li>
                                 <input type="radio" id="A3" name="movieSeat" value="A3">
                                 <label id="seatLabel" for="A3">A3</label>
                              </li>
                              <li>
                                 <input type="radio" id="A4" name="movieSeat" value="A4">
                                 <label id="seatLabel" for="A4">A4</label>
                              </li>
                              <li>
                                 <input type="radio" id="A5" name="movieSeat" value="A5">
                                 <label id="seatLabel" for="A5">A5</label>
                              </li>
                              <li>
                                 <input type="radio" id="A6" name="movieSeat" value="A6">
                                 <label id="seatLabel" for="A6">A6</label>
                              </li>
                              <li>
                                 <input type="radio" id="A7" name="movieSeat" value="A7">
                                 <label id="seatLabel" for="A7">A7</label>
                              </li>
                              <li>
                                 <input type="radio" id="A8" name="movieSeat" value="A8">
                                 <label id="seatLabel" for="A8">A8</label>
                              </li>
                              <li>
                                 <input type="radio" id="A9" name="movieSeat" value="A9">
                                 <label id="seatLabel" for="A9">A9</label>
                              </li>
                              <li>
                                 <input type="radio" id="A10" name="movieSeat" value="A10">
                                 <label id="seatLabel" for="A10">A10</label>
                              </li>
                              <li>
                                 <input type="radio" id="A11" name="movieSeat" value="A11">
                                 <label id="seatLabel" for="A11">A11</label>
                              </li>
                              <li>
                                 <input type="radio" id="A12" name="movieSeat" value="A12">
                                 <label id="seatLabel" for="A12">A12</label>
                              </li>
                           </ul>
                           <!--A열-->
                           <ul>
                              <li class="nemo">
                                 <p>B</p>
                              </li>
                              <li>
                                 <input type="radio" id="B1" name="movieSeat" value="B1">
                                 <label id="seatLabel" for="B1">B1</label>
                              </li>
                              <li>
                                 <input type="radio" id="B2" name="movieSeat" value="B2">
                                 <label id="seatLabel" for="B2">B2</label>
                              </li>
                              <li>
                                 <input type="radio" id="B3" name="movieSeat" value="B3">
                                 <label id="seatLabel" for="B3">B3</label>
                              </li>
                              <li>
                                 <input type="radio" id="B4" name="movieSeat" value="B4">
                                 <label id="seatLabel" for="B4">B4</label>
                              </li>
                              <li>
                                 <input type="radio" id="B5" name="movieSeat" value="B5">
                                 <label id="seatLabel" for="B5">B5</label>
                              </li>
                              <li>
                                 <input type="radio" id="B6" name="movieSeat" value="B6">
                                 <label id="seatLabel" for="B6">B6</label>
                              </li>
                              <li>
                                 <input type="radio" id="B7" name="movieSeat" value="B7">
                                 <label id="seatLabel" for="B7">B7</label>
                              </li>
                              <li>
                                 <input type="radio" id="B8" name="movieSeat" value="B8">
                                 <label id="seatLabel" for="B8">B8</label>
                              </li>
                              <li>
                                 <input type="radio" id="B9" name="movieSeat" value="B9">
                                 <label id="seatLabel" for="B9">B9</label>
                              </li>
                              <li>
                                 <input type="radio" id="B10" name="movieSeat" value="B10">
                                 <label id="seatLabel" for="B10">B10</label>
                              </li>
                              <li>
                                 <input type="radio" id="B11" name="movieSeat" value="B11">
                                 <label id="seatLabel" for="B11">B11</label>
                              </li>
                              <li>
                                 <input type="radio" id="B12" name="movieSeat" value="B12">
                                 <label id="seatLabel" for="B12">B12</label>
                              </li>
                           </ul>
                           <!---B열-->
                           <ul>  
                              <li class="nemo">
                                 <p>C</p>
                              </li>
                              <li>
                                 <input type="radio" id="C1" name="movieSeat" value="C1">
                                 <label id="seatLabel" for="C1">C1</label>
                              </li>
                              <li>
                                 <input type="radio" id="C2" name="movieSeat" value="C2">
                                 <label id="seatLabel" for="C2">C2</label>
                              </li>
                              <li>
                                 <input type="radio" id="C3" name="movieSeat" value="C3">
                                 <label id="seatLabel" for="C3">C3</label>
                              </li>
                              <li>
                                 <input type="radio" id="C4" name="movieSeat" value="C4">
                                 <label id="seatLabel" for="C4">C4</label>
                              </li>
                              <li>
                                 <input type="radio" id="C5" name="movieSeat" value="C5">
                                 <label id="seatLabel" for="C5">C5</label>
                              </li>
                              <li>
                                 <input type="radio" id="C6" name="movieSeat" value="C6">
                                 <label id="seatLabel" for="C6">C6</label>
                              </li>
                              <li>
                                 <input type="radio" id="C7" name="movieSeat" value="C7">
                                 <label id="seatLabel" for="C7">C7</label>
                              </li>
                              <li>
                                 <input type="radio" id="C8" name="movieSeat" value="C8">
                                 <label id="seatLabel" for="C8">C8</label>
                              </li>
                              <li>
                                 <input type="radio" id="C9" name="movieSeat" value="C9">
                                 <label id="seatLabel" for="C9">C9</label>
                              </li>
                              <li>
                                 <input type="radio" id="C10" name="movieSeat" value="C10">
                                 <label id="seatLabel" for="C10">C10</label>
                              </li>
                              <li>
                                 <input type="radio" id="C11" name="movieSeat" value="C11">
                                 <label id="seatLabel" for="C11">C11</label>
                              </li>
                              <li>
                                 <input type="radio" id="C12" name="movieSeat" value="C12">
                                 <label id="seatLabel" for="C12">C12</label>
                              </li>
                           </ul>
                           <!--C열-->
                           <ul>  
                              <li class="nemo">
                                 <p>D</p>
                              </li>
                              <li>
                                 <input type="radio" id="D1" name="movieSeat" value="D1">
                                 <label id="seatLabel" for="D1">D1</label>
                              </li>
                              <li>
                                 <input type="radio" id="D2" name="movieSeat" value="D2">
                                 <label id="seatLabel" for="D2">D2</label>
                              </li>
                              <li>
                                 <input type="radio" id="D3" name="movieSeat" value="D3">
                                 <label id="seatLabel" for="D3">D3</label>
                              </li>
                              <li>
                                 <input type="radio" id="D4" name="movieSeat" value="D4">
                                 <label id="seatLabel" for="D4">D4</label>
                              </li>
                              <li>
                                 <input type="radio" id="D5" name="movieSeat" value="D5">
                                 <label id="seatLabel" for="D5">D5</label>
                              </li>
                              <li>
                                 <input type="radio" id="D6" name="movieSeat" value="D6">
                                 <label id="seatLabel" for="D6">D6</label>
                              </li>
                              <li>
                                 <input type="radio" id="D7" name="movieSeat" value="D7">
                                 <label id="seatLabel" for="D7">D7</label>
                              </li>
                              <li>
                                 <input type="radio" id="D8" name="movieSeat" value="D8">
                                 <label id="seatLabel" for="D8">D8</label>
                              </li>
                              <li>
                                 <input type="radio" id="D9" name="movieSeat" value="D9">
                                 <label id="seatLabel" for="D9">D9</label>
                              </li>
                              <li>
                                 <input type="radio" id="D10" name="movieSeat" value="D10">
                                 <label id="seatLabel" for="D10">D10</label>
                              </li>
                              <li>
                                 <input type="radio" id="D11" name="movieSeat" value="D11">
                                 <label id="seatLabel" for="D11">D11</label>
                              </li>
                              <li>
                                 <input type="radio" id="D12" name="movieSeat" value="D12">
                                 <label id="seatLabel" for="D12">D12</label>
                              </li>
                           </ul>
                           <!--D열-->
                        </div>
                        <!--screen//--->

                        <div class="form_right">
                           <h2>CHECK</h2>
                           <div class="select">
                              <div class="s1">
                                 <label for="movieName" class="ir_so">영화</label>
                                 <select id="movieName" name="movieName" class="ui_select1">
                                    <option value="">영화를 선택해주세요</option>
                                    <option value="샹치">샹치</option>
                                    <option value="코다">코다</option>
                                    <option value="여름날우리">여름날우리</option>
                                    <option value="상견니">상견니</option>
                                    <option value="드림걸즈">드림걸즈</option>
                                    <option value="최선의삶">최선의삶</option>
                                    <option value="모가디슈">모가디슈</option>
                                    <option value="언어의정원">언어의정원</option>
                                 </select>
                              </div>
                              <div class="s2">
                                 <label for="movieDay" class="ir_so">날짜</label>
                                 <select id="movieDay" name="movieDay" class="ui_select2">
                                    <option value="">날짜를 선택해주세요</option>
                                    <option value="20210906">2021-09-06</option>
                                    <option value="20210907">2021-09-07</option>
                                    <option value="20210908">2021-09-08</option>
                                    <option value="20210909">2021-09-09</option>
                                    <option value="20210910">2021-09-10</option>
                                    <option value="20210911">2021-09-11</option>
                                    <option value="20210912">2021-09-12</option>
                                 </select>
                              </div>
                              <div class="s3">
                                 <label for="movieTime" class="ir_so">시간</label>
                                 <select id="movieTime" name="movieTime" class="ui_select2">
                                    <option value="">시간을 선택해주세요</option>
                                    <option value="130000">오후 1:00</option>
                                    <option value="140000">오후 2:00</option>
                                    <option value="150000">오후 3:00</option>
                                    <option value="160000">오후 4:00</option>
                                    <option value="170000">오후 5:00</option>
                                    <option value="180000">오후 6:00</option>
                                    <option value="190000">오후 7:00</option>
                                    <option value="200000">오후 8:00</option>
                                    <option value="210000">오후 9:00</option>
                                 </select>
                              </div>
                              <div class="cash">
                                 
                              </div>
                              <div class="payBtn">
                                 <input type="submit" name="submit" value="결제하기">
                              </div>
                           </div>
                        </div>
                     </form>
                  </div>
                  <!--formContainer-->
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //banner -->

   <footer id="footer">
      <div id="footer_sns">
         <div class="container">
            <div class="footer_sns">
               <ul>
                  <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                  <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                  <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                  <li class="icon s4"><a href="#"><span class="ir_pm">구글플레이</span></a></li>
                  <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
               </ul>
               <div class="tel">
                  <a href="#">ARS <em>1544-0070</em></a>
               </div>
            </div>
         </div>
      </div>
      <div id="footer_info">
         <div class="container">
            <div class="row">
               <div class="footer_info">
                  <h2><img src="${path}/resources/megabox/img/logo_footer.png" alt="megabox"></h2>
                  <ul>
                     <li><a href="#">회사소개</a></li>
                     <li><a href="#">채용정보</a></li>
                     <li><a href="#">제휴/광고/부대사업 문의</a></li>
                     <li><a href="#">개인정보처리방침</a></li>
                     <li><a href="#">고객센터</a></li>
                     <li><a href="#">윤리경영</a></li>
                  </ul>
                  <address>
                     <p>서울특별시 강남구 도산대로 156, 2층 메가박스중앙(주) (논현동, 중앙엠앤비사옥)<br>대표자명 김진선 개인정보보호 책임자 경영지원실 실장 박영진<br>사업자등록번호 211-86-59478 통신판매업신고번호 제 833호</p>
                     <p>COPYRIGHT © MegaboxJoongAng, Inc. All rights reserved</p>
                  </address>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- //footer -->
   
   <!-- 자바스크립트 라이브러리 -->
   <script src="${path}/resources/megabox/js/jquery.min_1.12.4.js"></script>
   <script src="${path}/resources/megabox/js/ticketingJs.js"></script>
</body>
</html>