<%@ page import="dao.GestionCommande" %>
<%@ page import="Modéle.Commande" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supprimer commande</title>
    <style>
        .message {
            font-size: 18px;
            margin-bottom: 20px;
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
            margin-top: 10px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <%
        // Récupérer la référence du produit à supprimer depuis le paramètre de requête
        String idcommande = request.getParameter("id");

        // Vérifier si la référence du produit est présente
        if (idcommande != null && ! idcommande .isEmpty()) {
            // Supprimer le produit en utilisant la classe GestionProduit ou toute autre classe appropriée
            GestionCommande gestionCommande = new GestionCommande();
            gestionCommande.delete(idcommande);

            // Afficher un message de confirmation
    %>
            <p class="message">La commande  avec la référence <%=  idcommande  %> a été supprimé avec succès.</p>
    <%  } else { %>
            <p class="message">Erreur : la référence du produit n'a pas été fournie.</p>
    <%  } %>

    <a href="affichec.jsp" class="button">Retour à la liste des commande</a>
</body>
</html>
