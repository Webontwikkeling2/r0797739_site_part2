<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Toestel beheer - verwijderen</title>
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
    <article>
        <h2>Verwijder dit toestel</h2>

        <p>Ben je zeker dat je <%=request.getParameter("naam")%> wil verwijderen?</p>
        <form action="Toestellen?command=delete" method="post">
            <input style="display: none;" name="naam" value="<%=request.getParameter("naam")%>">
            <input type="submit" name="verwijder" value="Zeker">
            <input type="submit" name="verwijder" value="Toch niet">
        </form>
    </article>
</main>
<footer>
    <p>Copyright © 2020 | Alle rechten voorbehouden. | Website door Angelo Lemmens </p>
</footer>
</body>
</html>