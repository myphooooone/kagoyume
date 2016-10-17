<%-- 
    Document   : registrationcomplete
    Created on : 2016/10/13, 18:13:55
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
        UserDataDTO udd=(UserDataDTO)hs.getAttribute("udd");
        %>
        
        <h2>登録確認</h2>
        名前：<%= udd.getName() %><br>
        パスワード:<%=udd.getPassword()%><br>
        メールアドレス:<%=udd.getmMail()%><br>
        住所:<%=udd.getAddress()%><br>
        <%=udd.getNewDate()%><br><br><br>
        <h1>以上の内容で登録しました。</h1>
        <h1><a href ="top.jsp">トップに戻る</a></h1>
    </body>
</html>
<%
//プロフィール用のDBに値を挿入。この際、現在時(年日時分)を組み込み関数で取得し、追加。
//「以上の内容で登録しました。」とregistrationconfirmのようにフォームで入力された値を表示
//「トップページへ戻る」のリンクが、目立つ場所に設置されている

%>