<%-- 
    Document   : cart
    Created on : 2016/10/13, 18:06:20
    Author     : wappen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="base.YahooItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession hs = request.getSession();
    //sessionから情報を受け取る
    ArrayList<YahooItem> cart = (ArrayList) hs.getAttribute("cart");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href ="login.jsp">ログイン</a>
        <!--cartに入っている情報をサイズ分回す-->
        <% for (int i = 0; i < cart.size(); i++) {
                  YahooItem yi = cart.get(i);%>
        <table border="1">
            <tr> 
                <th>写真</th><br>
            <th>名前</th><br>
            <th>値段</th><br>
            <th>説明文</th><br>

            </tr>
            <tr>

                <td><img src="<%=yi.getImage()%>"></td><br>
            <td><%=yi.getName()%></td>
            <td><%=yi.getPrice()%>円</td><br>
            <td><%=yi.getDis()%></td><br>

            <td><form action="delete">
                    <input type="submit" value="削除"></form>>    
                </tr>

                <%}%>
                <%
                    int num = 0;
                    for (int i = 0; i < cart.size(); i++) {
                        YahooItem yi = cart.get(i);
                        num += yi.getPrice();
                    }
                    out.print(num);
                %>
        </table><br><br>
        　<form action="BuyConfirm" method="post">
            <input type="hidden" name="total"  value="<%=num%>">
            <input type="submit" value="購入"><br><br><br><br>
        </form>
        <a href ="top.jsp">トップに戻る</a>
    </body>
</html>
<%
//「カートに追加」でクッキーやセッションに保存された登録情報が登録古い順に表示される
//商品の写真と名前(リンクつき)、金額を表示。
//画面下部に全額の合計金額を表示する
//「購入する」ボタンあり
//各商品には「削除」のリンクあり。このリンクをクリックすることで、カートから商品を削除する
//カートの中身はユーザー毎に切り替えられる
//ログインしていない状態ならばログインページに遷移、そこでログインに成功した場合、非ログイン状態で「カートに追加」操作をしていた商品はそのユーザー用のカートに移る

%>