<%-- 
    Document   : for3
    Created on : 2017/11/07, 16:25:48
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
            int sum=0;
            for(int i=1;i<=100;i++){
                sum = sum + i;
            }
        %>
    </body>
</html>
