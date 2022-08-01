<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>

<body>
	x : <input type="text" name="" id="xvalue"><br/>
    y : <input type="text" name="" id="yvalue"><br/>
    <div id="result"></div>
    
    <button id="btnAdd">+</button>&nbsp;
    <button id="btnSub">-</button>&nbsp;
    <button id="btnMul">*</button>&nbsp;
    <button id="btnDiv">/</button>&nbsp;
    

</body>
</html>
<script>
$(()=>{
	$("#btnAdd").click(()=>{oper('1')});
	$("#btnSub").click(()=>{oper('2')});
	$("#btnMul").click(()=>{oper('3')});
	$("#btnDiv").click(()=>{oper('4')});
});

function oper(sel)
{
	$.ajax({
	url:"receive2.jsp",
	data:{
		"x":$("#xvalue").val(),
	   "y":$("#yvalue").val(),
   	   "oper":sel},
	dataType:"text",
	method:"POST"
   
   })
   .done((res)=>{
	   console.log(res);
	   $("#result").html(res);
   })
   .fail((jqXHR,error)=>{
	   console.log(error);
   });

 }
	
</script>
