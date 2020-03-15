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
			<li><a class="btn btn-default btn-active" href="zoekForm.jsp">Zoeken</a></li>
			<li><a class="btn btn-default" href="toevoegen.jsp">Toevoegen</a></li>
		</ul>
	</nav>
	<div class="picture-header"></div>
</header>
<main>
	<section>
		<h2>Zoek een toestel</h2>
		<form method="POST" action="Toestellen?command=find" novalidate>
			<p>Geef de naam van het toestel dat je zoekt.</p>
			<label class="control-label" for="naam">Naam: </label>
			<input id="naam" name="naam" type="text" value="" required>

			<label for="zoek">&nbsp;</label> <input id="zoek" type="submit" value="Vind Toestel">

		</form>
	</section>
</main>
<footer>
	<p>Copyright © 2020 | Alle rechten voorbehouden. | Website door Angelo Lemmens </p>
</footer>
</body>
</html>