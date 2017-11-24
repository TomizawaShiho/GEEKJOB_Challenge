<%-- 
    Document   : soinsuubunkai
    Created on : 2017/11/24, 13:20:33
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
            
            out.print("元の値：" + request.getParameter("suuji") + "<br>");
            
            int b = Integer.parseInt(request.getParameter("suuji"));
            
            out.print("素因数：");
            while(b%2==0){
                b = b/2;
                out.print("2,");
                if(b%2!=0){
                    break;
                }    
            }
            
            while(b%3==0){
                b = b/3;
                out.print("3,");
                if(b%3!=0){
                    break;
                }
            }
            
            while(b%5==0){
                b = b/5;
                out.print("5,");
                if(b%5!=0){
                    break;
                }
            }
            
            while(b%7==0){
                b = b/7;
                out.print("7,");
                if(b%7!=0){
                    break;
                }
            }
            
            out.print("<br>");
            if(b>=10){
                out.print("余った値：" + b + "<br>");
            }
        
        %>
    </body>
</html>
