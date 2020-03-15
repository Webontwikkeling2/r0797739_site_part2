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
    <title>Toestel beheer</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1>Toestel beheer</h1>
    <nav>
        <ul>
            <li><a class="btn btn-default btn-active" href="Toestellen?command=home">Home</a></li>
            <li><a class="btn btn-default" href="Toestellen?command=overview">Overzicht</a></li>
            <li><a class="btn btn-default" href="zoekForm.jsp">Zoeken</a></li>
            <li><a class="btn btn-default" href="toevoegen.jsp">Toevoegen</a></li>
        </ul>
    </nav>
    <div class="picture-header"></div>
</header>
<main>
    <section>
        <h2>Welkom bij toestel beheer</h2>
        <p>Momenteel zijn er <%=request.getAttribute("aantal")%> aantal toestellen in bezit.</p>
        <a href="Toestellen?command=overview"><button class="btn btn-default">Klik hier om naar het overzicht te gaan</button></a>
    </section>
</main>
<footer>
    <p>Copyright © 2020 | Alle rechten voorbehouden. | Website door Angelo Lemmens </p>
</footer>
</body>
</html>