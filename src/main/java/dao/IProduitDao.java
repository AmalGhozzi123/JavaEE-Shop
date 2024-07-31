
package dao;

import java.util.List;

import Modéle.Produit;

public interface IProduitDao {
	public Produit save(Produit p);
	public List<Produit> produitsParMC(String mc);
	public Produit getProduit(String id);
	public Produit updateProduit(Produit p);
    public void delete(String id);
    public List<Produit> Afficher();

}
