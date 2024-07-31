<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Ajouter une commande</h1>
    <form action="ajoutercommande.dao" method="post">
        <label for="id">ID:</label>
        <input type="text" id="id" name="id"><br>

        <label for="nom">Nom:</label>
        <input type="text" id="nom" name="nom"><br>

        <label for="prenom">Prénom:</label>
        <input type="text" id="prenom" name="prenom"><br>

        <label for="nbrproduits">Nombre de produits:</label>
        <input type="text" id="nbrproduits" name="nbrproduits"><br>

        <label for="clientId">ID du client:</label>
        <input type="text" id="clientId" name="clientId"><br>

        <input type="submit" value="Ajouter">
    </form>
</body>
</html>