<%@page import="org.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	// JSON 라이브러리를 사용하는 경우
	JSONObject obj = new JSONObject();
	obj.put("name", name);
	obj.put("age", age);
	
	response.setContentType("text/xml; charset=UTF-8");
	response.getWriter().write(obj.toString());
%>