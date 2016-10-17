<%-- 
    Document   : add
    Created on : 2016/10/13, 18:05:37
    Author     : wappen
--%>

<%@page import="base.YahooItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>カートに追加しました</h1>
       <form action="cart" method="post">
       <input type="submit" value="カートを見る"><br><br><br>
       <a href ="top.jsp">トップに戻る</a>
       </form>
    </body>
</html>
<%
//カートに追加ページ
//商品の情報を受け取り、クッキーやセッションに追加する
//画面には「カートに追加しました」という文言が出てくる。

%>