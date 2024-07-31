<%@page import="java.util.List"%>
<%@page import="Modéle.Produit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<% List<Produit> R=(List<Produit>) request.getAttribute("resultat"); %>
<title>Rechercher</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="res_rech.css">
</head>
<body style="background-color:#F5FFFA">
<a class="link" href="afficher.jsp" style="color:#191970"><i class="fa fa-chevron-left" aria-hidden="true" style="color:#191970"></i>
 <b>Retour</b></a>
<br><center><h2 style="color:#483D8B;font-family:Georgia,serif"><b>Client Cherchée</b></h2></center>
<br><bR><bR><br><br><br>
  <table>
      <tr>
        <th style="background-color:#483D8B">Id</th>
        <th style="background-color:#483D8B">Nom</th>
        <th style="background-color:#483D8B">Prénom</th>
        <th style="background-color:#483D8B">Numéro de téléphone</th>
      </tr>
        <% for (Produit produit : R) { %>
        <tr>
          <td><%= produit.getId() %></td>
          <td><%= produit.getNom() %></td>
          <td><%= produit.getPrenom() %></td>
          <td><%= produit.getNumtlp() %></td>
        </tr>
      <% } %>
    </table>
</body>
</html>	