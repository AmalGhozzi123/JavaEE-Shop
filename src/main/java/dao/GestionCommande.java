package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Modéle.Commande;
import  Modéle.Produit;
import  Modéle.SingletonConnection;

public class GestionCommande implements ICommandeDao {

    @Override
    public Commande save(Commande c) {
        Connection con = SingletonConnection.getConnection();
        String sql = "INSERT INTO commande(id, nbrproduits, idClient) VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, c.getId());
            ps.setString(2, c.getNbrproduits());
            ps.setString(3, c.getClient().getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }

    @Override
    public List<Commande> produitsParMC(String mc) {
        Connection con = SingletonConnection.getConnection();
        List<Commande> l = new ArrayList<Commande>();
        String sql = "SELECT commande.id, commande.nbrproduits, client.nom, client.prenom FROM commande " +
                     "JOIN client ON commande.idClient = client.id " +
                     "WHERE client.nom LIKE ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + mc + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Commande c = new Commande();
                c.setId(rs.getString("id"));
                c.setNbrproduits(rs.getString("nbrproduits"));

                Produit client = new Produit();
                client.setNom(rs.getString("nom"));
                client.setPrenom(rs.getString("prenom"));

                c.setClient(client);
                l.add(c);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    @Override
    public Commande getCommande(String id) {
        Connection con = SingletonConnection.getConnection();
        String query = "SELECT commande.id, commande.nbrproduits, client.nom, client.prenom " +
                       "FROM commande " +
                       "JOIN client ON commande.idClient = client.id " +
                       "WHERE commande.id = ?";
        Commande c = null;
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                c = new Commande();
                c.setId(rs.getString("id"));
                c.setNbrproduits(rs.getString("nbrproduits"));

                Produit client = new Produit();
                client.setNom(rs.getString("nom"));
                client.setPrenom(rs.getString("prenom"));

                c.setClient(client);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }

    @Override
    public Commande updateCommande(Commande c) {
        Connection con = SingletonConnection.getConnection();
        String sql = "UPDATE commande SET nbrproduits = ? WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, c.getNbrproduits());
            ps.setString(2, c.getId());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected == 0) {
                // La mise à jour a échoué, vous pouvez traiter l'erreur ici si nécessaire.
            }
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }

    @Override
    public void delete(String id) {
        Connection con = SingletonConnection.getConnection();
        String sql = "DELETE FROM commande WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Commande> afficher() {
        Connection con = SingletonConnection.getConnection();
        List<Commande> l = new ArrayList<Commande>();
        String sql = "SELECT commande.id, commande.nbrproduits, client.nom, client.prenom FROM commande " +
                     "JOIN client ON commande.idClient = client.id";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Commande c = new Commande();
                c.setId(rs.getString("id"));
                c.setNbrproduits(rs.getString("nbrproduits"));

                Produit client = new Produit();
                client.setNom(rs.getString("nom"));
                client.setPrenom(rs.getString("prenom"));

                c.setClient(client);
                l.add(c);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return l;
    }

    @Override
    public Produit getClientByCommandeId(String commandeId) {
        Connection con = SingletonConnection.getConnection();
        String sql = "SELECT client.id, client.nom, client.prenom FROM client " +
                     "JOIN commande ON client.id = commande.idClient " +
                     "WHERE commande.id = ?";
        Produit client = null;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, commandeId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                client = new Produit();
                client.setId(rs.getString("id"));
                client.setNom(rs.getString("nom"));
                client.setPrenom(rs.getString("prenom"));
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return client;
    }
}
