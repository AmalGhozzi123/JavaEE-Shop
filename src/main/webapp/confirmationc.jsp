
</html><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<style>    <style>
        body {
            font-family:Georgia,serfi;
            background-color: #f5f5f5;
            color: #333;
            text-align: center;
            margin-top: 50px;
          
        }
        
        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color:#00008B;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        
        a:hover {
            background-color: #0056b3;
        }
    </style></style>
    <meta charset="UTF-8">
    <% String R=(String) request.getAttribute("res"); %>
    <title>Confirmation</title>
</head>
<body style="font-family:Georgia,serif;background-color:#F5FFFA; text-align: center"><bR><bR><bR><bR><br><bR>
    <h1 >Mise à jour réussie</h1>
    <p>La mise à jour du commande a été effectuée avec succès.</p>
    <a href="affichercommande.dao">Retour à la liste des commande</a>
</body>
</html>
