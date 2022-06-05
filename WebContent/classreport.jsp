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
<form action="retrieveinterfacecr.jsp">
<%
ClassesDAO dao2=new ClassesDAO();
List<Classes> list2=dao2.getallclasses();
%>
<label for="class">Choose a Class to get the report:</label>

<select name="class">

<%for(Classes ss:list2){ %>	
  <option value="<%=ss.getName() %>"><%=ss.getName() %></option>
  <%}%>
</select>
<input type="submit" value="Class Report">
<br>
</form>
</body>
</html>