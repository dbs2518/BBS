<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./includeSubHead.jsp" %>
    <link rel="stylesheet" href="${path}/resources/megabox/css/lookup.css">
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
                     <li class="line"><a href="${path}/megabox/ticketing">예매하기</a></li>
                     <li><a href="${path}/megabox/logout">로그아웃</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //banner -->
   
   <section id="lookup">
      <h2 class="ir_so">로그인</h2>
      <div class="lookup_menu">
         <div class="container">
            <div class="row">
               <div class="lookup_main">
                   <h3>조회하기</h3>
                   <hr>
                   <table class="lookup_table">
		               <thead>
		               	   <tr>
		               	   	   <th>번호</th>
		               	   	   <th>제목</th>
		               	   	   <th>상영일</th>
		               	   	   <th>상영시간</th>
		               	   	   <th>좌석번호</th>
		               	   	   <th>변경 / 취소</th>
		               	   </tr>
		               </thead>
		               <tbody>
					       <c:forEach var="tlist" items="${tlist}">
					       	   <tr class="table-light">
					       	   	   <td>${tlist.rownum}</td>
					       	   	   <td>${tlist.movieName}</td>
					       	   	   <td>${tlist.movieDay}</td>
					       	   	   <td>${tlist.movieTime}</td>
					       	   	   <td>${tlist.movieSeat}</td>
		               	   	       <td><a class="cancelBtn" href="${path}/megabox/ticketing?movieSeat=${tlist.movieSeat}&&ticketingSn=${tlist.ticketingSn}">변경</a> <a onclick="return confirm('정말로 삭제하시겠습니까?')" class="cancelBtn" href="${path}/megabox/delete?ticketingSn=${tlist.ticketingSn}">취소</a></td>
					       	   </tr>
					       </c:forEach>
		               	   <tr>
		               	   </tr>
		               </tbody>
			       </table>
                   <!--lookup-->
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- // -->

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
</body>
</html>