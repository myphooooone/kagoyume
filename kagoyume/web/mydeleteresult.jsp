<%-- 
    Document   : mydeleteresult
    Created on : 2016/10/13, 18:24:10
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
        <h1>Hello World!</h1>
    </body>
</html>
<%
//ここにアクセスした段階で、IDによる削除が実行される(外部キー制約により直接DELETEは出来ないので、削除フラグを0から1に変更する)
//「削除しました｝という一文が表示される
%>