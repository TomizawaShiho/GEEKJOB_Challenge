<%-- 
    Document   : JDBC11
    Created on : 2017/12/01, 10:24:06
    Author     : 富澤　志保
--%>

<%@page contentType="text/html" pageEncoding="Shift_JIS"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./JDBC11" method="post">
            <h3>名前
                <input type="text" name="name">
                <br>
                年齢
                <input type="text" name="age">
                <br>
                誕生日
                <input type="text" name="birthday">
                <br>
                <input type="submit" value="submit">
            </h3>
        </form>
    </body>
</html>
