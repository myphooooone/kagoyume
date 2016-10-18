<%-- 
    Document   : logincomplete
    Created on : 2016/10/17, 16:25:55
    Author     : wappen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ログインしました！</h1><br><br>
        <a href ="top.jsp">トップに戻る</a><br><br>
        
        <form action="mydelete" method="post">
            <input type="submit" value="会員様削除ページ">
        </form>
        <form action="myupdate" method="post">
            <input type="submit" value="会員様情報変更ページ">
        </form>
    </body>
</html>
