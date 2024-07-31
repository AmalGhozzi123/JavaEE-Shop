package Contrôleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modéle.Commande;
import Modéle.Produit;
import dao.GestionCommande;
import dao.GestionProduit;

@WebServlet("*.dao")
public class ServletProduit extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        if (path.equals("/ajouter.dao")) {
            request.getRequestDispatcher("AjoutProduit.html").forward(request, response);
        } else if (path.equals("/ajoutercommande.dao")) {
            request.getRequestDispatcher("AjoutCommande.html").forward(request, response);
        } else if (path.equals("/afficher.dao")) {
            GestionProduit gestionProduit = new GestionProduit();
            List<Produit> res = gestionProduit.Afficher();
            request.setAttribute("res", res);
            request.getRequestDispatcher("afficher.jsp").forward(request, response);
        } else if (path.equals("/affichercommande.dao")) {
            GestionCommande gestionCommande = new GestionCommande();
            List<Commande> res = gestionCommande.afficher();
            request.setAttribute("res", res);
            request.getRequestDispatcher("afficherc.jsp").forward(request, response);
        } else {
            response.sendRedirect("afficher.dao");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();

        if (path.equals("/ajouter.dao")) {
            String id = request.getParameter("id");
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String numtlp = request.getParameter("numtlp");
            Produit produit = new Produit();

            produit.setId(id);
            produit.setNom(nom);
            produit.setPrenom(prenom);
            produit.setNumtlp(numtlp);
            GestionProduit gestionproduit = new GestionProduit();
            Produit P = gestionproduit.save(produit);
            System.out.println(P.getNom() + " " + P.getPrenom());

            String resultat = "Ajout avec succès : " + produit.getNom();
            request.setAttribute("resultat", resultat);
            request.getRequestDispatcher("confirmerAjout.jsp").forward(request, response);
        } else if (path.equals("/ajoutercommande.dao")) {
            String id = request.getParameter("id");
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String nbrproduits = request.getParameter("nbrproduits");
            Commande commande = new Commande();

            commande.setId(id);
            Produit client = new Produit();
            client.setNom(nom);
            client.setPrenom(prenom);
            commande.setClient(client);
            commande.setNbrproduits(nbrproduits);
            GestionCommande gestioncommande = new GestionCommande();
            Commande C = gestioncommande.save(commande);
            System.out.println(C.getClient().getNom() + " " + C.getClient().getPrenom());

            String resultat = "Ajout avec succès : " + commande.getClient().getNom();
            request.setAttribute("resultat", resultat);
            request.getRequestDispatcher("confirmerAjoutc.jsp").forward(request, response);
        } else if (path.equals("/chercher.dao")) {
            String MC = request.getParameter("rechercher");
            GestionProduit gestionproduit = new GestionProduit();
            List<Produit> resultat = gestionproduit.produitsParMC(MC);
            request.setAttribute("resultat", resultat);
            request.getRequestDispatcher("resultat_rechercher.jsp").forward(request, response);
        } else if (path.equals("/cherchercommande.dao")) {
            String MC = request.getParameter("rechercher");
            GestionCommande gestioncommande = new GestionCommande();
            List<Commande> resultat = gestioncommande.produitsParMC(MC);
            request.setAttribute("resultat", resultat);
            request.getRequestDispatcher("resultat_rechercherc.jsp").forward(request, response);
        } else if (path.equals("/updateProduct.dao")) {
            String id = request.getParameter("id");
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String numtlp = request.getParameter("numtlp");

            Produit produit = new Produit();

            GestionProduit gestionProduit = new GestionProduit();
            Produit p = gestionProduit.getProduit(id);
            p.setId(id);
            p.setNom(nom);
            p.setPrenom(prenom);
            p.setNumtlp(numtlp);
            Produit updateResult = gestionProduit.updateProduit(p);

            if (updateResult != null) {
                request.setAttribute("updateResult", updateResult);
                request.getRequestDispatcher("confirmation.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("erreur.jsp").forward(request, response);
            }

            response.sendRedirect("afficher.dao");
        } else if (path.equals("/updatecommande.dao")) {
            String id = request.getParameter("id");
            String nbrproduits = request.getParameter("nbrproduits");

            Commande commande = new Commande();

            GestionCommande gestioncommande = new GestionCommande();
            Commande c = gestioncommande.getCommande(id);
            c.setId(id);
            c.setNbrproduits(nbrproduits);
            Commande updateResult = gestioncommande.updateCommande(c);

            if (updateResult != null) {
                request.setAttribute("updateResult", updateResult);
                request.getRequestDispatcher("confirmationc.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("erreur.jsp").forward(request, response);
            }

            // response.sendRedirect("affichercommande.dao");
        }
else if (path.equals("/delete.dao")) {
            String id = request.getParameter("id");
            if (id != null) {
                GestionProduit gestionProduit = new GestionProduit();
                gestionProduit.delete(id);
            }
            response.sendRedirect("afficher.dao");
        } else if (path.equals("/deletecommande.dao")) {
            String id = request.getParameter("id");
            if (id != null) {
                GestionCommande gestioncommande = new GestionCommande();
                gestioncommande.delete(id);
            }
            response.sendRedirect("affichercommande.dao");
        } else if (path.equals("/afficher.dao")) {
            GestionProduit gestionProduit = new GestionProduit();
            List<Produit> res = gestionProduit.Afficher();
            request.setAttribute("res", res);
            request.getRequestDispatcher("afficher.jsp").forward(request, response);
        }
    }
}
