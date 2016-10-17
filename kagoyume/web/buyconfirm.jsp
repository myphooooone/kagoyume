<%--
    Document   : buyconfirm
    Created on : 2016/10/13, 18:14:42
    Author     : wappen
--%>

<%@page import="base.UserDataDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="base.YahooItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   HttpSession hs = request.getSession();
   UserDataDTO udd =(UserDataDTO) hs.getAttribute("udd");
   ArrayList<YahooItem>buy = (ArrayList<YahooItem>)hs.getAttribute("cart");
   UserDataDTO uddd = (UserDataDTO)hs.getAttribute("loging");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href ="login.jsp">ログイン</a>
        <h1>購入確認ページ</h1>
        <%
        for(int i=0; i<buy.size(); i++){
            YahooItem yi=buy.get(i);
         %>
       <table border="1">
         <tr>
             <th>商品名</th>
             <th>金額</th>
             
         </tr>
         <tr>
           <th><%=yi.getName()%></th>
           <th><%=yi.getPrice()%></th>
         </tr>
         <input type="hidden" name="code" value="<%=yi.getCode()%>">
       </table>
        <% }%>
        <h1>合計金額は<%=udd.getTotal()%>円です</h1><br><br>
        <form action="BuyComplete" method="post">
            <input type ="hidden" name="total" value="<%=udd.getTotal()%>">
            <input type ="hidden" name="userID" value="<%=uddd.getUserID()%>">    
        <input type="submit" value="上記の内容で購入する"><br><br>
        </form>
        <form action="cart.jsp" method="post">
         <input type="submit" value="カートに戻る">
        </form>
    </body>
</html>
<%
//購入確認ページ
//カートに追加順で商品の名前(リンクなし)、金額が表示される
//合計金額が表示され、その下に発送方法を選択するラジオボタンがある。
//「上記の内容で購入する」ボタンと「カートに戻る」ボタンがある。


%>