<%@page import="com.academy.dao.*"%>
<%@page import="com.academy.pojo.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="retrieveclassreport.jsp">

<%
ClassesDAO dao2=new ClassesDAO();
List<Classes> list2=dao2.getallclasses();
%>
<label for="class">Class :</label>
<select name="class">

<%for(Classes ss:list2){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<br>
<br>
<input type="submit">
</form>
</body>
</html>