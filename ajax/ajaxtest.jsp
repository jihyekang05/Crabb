<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	userid : <input type="text" name="userid" id="userid"/><br/>
	password : <input type="password" name="password" id="password"/><br/>
	
	<div id="result"></div>
	
	<button id="btnCall" type="button">ajax call</button>
</body>
</html>

<script>
   function loadData(){
      var xhttp = new XMLHttpRequest();
      
      xhttp.onload = function(){
         document.getElementById("result").innerHTML=
            this.responseText;
      };
      
      var url = "receive1.jsp?userid="+document.getElementById("userid").value
    		    +"&password="
    		  	+document.getElementById("password").value;
      console.log(url);
      
      xhttp.open("GET", url ,true);
      xhttp.send();
   }
   
   window.onload = function(){
      document.getElementById("btnCall").addEventListener("click",
            function(){
            loadData();
      });
   };
</script>
