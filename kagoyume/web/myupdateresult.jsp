<%-- 
    Document   : myupdateresult
    Created on : 2016/10/13, 18:22:14
    Author     : wappen
--%>

<%@page import="base.UserDataDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession hs=request.getSession();
            UserDataDTO udd=(UserDataDTO)hs.getAttribute("udd");
        %>
        
        <h1>以上の内容で更新しました</h1>
        名前：<%= udd.getName() %><br>
        パスワード:<%=udd.getPassword()%><br>
        メールアドレス:<%=udd.getmMail()%><br>
        住所:<%=udd.getAddress()%><br>
        <%=udd.getNewDate()%><br><br><br>
        <h1><a href ="top.jsp">トップに戻る</a></h1>
    </body>
</html>
<%
//IDなどを受け取り、DBを更新。
//「以上の内容で更新しました。」と、フォームで入力された値を表示

%>