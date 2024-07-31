<!DOCTYPE html>
<%@ page import="dao.GestionCommande" %>
<%@ page import="Modéle.Commande" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des clients</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }

        th, td {
          text-align: left;
          padding: 8px;
        }

        th {
          background-color: #483D8B;
          color: white;
        }

        tr:nth-child(even) {
          background-color: #f2f2f2;
        }

        tr:hover {
          background-color: #c9e2ff;
        }

        .button {
          background-color: #dc3545;
          border: none;
          color: white;
          padding: 6px 12px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 14px;
          margin: 4px 2px;
          cursor: pointer;
        }

        .button:hover {
          background-color: #c82333;
        }

        .link {
          color: #007bff;
          text-decoration: none;
        }

        .link:hover {
          text-decoration: underline;
        }

        button[type="submit"] {
          background-color: #dc3545; /* rouge */
          color: white;
          border: none;
          padding: 5px 10px;
          border-radius: 3px;
        }

        #b {
          background-color: #28a745; /* vert */
          color: white;
          border: none;
          padding: 5px 10px;
          border-radius: 3px;
          text-decoration: none;
        }
          
    </style>
</head>
<body style="font-family:Georgia,serif;background-color:#F5FFFA">
<a class="link" href="Res.jsp" style="color:#191970"><i class="fa fa-chevron-left" aria-hidden="true" style="color:#191970"></i>
 <b>Retour</b></a>
<center><h1 style="color:#483D8B">Liste des commandes</h1></center>
   <!--  <button style="width:150px;height:35px;background-color:#191970"><a href="AjoutCommande.html" class="link" style="color:white;font-family:Georgia,serif"><b>Ajouter commande</b></a></button> -->
         <button style="width:150px;height:35px;background-color:#CD5C5C;font-family:Georgia,serif;color:white"><a href="rechercherc.jsp" class="link" style="color:white"><b>Rechercher</b></a></button>

<!--<h3><a href="MyServlet.java">Accueil</a></h3> --><br><br><br><bR><bR><bR><bR>
    <%
        // Récupérer la liste des produits depuis l'attribut de requête "res"
        List<Commande> commandes = (List<Commande>) request.getAttribute("res");

        // Vérifier si la liste est nulle ou vide
      // if (produits == null || produits.isEmpty()) {
    %>
       <!--  <h2>Aucun produit à afficher</h2>
    <%
      //  } else {
    %> -->
        <form action="affichercommande.dao" method="post">
            <table>
                <tr style="color:#483D8B">
                    <th>Id</th>
                    <th>Nom </th>
                    <th>Prénom</th>
                    <th>Nom du produit commandé</th>
                    <th colspan="2">Actions</th>
                </tr>
                <% for (Commande commande : (List<Commande>) request.getAttribute("res")) { %>
                <tr>
                    <td><%= commande.getId() %></td>
                    <td><%= commande.getClient().getNom() %></td>
                    <td><%= commande.getClient().getPrenom() %></td>
                      <td><%= commande.getNbrproduits() %></td>
                    <td>
                       <button type="button" id="b" style="background-color:#800000"  onclick="deleteCommande('<%= commande.getId() %>')"><u style="font-family:Georgia,serif;color:white" class="link">Delete</u></button>

<script>
    function deleteCommande(id) {
        if (confirm("Êtes-vous sûr de vouloir supprimer cette commande ?")) {
            fetch("deletecommande.dao?id=" + id, { method: "POST" })
                .then(response => {
                    if (response.ok) {
                        window.location.reload();
                    } else {
                        console.log("Erreur lors de la suppression de la commande.");
                    }
                })
                .catch(error => {
                    console.log("Une erreur est survenue :", error);
                });
        }
    }
</script>
              </td>           
                    <td>
                        <button type="submit" id="b">
<a href="updatec.jsp?id=<%= commande.getId() %>&nom=<%= commande.getClient().getNom() %>&prenom=<%= commande.getClient().getPrenom() %>&nbrproduits=<%= commande.getNbrproduits() %>" style="font-family:Georgia,serif;color:white" class="link">Modifier</a></button>
                    </td>
                               
                   
                </tr>
                <% } %>
            </table>
        </form>
   <% // } %> 
</body>
</html>
                               