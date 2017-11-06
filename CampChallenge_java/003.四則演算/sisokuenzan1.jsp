<%-- 
    Document   : sisokuenzan1
    Created on : 2017/11/06, 15:46:43
    Author     : guest1Day
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            final int BASE=100;
            int num=5;
            int tasu=BASE+num;
            int hiku=BASE-num;
            int kakeru=BASE*num;
            int waru=BASE/num;
            int amari=BASE%num;
            
            out.print(BASE + "+" + num + "=" + tasu + "<br>");
            out.print(BASE + "-" + num + "=" + hiku + "<br>");
            out.print(BASE + "×" + num + "=" + kakeru + "<br>");
            out.print(BASE + "÷" + num + "=" + waru + "<br>");
            out.print(BASE + "%" + num + "=" + amari + "<br>");
            
        %>
    </body>
</html>
