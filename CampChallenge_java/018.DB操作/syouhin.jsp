<%-- 
    Document   : syouhin
    Created on : 2017/12/01, 10:55:52
    Author     : �x�V�@�u��
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
            <h3>���i�o�^
                <br>
                ���iID
                <input type="text" name="id">
                <br>
                ���i��
                <input type="text" name="name">
                <br>
                �P��
                <input type="text" name="tanka">
                <br>
                <input type="submit" value="���i�o�^">
                <input type="button" onClick="location.href='./itiran'" value="���i�ꗗ">
                <input type="button" onClick="location.href='./logout'" value="���O�A�E�g">
            </h3>
        </form>
    </body>
</html>
