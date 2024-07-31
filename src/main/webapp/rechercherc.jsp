<%@ page import="java.util.List"%>
<%@ page import="Modéle.Commande"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style> .link {
          color: #007bff;
          text-decoration: none;
        }

        .link:hover {
          text-decoration: underline;
        }</style>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">

<% List<Commande> R=(List<Commande>) request.getAttribute("resultat"); %>
<title>Rechercher commande</title>
<link rel="stylesheet" type="text/css" href="rech.css">
</head>
<body style="font-family:Georgia,serif;background-color:#F5FFFA">
 

<div class="container"><br><br><br><bR><br>
  <h1 style="color:#191970"> Rechercher commande</h1>
  <form action="cherchercommande.dao" method="post">
    <div class="form-group">
      <input type="text" name="rechercher" class="form-control" id="rechercher">
    </div>
    <button type="submit" class="btn btn-primary" style="font-family:Georgia,serif">Rechercher</button>
  </form><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <table class="table">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Nombre produits commandée</th>
      </tr>
    </thead>
    <tbody>
    <% if (R != null) { %>
  <% for (Commande commande : R) { %>
    <tr>
      <td><%= commande.getId() %></td>
       <td><%= commande.getClient().getNom() %></td>
       <td><%= commande.getClient().getPrenom() %></td>
      <td><%= commande.getNbrproduits() %></td>
    </tr>
  <% } %>
<% } %>

    </tbody>
  </table>
</div>
</body>
</html>