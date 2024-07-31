<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<% String R = (String) request.getAttribute("resultat"); %>
<title>Accueil</title>
<link rel="stylesheet" href="res.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
/* Réinitialisation des styles par défaut */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Styles du bouton de soumission */
button[type="submit"] {
  background-color: #333;
  color: #fff;
  font-size: 18px;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Styles de la barre de navigation */
nav {
  background-color: #483D8B;
  padding: 10px 20px;
}

nav ul {
  list-style-type: none;
  display: flex;
  justify-content: flex-end;
}

nav ul li {
  margin-left: 10px;
}

nav ul li a {
  color: #fff;
  text-decoration: none;
  font-size: 16px;
}

/* Styles du conteneur principal */
.container {
  text-align: center;
  margin-top: 50px;
}

.container h1 {
  font-size: 24px;
  color: #333;
  margin-bottom: 20px;
}

/* Styles des boutons */
.button-container {
  margin-top: 20px;
}

.button-container button {
  background-color: #333;
  color: #fff;
  font-size: 18px;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  margin-right: 10px;
}
</style>
</head>
<body style="background-color: #F5FFFA">
  <nav>
    <ul>
      <li><a href="Login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> Déconnecter</a></li>
    </ul>
  </nav><br><br><br><br>
  <div class="container">
    <h1 style="font-family:Georgia,serif;color:#191970"> <b>Page d'accueil</b></h1><bR><br><br><bR>
    <div class="button-container">
      <button type="submit" style="background-color:#2F4F4F;color:white" onclick="window.location.href='afficher.dao'"><b style="font-family:Georgia,serif">Gérer clients</b></button>
      <button type="submit"  style="background-color:#8B008B;color:white" onclick="window.location.href='affichercommande.dao'"><b style="font-family:Georgia,serif">Gérer Commandes</b></button>
    </div>
  </div>
</body>
</html>
