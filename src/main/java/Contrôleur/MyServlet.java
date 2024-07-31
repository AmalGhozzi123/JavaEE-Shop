package Contrôleur;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modéle.Produit;
import Modéle.Utilisateur;
import dao.GestionProduit;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//afficher la page qui contient le formulaire
			request.getRequestDispatcher("Login.html").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Récupérer les paramétres
		String L=request.getParameter("login");
		String p=request.getParameter("password");
		
		
		//créer le model
		Utilisateur User=new Utilisateur();
		User.setLogin(L);
		User.setPassword(p);
		
		
		//ajouter le modéle comme attribut de requete
		//String resultat="Bienvenue  "+L;
		if (User.Vérifier())
		{
			/*request.setAttribute("resultat", resultat);
			//Invoquer la vue
			request.getRequestDispatcher("Res.jsp").forward(request, response);	*/
			GestionProduit gestion=new GestionProduit();
		List<Produit> res=gestion.Afficher();
		request.setAttribute("res", res);
		request.getRequestDispatcher("Res.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("login.html").forward(request, response);
		}
		
	}

}