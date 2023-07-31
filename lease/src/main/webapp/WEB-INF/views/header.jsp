<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	window.addEventListener('load', function(){

        let list = JSON.parse('${list}');
        
        
        let cate1Arr = new Array(); // parent
        let cate2Arr = new Array(); // child
        
        let cate1Obj = new Object();
        let cate2Obj = new Object(); 
        
        // 대분류
        cateArr(cate1Arr, cate1Obj, 1 ,list);

        // 중분류
        
        console.log(cate1Arr);
        
	})
	
	function cateArr(arr, obj, parent ,list ) {
        for(let i=0; i<list.length; i++) {
	        if(list[i].categoryId2===parent) {
	        	// console.log(cateList[i].categoryName);
	        	obj = new Object();
	        	
	        	obj.cateId = list[i].categoryId;
	        	obj.cateParentId = list[i].categoryId2;
	        	obj.cateName = list[i].categoryName;
	        	
	        	arr.push(obj);
	        }	
        }
	}
	
</script>
</head>
<body>
헤더 테스트<br>
cateList : ${list}
</body>
</html>