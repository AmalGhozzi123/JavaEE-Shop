<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <% String R=(String) request.getAttribute("resultat"); %>
    <title>Confirmation</title>
    <link rel="stylesheet" href="confirmer.css">
</head>
<body style="font-family:Georgia,serif;background-color:#F5FFFA">
    <div class="container">
        <h1 style="color:#191970">Confirmation</h1><br><bR>
        <p><%= R %></p>
        <a href="affichercommande.dao" style="color:#191970">Retourner à la liste des commandes</a>
        
    </div>
</body>
</html>
