<%@ page import="java.util.List"%>
<%@ page import="Modéle.Produit"%>
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
<meta charset="ISO-8859-1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<% List<Produit> R=(List<Produit>) request.getAttribute("resultat"); %>
<title>Rechercher</title>
<link rel="stylesheet" type="text/css" href="rech.css">
</head>
<body style="font-family:Georgia,serif;background-color:#F5FFFA">

<div class="container"><br><br><br><bR><br>
  <h1 style="color:#191970"> Rechercher </h1>
  <form action="chercher.dao" method="post">
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
        <th>Numéro de téléphone</th>
      </tr>
    </thead>
    <tbody>
    <% if (R != null) { %>
  <% for (Produit produit : R) { %>
    <tr>
      <td><%= produit.getId() %></td>
      <td><%= produit.getNom() %></td>
      <td><%= produit.getPrenom() %></td>
      <td><%= produit.getNumtlp() %></td>
    </tr>
  <% } %>
<% } %>

    </tbody>
  </table>
</div>
</body>
</html>