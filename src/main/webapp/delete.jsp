<%@ page import="dao.GestionProduit" %>
<%@ page import="Modéle.Produit" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supprimer client</title>
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
        String idclient = request.getParameter("id");

        // Vérifier si la référence du produit est présente
        if ( idclient  != null && ! idclient .isEmpty()) {
            // Supprimer le produit en utilisant la classe GestionProduit ou toute autre classe appropriée
            GestionProduit gestionProduit = new GestionProduit();
            gestionProduit.delete(idclient);

            // Afficher un message de confirmation
    %>
            <p class="message">Le produit avec la référence <%=  idclient  %> a été supprimé avec succès.</p>
    <%  } else { %>
            <p class="message">Erreur : la référence du produit n'a pas été fournie.</p>
    <%  } %>

    <a href="afficher.jsp" class="button">Retour à la liste des clients</a>
</body>
</html>
