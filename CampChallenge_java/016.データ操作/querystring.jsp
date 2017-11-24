<%-- 
    Document   : querystring
    Created on : 2017/11/22, 16:41:22
    Author     : 富澤　志保
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
            request.setCharacterEncoding("UTF-8");
            
            
            if(request.getParameter("type").equals("1")){
                out.print("雑貨<br>");
            }else if(request.getParameter("type").equals("2")){
                out.print("生鮮食品<br>");
            }else{
                out.print("その他<br>");
            }
            
            int total = Integer.parseInt(request.getParameter("total"));
            int count = Integer.parseInt(request.getParameter("count"));
            int tanka = total / count;
            out.print("一個あたりの値段：" + tanka + "<br>");
            
            double point = 0;
            if(total>=3000 && total<=4999){
                point = total * 0.04;
                int p = (int)point;
                out.print("ポイント：" + p + "<br>");
            }else if(total>=5000){
                point = total * 0.05;
                int p = (int)point;
                out.print("ポイント：" + p + "<br>");
            }

        %>
    </body>
</html>
