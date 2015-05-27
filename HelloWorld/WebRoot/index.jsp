<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
	<h1>杭州，欢迎你！</h1>
	<!-- 我是html注释，在客户端可见 -->
	<%--我是jsp注释，在客户端不可见 --%>
	<%!
		String a="王立明";
		int add(int x,int y)
		{
			return x+y;
		}
	 %>
	<%
	//单行注释
	/*
	多行注释，在客户端不可见到
	*/
	int z;
	out.println("大家好，欢迎学习javaee开发！"+"<br>");
	/*
	 out.println的东西就相当于在页面写html代码 
	 html代码换行并不能导致页面显示的换行 
              还得在要换行的代码后加<br> 
	*/
	z=add(3,5);
	out.println(a);
	out.println(z);
	 %>
	 
	 <hr>;
	你好：<%=a %>;a
	x+y=<%=add(3,6) %>;
    This is my JSP page. <br>
    <hr>
    <%
    	SimpleDateFormat sdf=new SimpleDateFormat("yyyy年mm月dd日");
    	String s=sdf.format(new Date());   	   	
     %>
     今天是：<%=s%> 
  </body>
</html>
