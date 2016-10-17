<%-- 
    Document   : login
    Created on : 2016/10/13, 18:11:25
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
        <h1>ログインページ</h1><br><br><br>
        ユーザー名とパスワードを入力して下さい<br><br>
        <form action="rogin" method="get">   
        ユーザー名:<input type="text" name="name"><br>
        パスワード:<input type="password" name ="password"><br><br>
        <input type="submit" value="ログイン"><br><br><br>
        </form>
        <h1>新規の方はこちら</h1>
        <form action="registration" method="get"><br><br>
        <input type="submit" value="新規登録ページ">
        </form>    
    </body>
</html>
<%
//ログイン管理ページ
//どのページからも遷移できる。ログインしているかいないかで処理が分岐する
//ログインしていない状態(各ページの「ログイン」というリンクから)で遷移してきた場合は、ユーザー名とパスワードを入力するフォームが表示される。また、「新規会員登録」というリンクも表示される。
//ログインに成功すると、その情報をログイン状態を管理できるセッションに書き込み、そのまま直前まで閲覧していたページに遷移する
//ログインしている状態で(各ページの「ログアウト」というリンクから)遷移してきた場合は、ログアウト処理を行う(セッションの破棄、クッキーに保存されたセッションIDを破棄)その後topへ
//ユーザーデータの削除フラグが1の場合は削除されたユーザーとして処理すること




%>