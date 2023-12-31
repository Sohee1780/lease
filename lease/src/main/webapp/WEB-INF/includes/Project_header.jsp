<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// AJAX사용해서 일단 카테고리 뿌리기 **
	window.addEventListener('load', function() {
		// 카테고리 
		// fetch then 사용해서 JSON데이터 받아와서 카테고리 처리
		
		// url요청 결과를 받아옴
		// fetch()메서드는 Promise를 반환
		// fetch()메서드 뒤에 Promise 메서드를 포함 시킴(.then())
		// 반환된 Promise가 resolve라면 .then()메서드 안쪽에 있는 function이 실행됨
		fetch('/category')
		// 요청결과를 js object형식으로 반환
		.then(response => response.json())
		// 콜백함수 익명함수로 쓰려면 이렇게 써야함!
		.then(function(map){
			let list = map.list;
			list.forEach(cate=> {
				console.log(cate.categoryName);
			})
		});	
		/*
			.catch(function() {
	    	// handle the error
	  		});
		
			catch메서드는 거부된 promise를 처리하는데 쓰임
			에러가 발생했을 경우 catch()안의 코드가 실행됨
		*/
	})
	
</script>
</head>
<body>
    <header>
        <div class='header_top'>
            <ul class='header_top_menu'>
                <li class='header_page'><a href="http://127.0.0.1:5502/Project.html">쪽지</a></li>
                <li class='header_page'><a href="http://127.0.0.1:5502/Project.html">마이페이지</a></li>
                <li class='header_page'><a href="http://127.0.0.1:5500/Project_login.html">로그인</a></li>
            </ul>
        </div>
        <div class='head'>
            <div class='logo'><a href="#">로고자리</a></div>
            
            
            <!-- 검색 폼 시작 -->
            <form method="get" name='searchFormS' action="/home">
	            <div class='search'>
	                <input type="text" name="startDate" id="startDate" class='/hidden'>
	                <input type="text" name="endDate" id="endDate" class='/hidden'>
	                <input type="text" name="startDateIndex" id="startDateIndex" class='/hidden' value='0'>
	                <input type="text" name="endDateIndex" id="endDateIndex" class='/hidden' value='0'>
	                
	                <input type="search" name="search" id="search" placeholder='검색어' autocomplete='off'>
	                <svg width='1.2rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
	                    <path d="M368 208A160 160 0 1 0 48 208a160 160 0 1 0 320 0zM337.1 371.1C301.7 399.2 256.8 416 208 416C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208c0 48.8-16.8 93.7-44.9 129.1L505 471c9.4 9.4 9.4 24.6 0 33.9s-24.6 9.4-33.9 0L337.1 371.1z"/></svg></a> 
	                <div class='calendar active'>
	                    <div class='cal_header'>
	                        <h3>대여일</h3>
	                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" class='calendar_cancel'>
	                            <path d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"/></svg>
	                        
	                    </div>
	                    <div class='cal toCal'>
	                        <div class='calTop'>
	                            <span id='preBtn'>
	                                <svg transform='rotate(180)' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
	                                    <path d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"/></svg>
	                            </span>
	                            <div>
	                                <span id='preYear'></span>
	                                <span>.</span>
	                                <span id='preMonth'></span>
	
	                            </div>
	                        </div>
	                        <ul class='weekTitle'>
	                            <li class="col">일</li>
	                            <li class="col">월</li>
	                            <li class="col">화</li>
	                            <li class="col">수</li>
	                            <li class="col">목</li>
	                            <li class="col">금</li>
	                            <li class="col">토</li>
	                        </ul>
	                        <ul class='days'>
	
	                        </ul>
	                    </div>
	                    <div class='cal fromCal'>                        
	                        <div class='calTop'>
	                            <div>
	                                <span id='nextYear'></span>
	                                <span>.</span>
	                                <span id='nextMonth'></span>
	                            </div>
	                            <span id='nextBtn'>
	                                <svg width='0.8rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"/></svg>
	                            </span>
	                        </div>
	                        <ul class='weekTitle'>
	                            <li class="col">일</li>
	                            <li class="col">월</li>
	                            <li class="col">화</li>
	                            <li class="col">수</li>
	                            <li class="col">목</li>
	                            <li class="col">금</li>
	                            <li class="col">토</li>
	                        </ul>
	                        <ul class='days'>
	
	                        </ul>
	                    </div>
	                    <div id='searchForm'>
	                        <div>
	                            <span>시작일 : </span>
	                            <span class="start"></span>
	                        </div>
	                        <div>
	                            <span>종료일 : </span>
	                            <span class="end"></span>
	                        </div>
	                        <button>검색하기</button>
	                    </div>
	                </div>
	            </div>
            </form>
            <!-- 검색 폼 끝 -->
            
            <ul class='menulist'>
                <li class='menu'><a href="#">내상점</a></li>
                <li class='menu'><a href="http://127.0.0.1:5500/Project_등록.html">상품등록</a></li>
            </ul>
        </div>
        <div class = "categorytop">
            <nav>
                <ul class = 'categoryMenu'>
                    <li><a href = "#" id = "category-size">카테고리1</a>
                        <ul class = 'submenu'>
                            <li><a href="#" id = "subcategory-size">카테고리1-1</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리1-2</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리1-3</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리1-4</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리1-5</a></li>
                        </ul>
                    </li>
            
                    <li><a href = "#" id = "category-size">카테고리2</a>
                        <ul class = 'submenu'>
                            <li><a href="#" id = "subcategory-size">카테고리2-1</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리2-2</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리2-3</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리2-4</a></li>
                            <li><a href="#" id = "subcategory-size">카테고리2-5</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
</body>
</html>