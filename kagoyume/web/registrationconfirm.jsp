<%-- 
    Document   : registrationconfirm
    Created on : 2016/10/13, 18:13:04
    Author     : wappen
--%>

<%@page import="base.UserData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession hs=request.getSession();
    UserData ud = (UserData)hs.getAttribute("ud");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        名前:<%=ud.getName()%><br><br>
        パスワード:<%=ud.getPassword()%><br><br>
        メールアドレス:<%=ud.getMail()%><br><br>
        住所<%=ud.getAddress()%><br><br>
        上記の内容で登録いたします。よろしいでしょうか？<br><br>
        <form action ="registrationcomplete" method="post">
        <input type="submit" value="はい">
        </form>
        <form action="registration.jsp" method="post">
        <input type="submit" value="いいえ">
        </form>
    </body>
</html>
<%
//フォームで入力された文字や選択を表示し、「上記の内容で登録いたします。よろしいですか？」と表示。
//「はい」でregistrationcomplete「いいえ」でregistrationに値を保持したまま(戻った時にフォーム入力済みになっている)遷移
//もし不足していた場合はどの項目のデータが不足しているのかを表示。registrationに値を保持したまま遷移するリンクを表示


%>