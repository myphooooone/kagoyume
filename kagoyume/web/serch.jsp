<%--
    Document   : serch
    Created on : 2016/10/11, 20:22:23
    Author     : wappen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.fasterxml.jackson.databind.JsonNode"%>
<%@page import="base.YahooItem" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%  //セッションを宣言
    HttpSession hs = request.getSession();
    //ArrayLIst型の変数listにセッションの情報を入れる
    ArrayList<YahooItem> list = (ArrayList<YahooItem>) hs.getAttribute("result");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href ="login.jsp">ログイン</a>
        <!--検索結果を表示させたいのでsize分回す-->
        
        <%for (int i = 0; i < list.size(); i++) {
            //i個目の情報を表示させる為にyiにi個目の検索結果情報を入れる
            YahooItem yi = list.get(i);%>
        <table border="1">
            <tr> 
            <th>写真</th><br>
            <th>名前</th><br>
            <th>値段</th><br>
            <th>説明文</th><br>

            </tr>
            <tr><!--yiから情報を取り出して表示していく-->
            <td><img src="<%= yi.getImage()%>"></td><br>
            <td><a href="ItemDetail?ID=<%=i%>"><%=yi.getName()%></a></td>
            <td><%= yi.getPrice()%>円</td><br>
            <td><%= yi.getDis()%></td><br>
            
            </tr>
           
            <% }%>
        </table>

    </body>
</html>
