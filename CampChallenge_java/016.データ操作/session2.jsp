<%-- 
    Document   : session2
    Created on : 2017/11/27, 10:43:13
    Author     : 富澤　志保
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            HttpSession hs = request.getSession();
            String name = (String)hs.getAttribute("Name");
            String radio = (String)hs.getAttribute("seibetu");
            String area = (String)hs.getAttribute("area");
            String check1 = "";
            String check2 = "";
            if(radio != null){   
                if(radio.equals("男")){
                    check1 = "checked";
                }
                if(radio.equals("女")){
                    check2 = "checked";
                }
            }
           
        %>
        <form action="./session2_1" method="post">
            <h3>名前
                <input type="text" name="txtName" value=<%=name%>>
                <br>
                性別　男
                <input type="radio" name="rdoSample" value="男"<%=check1%>>
                女
                <input type="radio" name="rdoSample" value="女"<%=check2%>>
                <br>
                趣味
                <textarea name="mulText"><%=area%></textarea>
                <br>
                <input type="submit" value="submit">
                
            </h3>
        </form>
    </body>
</html>
