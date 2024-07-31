<%@page import="java.util.List"%>
<%@page import="Modéle.Commande"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<% List<Commande> R=(List<Commande>) request.getAttribute("resultat"); %>
<title>Rechercher</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="res_rech.css">
</head>
<body style="background-color:#F5FFFA"><br>
<a class="link" href="afficherc.jsp" style="color:#191970"><i class="fa fa-chevron-left" aria-hidden="true" style="color:#191970"></i>
 <b>Retour</b></a>
<center><h2 style="color:#483D8B;font-family:Georgia,serif"><b>Commande Cherchée</b></h2></center>
<br><bR><bR><br><br><br>

 <table>
      <tr>
        <th style="background-color:#483D8B">Id</th>
        <th style="background-color:#483D8B">Nom</th>
        <th style="background-color:#483D8B">Prénom</th>
        <th style="background-color:#483D8B">Nombres produits commandée</th>
      </tr>
        <% for (Commande commande : R) { %>
        <tr >
          <td><%= commande.getId() %></td>
          <td><%= commande.getClient().getNom() %></td>
       <td><%= commande.getClient().getPrenom() %></td>
          <td><%= commande.getNbrproduits() %></td>
        </tr>
      <% } %>
    </table>
</body>
</html>	