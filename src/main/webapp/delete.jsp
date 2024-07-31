<%@ page import="dao.GestionProduit" %>
<%@ page import="Mod�le.Produit" %>
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
        // R�cup�rer la r�f�rence du produit � supprimer depuis le param�tre de requ�te
        String idclient = request.getParameter("id");

        // V�rifier si la r�f�rence du produit est pr�sente
        if ( idclient  != null && ! idclient .isEmpty()) {
            // Supprimer le produit en utilisant la classe GestionProduit ou toute autre classe appropri�e
            GestionProduit gestionProduit = new GestionProduit();
            gestionProduit.delete(idclient);

            // Afficher un message de confirmation
    %>
            <p class="message">Le produit avec la r�f�rence <%=  idclient  %> a �t� supprim� avec succ�s.</p>
    <%  } else { %>
            <p class="message">Erreur : la r�f�rence du produit n'a pas �t� fournie.</p>
    <%  } %>

    <a href="afficher.jsp" class="button">Retour � la liste des clients</a>
</body>
</html>
