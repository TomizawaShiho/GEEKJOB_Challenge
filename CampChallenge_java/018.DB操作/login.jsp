<%-- 
    Document   : login
    Created on : 2017/12/01, 11:54:24
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
        <form action="./login" method="post">
            <h3>名前
                <input type="text" name="name">
                <br>
                パスワード
                <input type="text" name="pass">
                <br>
                <input type="submit" value="login">
            </h3>
        </form>
    </body>
</html>
