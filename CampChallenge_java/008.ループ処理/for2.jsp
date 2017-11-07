<%-- 
    Document   : for2
    Created on : 2017/11/07, 16:09:36
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
            String[] a = new String[30];
            for(int i=0;i<30;i++){
                a[i] = "A";
            }
            for(int i=1;i<30;i++){
                a[0] = a[0]+a[i];
            }
        %>
    </body>
</html>
