<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    DateFormat df = new SimpleDateFormat("HH");
	String formattedDate = df.format(new Date());
    int hora = Integer.parseInt(formattedDate);
	%>
    <%="La hora es: "+hora%><br>
    
    
	<% if (hora >= 6 && hora<12) { %>
         <p> Buenos días!</p>
      <% } %>
	
	<% if (hora >= 12 && hora<20) { %>
         <p> Buenas tardes!</p>
      <% } %>
	
	<% if (hora >= 20 && hora<=23) { %>
         <p> Buenas noches!</p>
      <% } %>
	
	<% if (hora >= 0 && hora<6) { %>
         <p> Buenas noches!</p>
      <% } %>
</body>
</html>