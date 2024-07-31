package dao;

import java.sql.Connection;

import com.mysql.jdbc.PreparedStatement;

import Modéle.Utilisateur;

public class UserDAO {
	
	    public boolean saveUser(Utilisateur user) {
	        // Code pour enregistrer l'utilisateur dans la base de données
	        // Assurez-vous d'utiliser les bonnes pratiques de gestion des connexions et les requêtes SQL préparées pour éviter les attaques d'injection SQL
	        
	        // Exemple de code fictif
	        Connection connection = null;
	        PreparedStatement statement = null;
	        boolean isUserSaved = false;

	        try {
	           

	             String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
	            statement = (PreparedStatement) connection.prepareStatement(sql);
	            statement.setString(1, user.getLogin());
	            statement.setString(2, user.getPassword());
	            int rowsAffected = statement.executeUpdate();

	            if (rowsAffected > 0) {
	                isUserSaved = true;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } 

	        return isUserSaved;
	    }
	
}
