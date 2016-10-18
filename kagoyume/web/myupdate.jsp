<%-- 
    Document   : myupdate
    Created on : 2016/10/13, 18:21:25
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
        
         ユーザー名:<input type="text" name="name" value="<%=ud.getName()%>"><br><br>
        パスワード:<input type="password"  name="password" value="<%=ud.getPassword()%>"><br><br>
        メールアドレス:<input type="text" name="mail" value="<%=ud.getMail()%>"><br><br>
        住所:<input type="text" name="address" value="<%=ud.getAddress()%>"><br><br><br>
        <form action="myupdateresult" method="post">
            <input type="submit" value="送信">
        </form>
    </body>
</html>
<%
//フォームから入力するデータで既にあるデ.ータを更新できる
//画面構成はregistrationと同じ。フォーム内に直接記入された状態である。このフォームの内容を書き換えていくことでデータの更新ができる
//送信ボタン付き

%>