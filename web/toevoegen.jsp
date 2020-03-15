<%--
  Created by IntelliJ IDEA.
  User: angelolemmens
  Date: 01/03/2020
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Toestel beheer - toevoegen</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1>Toestel beheer</h1>
    <nav>
        <ul>
            <li><a class="btn btn-default" href="Toestellen?command=home">Home</a></li>
            <li><a class="btn btn-default" href="Toestellen?command=overview">Overzicht</a></li>
            <li><a class="btn btn-default" href="zoekForm.jsp">Zoeken</a></li>
            <li><a class="btn btn-default btn-active" href="toevoegen.jsp">Toevoegen</a></li>
        </ul>
    </nav>
    <div class="picture-header"></div>
</header>
<main>
    <section>
        <h2>Nieuw toestel toevoegen</h2>
        <%= (request.getAttribute("error") != null) ? "<p>"+request.getAttribute("error")+"</p>" : "" %>
        <%= (request.getAttribute("success") != null) ? "<p>"+request.getAttribute("success")+"</p>" : "" %>
        <form method="post" name="nieuw_form" action="Toestellen?command=add" novalidate>
            <label for="naam">Toestel naam:</label>
            <input id="naam" name="Tnaam" type="text">

            <label for="bouwjaar">Bouwjaar:</label>
            <input id="bouwjaar" name="bouwjaar" type="text">

            <label for="leverancier">Leverancier:</label>
            <input id="leverancier" name="leverancier" type="text">

            <label for="opslag">Opslag capaciteit:</label>
            <input id="opslag" name="opslag" type="number" min="8">

            <label for="aantal">Aantal in bezit:</label>
            <input id="aantal" name="aantal" type="number" min="0">

            <input class="btn btn-default" type="submit" name="nieuw" value="Toevoegen">
        </form>
    </section>
</main>
<footer>
    <p>Copyright © 2020 | Alle rechten voorbehouden. | Website door Angelo Lemmens </p>
</footer>
</body>
</html>