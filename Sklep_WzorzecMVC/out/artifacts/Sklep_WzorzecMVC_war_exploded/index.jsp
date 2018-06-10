<%--
  Created by IntelliJ IDEA.
  User: Ola
  Date: 06.06.2018
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Sklep Online</title>
  </head>
  <body>
  <h1>Witaj w moim sklepie!</h1>
  <h2>Wpisz nazwy i ceny produktów, które chcesz zakupić:</h2>
  <form method="post" action="ShopController">
    <input type="text" name="product1" placeholder="Produkt1">
    <input type="number" name="price1" step="0.01" placeholder="Cena"><br>
    <input type="text" name="product2" placeholder="Produkt2">
    <input type="number" name="price2" step="0.01" placeholder="Cena"><br>
    <input type="text" name="product3" placeholder="Produkt3">
    <input type="number" name="price3" step="0.01" placeholder="Cena"><br>
    <input type="text" name="product4" placeholder="Produkt4">
    <input type="number" name="price4" step="0.01" placeholder="Cena"><br>
    <input type="submit" value="Kup Teraz">
  </form>
  </body>
</html>
