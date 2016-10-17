<%-- 
    Document   : registration
    Created on : 2016/10/13, 10:20:17
    Author     : wappen
--%>

<%@page import="base.UserData"%>
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
          UserData ud = (UserData)hs.getAttribute("ud");
          
        %>
        <h1>新規登録ページ</h1><br>
        <h3>以下を入力してください</h3><br><br>
        <form action="registrationconfirm" method="get">
           
        ユーザー名:<input type="text" name="name" value="<%=ud.getName()%>"><br><br>
        パスワード:<input type="password"  name="password" value="<%=ud.getPassword()%>"><br><br>
        メールアドレス:<input type="text" name="mail" value="<%=ud.getMail()%>"><br><br>
        住所:<input type="text" name="address" value="<%=ud.getAddress()%>"><br><br><br>
        
        
        <input type="submit" value="登録">
        </form>
    </body>
</html>
<%
//新規会員登録ページ
//loginからのみ遷移
//フォームがあり、入力するのは以下の要素
//ユーザー名
//パスワード
//メールアドレス
//住所
//registrationconfirmから戻ってきた場合は、値を保持して記入済みにできる

%>