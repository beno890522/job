<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exercise.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%!
  	String s="";
  	//使用表达式方式打印乘法表
  	String PrintMultiTable1()
  	{
  		for(int i=1;i<=9;i++)
	  	{
		  	for(int j=1;j<=i;j++)
		  	{
		  		s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp";
		  	}
		  		s+="<br>";
	  	}
	  	return s;
  	}
  	
  	//使用脚本方式，实现打印乘法表
  	String PrintMultiTable2(JspWriter out) throws Exception //抛出异常
  	{
  	
  		String a="南京我走了";
  		
  		for(int i=1;i<=9;i++)
	  	{
		  	for(int j=1;j<=i;j++)
		  	{
		  			
		  		out.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp");
		  	}
		  		out.println("<br>");
	  	}
	  	return a;
  	}
  %>
    <h1>九九乘法表</h1>
    <hr>
    <%=PrintMultiTable1()%>
    <hr>
	<%=PrintMultiTable2(out)%>
    <br>
    	缓冲区大小：<%=out.getBufferSize() %>
    	<br>
    	剩余缓冲区大小：<%=out.getRemaining() %>
    	<br>
    	是否自动清空缓冲区：<%=out.isAutoFlush() %>
  </body>
</html>
