<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Modéle.Commande" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier commande</title>
    <link rel="stylesheet" href="update.css">
    <style>
        body {
            font-family: Georgia, serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            margin-top: 20px;
            border: 1px solid #ccc;
            padding: 20px;
            position: absolute;
            left: 450px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type=text] {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            width: 100%;
            margin-bottom: 20px;
            width: 400px;
        }

        input[type=submit] {
            padding: 5px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #3e8e41;
            width: 350px;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body style="background-color:#F5FFFA">
<br>
<h1 style="color:#483D8B;font-family:Georgia,serif">Modifier Infos commande </h1>
<br>
<form action="updatecommande.dao" method="POST">
    <label for="ref">Id :</label>
    <input type="text" id="ref" name="id" value="${param.id}" style="width:550px;height:30px;font-family:Georgia,serif" readonly>
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" value="${param.nom}" style="width:550px;height:30px;font-family:Georgia,serif" readonly>
    <label for="prenom">Prénom :</label>
    <input type="text" id="prenom" name="prenom" value="${param.prenom}" style="width:550px;height:30px;font-family:Georgia,serif" readonly>
    <label for="prix">Nom du produit commandé :</label>
    <input type="text" id="prix" name="nbrproduits" value="${param.nbrproduits}" style="width:550px;height:30px;font-family:Georgia,serif">
    <center>
        <input type="submit" value="Modifier" style="color:white;background-color:green;width:350px;height:40px;font-family:Georgia,serif">
    </center>
</form>
</body>
</html>
