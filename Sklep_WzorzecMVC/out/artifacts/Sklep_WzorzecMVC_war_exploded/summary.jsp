<%@ page import="pl.model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Ola
  Date: 07.06.2018
  Time: 07:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>Podsumowanie</title>
</head>
<body>
<h1>Podsumownie Twoich zakupów</h1>
<h2>Zakupiono produkty:</h2>

    <%
        List<Product> products=(List<Product>)request.getAttribute("products");

        String p1=products.get(0).getName();
        String c1=products.get(0).getPrice();
        String p2=products.get(1).getName();
        String c2=products.get(1).getPrice();
        String p3=products.get(2).getName();
        String c3=products.get(2).getPrice();
        String p4=products.get(3).getName();
        String c4=products.get(3).getPrice();
    %>

<table border="5">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Nazwa</th>
        <th scope="col">Cena</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td><%out.println(p1); %></td>
        <td><%out.println(c1 + "zl"); %></td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td><%out.println(p2); %></td>
        <td><%out.println(c2 + "zl"); %></td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td><%out.println(p3); %></td>
        <td><%out.println(c3 + "zl"); %></td>
    </tr>
    <tr>
        <th scope="row">4</th>
        <td><%out.println(p4); %></td>
        <td><%out.println(c4 + "zl"); %></td>
    </tr>
    </tbody>
</table>

<h2>Suma: <%=request.getAttribute("sum")+" zl"%></h2><br>
<h2>Srednia cena za produkt: <%=request.getAttribute("mean")+" zl"%></h2>

<a href="index.jsp">Dalsze zakupy</a>

</body>
</html>
