<%-- 
    Document   : JDBC10
    Created on : 2017/11/30, 15:33:09
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
        <form action="./JDBC10" method="post">
            <h3>ID
                <input type="text" name="ID">
                <br>
                名前
                <input type="text" name="name">
                <br>
                電話番号
                <input type="text" name="tel">
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
