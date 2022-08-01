<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
int x = Integer.parseInt(request.getParameter("x"));
int y = Integer.parseInt(request.getParameter("y"));
String oper = request.getParameter("oper");
int result=0;
if(oper.equals("1"))
	result = x+y;
else if(oper.equals("2"))
	result = x-y;
else if(oper.equals("3"))
	result = x*y;
else
	result = x/y;

 %>
 <%=result%>
