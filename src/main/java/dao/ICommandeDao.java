package dao;
import java.util.List;
import Modéle.Commande;
import  Modéle.Produit;

public interface ICommandeDao {

    public Commande save(Commande c);
    public List<Commande> produitsParMC(String mc);
    public Commande getCommande(String id);
    public Commande updateCommande(Commande c);
    public void delete(String id);
    public List<Commande> afficher();
    public Produit getClientByCommandeId(String commandeId);

}
