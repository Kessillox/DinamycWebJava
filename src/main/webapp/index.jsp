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
    <h1>Expresiones en Java para JSP</h1>
    <%-- Mostrar texto en mayuscula--%>
<%="hola mundo".toUpperCase()%><br>
<%-- Mostrar texto en minuscula--%>
<%="HOLA MUNDO".toLowerCase()%><br>
<%-- Mostrar la longitud de un texto--%>
<%= "hola mundo".length()%><br>
<%-- Mostrar la fecha actual--%>
<%= new java.util.Date()%><br>
<%-- Mostrar la fecha actual con formato--%>
<%= new java.util.Date().toLocaleString()%><br>
<%-- Mostrar la fecha actual con formato--%>
<%= new java.util.Date().toLocaleString().replace(" ","-")%><br>
<%--imprimir una variable--%>
<%String variable = "hola mundo";%>
<%=variable%><br>

<%--Suma de dos numeros--%>
<%int num1 = 10; int num2 = 20;%>
<%=num1+num2%><br>
<%--Resta de dos numeros--%>
<%=num1-num2%><br>
<%--Multiplicacion de dos numeros--%>
<%=num1*num2%><br>
<%--Division de dos numeros--%>
<%=num1/num2%><br>

</body>
</html>