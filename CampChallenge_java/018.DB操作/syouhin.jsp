<%-- 
    Document   : syouhin
    Created on : 2017/12/01, 10:55:52
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
        
        <form action="./syouhin" method="post">
            <h3>商品登録
                <br>
                商品ID
                <input type="text" name="id">
                <br>
                商品名
                <input type="text" name="name">
                <br>
                単価
                <input type="text" name="tanka">
                <br>
                <input type="submit" value="商品登録">
                <input type="button" onClick="location.href='./itiran'" value="商品一覧">
                <input type="button" onClick="location.href='./logout'" value="ログアウト">
            </h3>
        </form>
    </body>
</html>
