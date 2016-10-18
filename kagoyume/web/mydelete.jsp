<%-- 
    Document   : mydelete
    Created on : 2016/10/13, 18:23:20
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
            HttpSession hs = request.getSession();
            UserDataDTO uddd = (UserDataDTO)hs.getAttribute("loging");
        %>
        <h3>このユーザーをマジで削除しますか？</h3>
        <form action="mydeleteresult" method="post">
        <input type ="hidden" name="userID" value="<%=uddd.getUserID()%>">  
        <input type="submit" value="はい">
        
        </form>
        <form action="top.jsp" method="post">
        <input type="submit" value="いいえ">
        </form>
    </body>
</html>
<%
//ユーザー削除確認ページ
//対象のレコードの全データを表示したのちに、
//「このユーザーをマジで削除しますか？」という質問があり、「はい」と「いいえ」が直リンクとして設置してある。
//「はい」ならmydeleteresultへ、そうでないならトップページへ遷移する

%>