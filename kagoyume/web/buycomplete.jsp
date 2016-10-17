<%-- 
    Document   : buycomplete
    Created on : 2016/10/13, 18:15:27
    Author     : wappen
--%>

<%@page import="base.UserDataDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="base.YahooItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   HttpSession hs = request.getSession();
   UserDataDTO udd =(UserDataDTO) hs.getAttribute("udd");
   ArrayList<YahooItem>buy = (ArrayList<YahooItem>)hs.getAttribute("cart");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href ="login.jsp">ログイン</a>
        <h1>購入が完了しました</h1>
        <%
        
        %>
        
    </body>
</html>
<%
//購入完了ページ
//総購入金額を更新
//購入データを保存
//「購入が完了しました」と表示

%>