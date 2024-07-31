<%@ page import="dao.GestionCommande" %>
<%@ page import="Mod�le.Commande" %>
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
        // R�cup�rer la r�f�rence du produit � supprimer depuis le param�tre de requ�te
        String idcommande = request.getParameter("id");

        // V�rifier si la r�f�rence du produit est pr�sente
        if (idcommande != null && ! idcommande .isEmpty()) {
            // Supprimer le produit en utilisant la classe GestionProduit ou toute autre classe appropri�e
            GestionCommande gestionCommande = new GestionCommande();
            gestionCommande.delete(idcommande);

            // Afficher un message de confirmation
    %>
            <p class="message">La commande  avec la r�f�rence <%=  idcommande  %> a �t� supprim� avec succ�s.</p>
    <%  } else { %>
            <p class="message">Erreur : la r�f�rence du produit n'a pas �t� fournie.</p>
    <%  } %>

    <a href="affichec.jsp" class="button">Retour � la liste des commande</a>
</body>
</html>
