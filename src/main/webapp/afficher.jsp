<!DOCTYPE html>
<%@ page import="dao.GestionProduit" %>
<%@ page import="Modéle.Produit" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Liste des clients</title>
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
<body style="font-family:Georgia,serif;background-color:#F5FFFA;text-decoration:none">
 <a class="link" href="Res.jsp" style="color:#191970"><i class="fa fa-chevron-left" aria-hidden="true" style="color:#191970"></i>
 <b>Retour</b></a>

<center><h1 style="color:#483D8B">Liste des clients</h1></center><bR><bR>
    <button class="button" style="width:150px;height:35px;background-color:#191970"><a class="link" href="AjoutProduit.html" style="color:white;font-family:Georgia,serif;text-decoration: none"><b>Ajouter un client</b></a></button>
    <button class="button" style="width:150px;height:35px;background-color:#CD5C5C;font-family:Georgia,serif;color:white"><a class="link" href="rechercher.jsp" style="color:white;text-decoration:none" ><b>Rechercher</b></a></button>

<!--<h3><a href="MyServlet.java">Accueil</a></h3> --><br><br><br><bR><bR>
    <%
        // Récupérer la liste des produits depuis l'attribut de requête "res"
        List<Produit> produits = (List<Produit>) request.getAttribute("res");

        // Vérifier si la liste est nulle ou vide
      // if (produits == null || produits.isEmpty()) {
    %>
       <!--  <h2>Aucun produit à afficher</h2>
    <%
      //  } else {
    %> -->
        <form action="afficher.dao" method="post">
            <table>
                <tr style="color:#483D8B">
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Numéro de Téléphone</th>
                    <th colspan="2">Actions</th>
                </tr>
                <% for (Produit produit : produits) { %>
                <tr>
                    <td><%= produit.getId() %></td>
                    <td><%= produit.getNom() %></td>
                    <td><%= produit.getPrenom() %></td>
                    <td><%= produit.getNumtlp() %></td>
                    <td>
                      <button id="b" style="background-color:#800000" type="button" onclick="deleteProduct('<%= produit.getId() %>')"><u style="font-family:Georgia,serif;color:white" class="link">Delete</u></button>

<script>
    function deleteProduct(id) {
        if (confirm("Êtes-vous sûr de vouloir supprimer ce client ?")) {
            fetch("delete.dao?id=" + id, { method: "POST" })
                .then(response => {
                    if (response.ok) {
                        window.location.reload();
                    } else {
                        console.log("Erreur lors de la suppression du client.");
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
                            <a href="update.jsp?id=<%= produit.getId() %>&nom=<%= produit.getNom() %>&prenom=<%= produit.getPrenom() %>&numtlp=<%= produit.getNumtlp() %>"  style="font-family:Georgia,serif;color:white" class="link">Modifier</a></button>
                    </td>
                </tr>
                <% } %>
            </table>
        </form>
   <% // } %> 
</body>
</html>
                            