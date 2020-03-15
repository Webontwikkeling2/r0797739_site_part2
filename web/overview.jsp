<%@ page import="domain.model.Toestel" %>
<%@ page import="java.util.ArrayList" %><%--
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
    <title>Toestel beheer - overzicht</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1>Toestel beheer</h1>
    <nav>
        <ul>
            <li><a class="btn btn-default" href="Toestellen?command=home">Home</a></li>
            <li><a class="btn btn-default btn-active" href="Toestellen?command=overview">Overzicht</a></li>
            <li><a class="btn btn-default" href="zoekForm.jsp">Zoeken</a></li>
            <li><a class="btn btn-default" href="toevoegen.jsp">Toevoegen</a></li>
        </ul>
    </nav>
    <div class="picture-header"></div>
</header>
<main>
    <section>
        <h2>Overzicht van alle toestellen</h2>
        <table>
            <thead>
            <tr>
                <td>Toestel naam</td>
                <td>Bouwjaar</td>
                <td>Leverancier</td>
                <td>Opslag</td>
                <td>Aantal in bezit</td>
                <td>Actie's</td>
            </tr>
            </thead>
            <tbody>
            <% if ((int)request.getAttribute("aantal") == 0){ %>
            <tr>
                <td colspan="6">Er werden geen toestellen teruggevonden</td>
            </tr>
            <% }else{ %>
            <% for (Toestel toestel: (ArrayList<Toestel>) request.getAttribute("toestellen")) { %>
            <tr>
                <td><%= toestel.getNaam() %></td>
                <td><%= toestel.getBouwjaar() %></td>
                <td><%= toestel.getLeverancier() %></td>
                <td><%= toestel.getOpslag() %></td>
                <td><%= toestel.getAantal() %></td>
                <td><a href="#">Bewerken</a> - <a href="verwijderBevestiging.jsp?naam=<%=toestel.getNaam()%>">Verwijderen</a> </td>
            </tr>
            <% } %>
            <tr>
                <td colspan="3"></td>
                <td><b>Totaal</b></td>
                <td class="totaal"><%=request.getAttribute("aantal")%></td>
            </tr>
            <% } %>

            </tbody>
        </table>
        <% if ((int)request.getAttribute("aantal") != 0){ %>
            <p>In totaal zijn er <%=request.getAttribute("aantal")%> aantal toestellen.</p>
        <% } %>
    </section>
</main>
<footer>
    <p>Copyright © 2020 | Alle rechten voorbehouden. | Website door Angelo Lemmens </p>
</footer>
</body>
</html>
