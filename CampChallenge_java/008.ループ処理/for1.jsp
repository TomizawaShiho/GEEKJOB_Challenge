<%-- 
    Document   : for1
    Created on : 2017/11/07, 15:48:57
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
            long a = 8;
            for(int i=1;i<20;i++){
                a = a*8;
            }
        %>
    </body>
</html>
