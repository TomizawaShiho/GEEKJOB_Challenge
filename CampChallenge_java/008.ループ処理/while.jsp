<%-- 
    Document   : while
    Created on : 2017/11/07, 16:35:43
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
            int a = 1000;
            while(a>=100){
                a = a / 2;
            }
        %>
    </body>
</html>
