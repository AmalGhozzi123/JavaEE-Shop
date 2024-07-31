package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import Modéle.Produit;
import Modéle.SingletonConnection;

public class GestionProduit implements IProduitDao{
	
	@Override
	public Produit save(Produit p) {
		Connection con=SingletonConnection.getConnection();
		String sql = "insert into client(id,nom,prenom,numtlp) VALUES (?, ?, ?,?)";
		try
		{
			
		         PreparedStatement ps = con.prepareStatement(sql);
		         ps.setString(1, p.getId());
		         ps.setString(2, p.getNom());
		         ps.setString(3, p.getPrenom());
		         ps.setString(4, p.getNumtlp());
		         ps.executeUpdate();
		        // ps.close();
		         //con.close();
		         } catch (SQLException e) {
		        
		        	 e.printStackTrace();
		         }
		return p;
	}

	@Override
	public List <Produit> produitsParMC(String mc) {
		Connection con=SingletonConnection.getConnection();
		List<Produit> l=new ArrayList<Produit>();
		String sql="select id,nom,prenom,numtlp from client where nom like ?";
		Produit p= null;
		try
		{
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1,"%"+mc + "%");
			ResultSet R=ps.executeQuery();
			while (R.next()) {
	            p = new Produit();
	            p.setId(R.getString("id"));
	            p.setNom(R.getString("nom"));
	            p.setPrenom(R.getString("prenom"));
	            p.setNumtlp(R.getString("numtlp"));
	            l.add(p);
	        }
			
			//r.close();
			//ps.close();
		    //con.close();
		} catch (SQLException e) {
	        
       	 e.printStackTrace();
        }
		
		return l;
	}

	@Override
	public Produit getProduit(String id) {
		Connection con=SingletonConnection.getConnection();
		String query ="select id,nom,prenom,numtlp from client where id=?";
		Produit p= null;
		try
		{
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, id);
			ResultSet r=ps.executeQuery();
			if (r.next()) {
	            p = new Produit();
	            p.setId(r.getString("id"));
	            p.setNom(r.getString("nom"));
	            p.setPrenom(r.getString("prenom"));
	            p.setNumtlp(r.getString("numtlp"));
	        }
			//r.close();
			//ps.close();
		    //con.close();
		} catch (SQLException e) {
	        
       	 e.printStackTrace();
        }
		return p;
	}
	
	@Override
	public Produit updateProduit(Produit p) {
		Connection con=SingletonConnection.getConnection();
		String sql = "update client set nom=? ,prenom=?,numtlp =? where id= ?";
		try
		{
			PreparedStatement ps1=con.prepareStatement(sql);
			ps1.setString(1, p.getNom());
			ps1.setString(2, p.getPrenom());
			ps1.setString(3, p.getNumtlp());
			ps1.setString(4, p.getId());
			int rs=ps1.executeUpdate();
			//ps1.close();
			//con.close();
			
		}catch(SQLException e)
		{
			 e.printStackTrace();
		}
		return p;
	}

	@Override
	public void delete(String id) {
		Connection con=SingletonConnection.getConnection();
		String sql = "delete from client  where id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,id);
			ps.executeUpdate();
			//ps.close();
			//con.close();
		} catch(SQLException e)
		{
			 e.printStackTrace();
		}
	
		  
		}

	@Override
	public List<Produit> Afficher()
	{
		Connection con=SingletonConnection.getConnection();
		List<Produit> l=new ArrayList<Produit>();
		String sql="select * from client";
		Produit p= null;
		try
		{
			PreparedStatement ps= con.prepareStatement(sql);
			ResultSet r=ps.executeQuery();
			while (r.next()) {
	            p = new Produit();
	            p.setId(r.getString("id"));
	            p.setNom(r.getString("nom"));
	            p.setPrenom(r.getString("prenom"));
	            p.setNumtlp(r.getString("numtlp"));
	            l.add(p);
	        }
			
			/*r.close();
			ps.close();
		    con.close();*/
		} catch (SQLException e) {
	        
       	 e.printStackTrace();
        }
		
		return l;
	}

	
}
